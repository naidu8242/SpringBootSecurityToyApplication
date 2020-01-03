package in.bushansirgur.springbootcrud.springbootcrudapi.Utill;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.nio.file.Files;
import java.util.Date;

import org.apache.commons.lang.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

 

public class FileUploadUtil {
	
	private static final Logger logger = LoggerFactory.getLogger(FileUploadUtil.class);
    public static String getFileContent(String staticPath, String contentFileUrl) {
        StringBuilder fileContent = new StringBuilder();
        try {
            BufferedReader br = new BufferedReader(new FileReader(new File(staticPath, contentFileUrl)));
            String line;
            while((line = br.readLine()) != null) {
                fileContent.append(line).append(System.getProperty("line.separator"));
            }
        } catch(Exception ex) {
            ex.printStackTrace();
        }
        return fileContent.toString();
    }

	 
	public String uploadFile(String staticPath, String feedType, String fileType,
			File inFile) {
		String fileName = inFile.getName().replace("&", "").replace("%", "").replace("?", "");;
		String extenstion = "";
		if(fileName.lastIndexOf(".") != -1)
		extenstion = fileName.substring(fileName.lastIndexOf("."));
		if(fileName.lastIndexOf(".") != -1)
		fileName = fileName.substring(0, fileName.lastIndexOf("."));
		long time = new Date().getTime();
		String url = staticPath.substring(staticPath.lastIndexOf("/")) + "/" + feedType + "/"  + fileType
				+ "/" + fileName + time + extenstion;
		fileName = "/" + feedType+ "/temp/" + fileName + time + extenstion;
		File folderFile = new File(staticPath, "/" + feedType  + "/" + fileType);
		if (!folderFile.exists())
			folderFile.mkdirs();
		folderFile = new File(staticPath, "/" + feedType + "/temp");
		if (!folderFile.exists())
			folderFile.mkdirs();

		File file = new File(staticPath, fileName);
		try {
			Files.move(inFile.toPath(), file.toPath());
			return url;
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return "";
	}
	
	 

	public static void moveFile(String staticPath, FileInfo fileInfo, String... type) throws IOException
	{
		File folder = new File(staticPath);
		folder = folder.getParentFile();
		File file = new File(folder, type.length == 1 ? fileInfo.getFileURL().replaceAll(" ", "_") : fileInfo.getFileURL().replace(type[0], type[1]).replaceAll(" ", "_"));
		File file1 = file.getParentFile();
		if(!file.exists())
			file1.mkdirs();
		File fromFile = new File(folder, fileInfo.getFileURL().replaceFirst(type[0], StringUtils.isNotBlank(fileInfo.getTempFolderName()) ? fileInfo.getTempFolderName() : "temp"));
		Files.move(fromFile.toPath(), file.toPath());
	}

	public static String moveFile(String staticPath, long orgId, long orgLocationId, String type, File file)
			throws IOException {
		String url = staticPath.substring(staticPath.lastIndexOf("/")) + "/" + orgId + "/" + orgLocationId + "/" + type + "/" + file.getPath();
		File saveFileFolder = new File(staticPath, "/" + orgId + "/" + orgLocationId + "/" + type);
		if (!saveFileFolder.exists())
			saveFileFolder.mkdirs();
		try {
			Files.move(file.toPath(), new File(saveFileFolder, file.getName()).toPath());
			System.out.println("File moved to : " + url);
			return url;
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return "";
	}
	
	
	  

}