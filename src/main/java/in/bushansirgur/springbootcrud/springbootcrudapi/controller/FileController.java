package in.bushansirgur.springbootcrud.springbootcrudapi.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import in.bushansirgur.springbootcrud.springbootcrudapi.Utill.FileInfo;
import in.bushansirgur.springbootcrud.springbootcrudapi.Utill.FileUploadUtil;
import in.bushansirgur.springbootcrud.springbootcrudapi.dao.UploadToysVideosDAO;
import in.bushansirgur.springbootcrud.springbootcrudapi.dto.UploadToysDTO;
import in.bushansirgur.springbootcrud.springbootcrudapi.model.UploadToys;

@Controller
public class FileController {

	@Value("${static.path}")
	private String staticPath;
	
	@Autowired
	UploadToysVideosDAO uploadToysVideosDao;
	
	@RequestMapping(value = "/upload/{type}", method = RequestMethod.POST)
	@ResponseBody
	public List<FileInfo> uploadFile(MultipartHttpServletRequest request, @PathVariable String type,
			@RequestParam(defaultValue = "0") String feedType,@RequestParam(defaultValue = "0") int x,
			@RequestParam(defaultValue = "0") int y, @RequestParam(defaultValue = "0") int w,
			@RequestParam(defaultValue = "0") int h, @RequestParam(defaultValue = "0") int chunk,
			@RequestParam(defaultValue = "0") int chunks, String name, String uploadid) {

		List<FileInfo> fileInfoList = new ArrayList<>();
		Iterator<String> itrator = request.getFileNames();
		while (itrator.hasNext()) {
			FileInfo fileInfo = new FileInfo();
			boolean chunkDataFlag = false;
			MultipartFile multiFile = request.getFile(itrator.next());
			if (name == null)
				name = multiFile.getOriginalFilename();
			File file = new File(staticPath,
					"temp" + System.getProperty("file.separator") + (uploadid != null ? uploadid + "-" : "") + name.replaceAll(" ", "_"));
			try (FileOutputStream fis = new FileOutputStream(file, true);) {
				fis.write(multiFile.getBytes());
				chunkDataFlag = true;
			} catch (Exception e) {
				e.printStackTrace();
			}
			if (chunks > chunk + 1) {
				return fileInfoList;
			}
			FileUploadUtil fileUploadUtil = new FileUploadUtil();
					String fileURL = fileUploadUtil.uploadFile(staticPath, feedType, type, file);
					fileInfo.setFileName(multiFile.getOriginalFilename());
					fileInfo.setFileURL(fileURL);
					fileInfo.setContentType(multiFile.getContentType());
					fileInfoList.add(fileInfo);
		}

		return fileInfoList;
	}
	
	
	@RequestMapping(value = "/saveToysVideos", method = RequestMethod.POST)
	public @ResponseBody String storeCandidate(UploadToysDTO uploadToysDto, HttpServletRequest request) throws Exception {
		          UploadToys uploadToys = new UploadToys();
		          if(uploadToysDto.getFileInfo()!= null && !uploadToysDto.getFileInfo().isEmpty()){
		        	  FileInfo fileInfo = uploadToysDto.getFileInfo().get(0);
		        	  uploadToys.setFileName(fileInfo.getFileName());
		        	  String[] fileFormat = fileInfo.getFileName().split(Pattern.quote("."));
		        	  uploadToys.setFileFormat(fileFormat[1].toString());
		  			  uploadToys.setFileURL(fileInfo.getFileURL().replaceAll(" ", "_"));
		  			  FileUploadUtil.moveFile(staticPath, fileInfo, "jananetha_videos");
		  			  uploadToysVideosDao.saveUploadToys(uploadToys);
		          }
		
		return "success";
	}

	
	
	
	 @RequestMapping(value = "/getToysVidoesList")
	public @ResponseBody ModelAndView  getToysVidoesList(HttpServletRequest request) throws Exception {
		ModelAndView model = new ModelAndView();
		 List<UploadToys> videosList  = uploadToysVideosDao.getVideosList();
		 model.addObject("videosList", videosList);
		 model.setViewName("videoList");
		return model;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
