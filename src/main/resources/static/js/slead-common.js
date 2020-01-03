 
function getFormData(formId) {
	var $form = $("#"+formId); 
	var disabled = $form.find(':input:disabled').removeAttr('disabled'); // Added by Srinivas Sabbu on 25-Feb-2019 for pushing disabled element values to form.
	var unindexed_array = $($form).serializeArray();
	var indexed_array = {};
	$.map(unindexed_array, function (n, i) {
		if(($("[name="+n[name]+"]").attr('type') && $("[name="+n[name]+"]").attr('type').toLowerCase() === "text") || $("[name="+n[name]+"]").is("textarea"))
			indexed_array[n['name']] = n['value'].trim().replace(/  +/g,' ');
		else if(n['name'])
			indexed_array[n['name']] = n['value'];
	});
	return indexed_array;
}

function getFormData1(formId) {
	var $form = $("#"+formId);
	var unindexed_array = $($form).serializeArray();
	var formData = new FormData();
	$.map(unindexed_array, function (n, i) {
		if(($("[name="+n[name]+"]").attr('type') && $("[name="+n[name]+"]").attr('type').toLowerCase() === "text") || $("[name="+n[name]+"]").is("textarea"))
			formData.append(n['name'], n['value'].trim().replace(/  +/g,' '));
		else if(n['name'])
			formData.append(n['name'], n['value']);
	});
	return formData;
}


function fileUpload(id, type, formId, feedType) {
	$(".file_mask").show();
	name = 'fileInfo';
	var data = new FormData();
	var files = document.getElementById(id).files;
	var invalidFiles = false;
	var count = 0;
	expr = /.zip/;
	ecpr1=/.rar/;
	for(var e in files) {
		if(!$.isNumeric(e))
			continue;
		//if(files[e].name.toLowerCase().endsWith(".zip") || files[e].name.toLowerCase().endsWith(".rar"))
		if(files[e].name.toLowerCase().match(expr) || files[e].name.toLowerCase().match(ecpr1))
			continue;
		data.append('file', files[e]);
		count ++;
	}
	if(count === 0) {
		$("#"+formId+" input[data-id*="+id+"]").remove();
		$(".file_mask").hide();
		alert("Please select valid file (zip files and rar files are not allowed)");
		return;
	}
	data.append('feedType', feedType);
	$.ajax({ 
		url: "http://localhost:8081/upload/"+type, 
		data: data, 
		processData: false, 
		type: 'POST', 
		contentType: false, 
		success: function (data) {
			if(data && data.length > 0) {
				if(type === "dataMigration"){
					$("#dataFilePath").val(data[0].fileURL);
				}
				applyData(data, formId, name, id);
				$(".file_mask").hide();
			}
		}, 
		error: function (err) { 
			 $(".file_mask").hide();
		} 
	});
}


function applyData(data, formId, name, id) {
	if($("#"+formId+" input[name*='"+name+"'][data-id="+id+"]").length > 0) {
		$("#"+formId+" input[name*='"+name+"'][data-id="+id+"]").remove();
	}
	if(name == 'uploadContractsFile' || name == 'uploadFormsFile'){
		var i = $("#"+formId+" input[type=hidden][name*='"+name+"']").length / 4;
	}
	else if(formId == 'vendorOnboardUploadedDocuments_form'){
		var i = name.split('@')[1];
		  name = name.split('@')[0];
	} else if(formId == 'timesheet_form'){
		if($("#"+formId+" input[data-id*='"+id+"']").length > 0){
			$("#"+formId+" input[data-id*='"+id+"']").remove();
		}
		if(name == 'timesheetSubmission.fileInfo'){
            var i = id.split("docFile")[0];
        }else{
            var i = id.split("docFile")[1];
        }
		
	}
	else{
		var i = $("#"+formId+" input[type=hidden][name*='"+name+"']").length / 3;
	}
	
	for(var e in data) {
		if(!$.isNumeric(e))
			continue;
		var data1 = data[e];
		if(data[0].fileInfo) {
			data1 = data[e].fileInfo;
		}
		var html = "<input type='hidden' name='"+name+"["+i+"].fileURL' data-id="+id+" value=\""+data1.fileURL+"\"/>";
		html += "<input type='hidden' name='"+name+"["+i+"].fileName' data-id="+id+" value=\""+data1.fileName+"\"/>";
		html += "<input type='hidden' name='"+name+"["+i+"].contentType' data-id="+id+" value='"+data1.contentType+"'/>";
		if(name == 'uploadContractsFile' || name == 'uploadFormsFile'){
			html += "<input type='hidden' name='"+name+"["+i+"].fileDbId' data-id="+id+" value='"+id.split(name)[1]+"'/>";
		}
		$("#"+formId).append(html);
		i ++;
	}
	if(data && data.length > 0 && data[e].fileInfo) {
		if(data[e].fileInfo.fileURL !== null && data[e].fileInfo.fileURL !== "") {
			for(var e in data) {
				applyResumeData(data[e]);
			}
		} else {
			alert("Please try again....");
			$("#loading").removeAttr("style");
		}
	}
}
 