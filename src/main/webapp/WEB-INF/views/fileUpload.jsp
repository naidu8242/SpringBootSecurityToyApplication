
      <jsp:include page="toysHeader.jsp" flush="true"></jsp:include>
     
      <div class="inner_page-banner one-img">
      </div>
      <!--//banner -->
      <!-- short -->
      <div class="using-border py-3">
         <div class="inner_breadcrumb  ml-4">
            <ul class="short_ls">
               <li>
                  <a href="index.html">Home</a>
                  <span>/ /</span>
               </li>
               <li>Contact</li>
            </ul>
         </div>
      </div>
      <!-- //short-->
      <!--contact -->
      <section class="contact py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">Contact US</h3>
            <div class="contact-list-grid">
            
				<h1>Show a file-select field:</h1>
				<form id="jananetha_videos_form" name="jananetha_videos_form">
				<div class="form-group">
					<label class="col-md-3">Attach Resume</label>
					<div class="col-md-9 zindex positionRelative">
						<div class="input-group col-md-12" id="uploadFileGroup"
							style="margin: 0 auto">
							<label class="input-group-btn"> <span
								class="btn btn-primary"><i class="fa fa-folder-open-o mr10"></i>Browse
									File <input type="file" style="display: none;" id="uploadBtn"
									class="upload"> </span>
							</label> <input type="text" class="form-control" readonly
								id="uploadFile" name="docFile" placeholder="Upload Resume ..."
								field-name="Upload Resume" data-validation="validatedoc "
								data-validation-optional="true">
							<div class="clearUpload"></div>
						</div>
					</div>
				</div>
				<input type="button" value="Save"  onclick="saveFileUpload();" class="btn btn-primary">
				</form>
            </div>
            <br><br>
            
			<br>
             <div id="videosList"></div>
         </div>
      </section>
       
       <script>
       document.getElementById("uploadBtn").onchange = function () {
           $('#uploadFile').val($(this).val().replace(/C:\\fakepath\\/i, ''));
       };
       $(function () {
           $("#uploadBtn").change(function () {
               fileUpload("uploadBtn", "jananetha_videos", "jananetha_videos_form","Admin");
               $(".clearUpload").show();
           });
       });
       </script>
       
       
       <script>
       function saveFileUpload(){
           var formData = getFormData1("jananetha_videos_form");
           var pathUrl = "http://localhost:8081";
           $.ajax({
				 type : "POST",
				 data: formData,
	    	     processData: false,
	    	     contentType:false,
	        	    	url : pathUrl+"/saveToysVideos",
				        success : function(result) {
				        	 alert("success")
				},
		}); 
       }
       
       function getUploadList(){
    	var pathUrl = "http://localhost:8081";
    	   $.ajax({
				 type : "POST",
		         url : pathUrl+"/getToysVidoesList",
				 success : function(data) {
					 var result = "";
					 for (var i=0; i<data.length; i++)
		   			 {
						 var report = data[i];
			         	 var report = data[i];
						 result = result + ' <video width="320" height="240" controls>';
						 result = result + '  <source src="'+report.fileURL+'" type="video/mp4">';
						 result = result + ' </video>'; 
		   			}
					 $("#videosList").empty();
				     $("#videosList").append(result);
					 
				},
		}); 
       }
      
       
       </script>
             
   <script type="text/javascript">
    window.onload = function () {
    	getUploadList();
    };
    
</script>
             
             
             
             
             
            
			             
             
             
             
             
             
             
             
             
             
             
             
             
             
             
             