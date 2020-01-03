package in.bushansirgur.springbootcrud.springbootcrudapi.dao;

import java.util.List;

import in.bushansirgur.springbootcrud.springbootcrudapi.model.UploadToys;

public interface UploadToysVideosDAO {

	 void saveUploadToys(UploadToys uploadToys) throws Exception;

	List<UploadToys> getVideosList();
}
