package in.bushansirgur.springbootcrud.springbootcrudapi.dto;

import java.io.Serializable;
import java.util.List;

import in.bushansirgur.springbootcrud.springbootcrudapi.Utill.FileInfo;

public class UploadToysDTO implements Serializable {
	private static final long serialVersionUID = 1L;
	private String fileName;
	private String fileURL;
	private String createdDate;
	private List<FileInfo> fileInfo;
	private String staticPath;
	private String docFile;
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileURL() {
		return fileURL;
	}
	public void setFileURL(String fileURL) {
		this.fileURL = fileURL;
	}
	public String getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}
	public List<FileInfo> getFileInfo() {
		return fileInfo;
	}
	public void setFileInfo(List<FileInfo> fileInfo) {
		this.fileInfo = fileInfo;
	}
	public String getStaticPath() {
		return staticPath;
	}
	public void setStaticPath(String staticPath) {
		this.staticPath = staticPath;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getDocFile() {
		return docFile;
	}
	public void setDocFile(String docFile) {
		this.docFile = docFile;
	}
}
