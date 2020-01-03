package in.bushansirgur.springbootcrud.springbootcrudapi.Utill;

public class FileInfo {

	private String fileURL;
	private String fileName;
	private String contentType;
	private Integer status;
	private String fileDbId;
	private String tempFolderName;
	private boolean fileModified;

	public String getFileURL() {
		return fileURL;
	}

	public void setFileURL(String fileURL) {
		this.fileURL = fileURL;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getContentType() {
		return contentType;
	}

	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getFileDbId() {
		return fileDbId;
	}

	public void setFileDbId(String fileDbId) {
		this.fileDbId = fileDbId;
	}

	public String getTempFolderName() {
		return tempFolderName;
	}

	public void setTempFolderName(String tempFolderName) {
		this.tempFolderName = tempFolderName;
	}

	public boolean isFileModified() {
		return fileModified;
	}

	public void setFileModified(boolean fileModified) {
		this.fileModified = fileModified;
	}

}
