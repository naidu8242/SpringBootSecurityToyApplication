package in.bushansirgur.springbootcrud.springbootcrudapi.daoImpl;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import in.bushansirgur.springbootcrud.springbootcrudapi.dao.UploadToysVideosDAO;
import in.bushansirgur.springbootcrud.springbootcrudapi.model.Employee;
import in.bushansirgur.springbootcrud.springbootcrudapi.model.UploadToys;

@Repository
public class UploadToysVideosDAOImpl implements UploadToysVideosDAO {
	
	@Autowired
	private EntityManager entityManager;
	
	@Override
	@Transactional
	public void saveUploadToys(UploadToys uploadToys) {
		Session currentSession = entityManager.unwrap(Session.class);
		currentSession.saveOrUpdate(uploadToys);
	}

	@Override
	@Transactional
	public List<UploadToys> getVideosList() {
		Session currentSession = entityManager.unwrap(Session.class);
		Query<UploadToys> query = currentSession.createQuery("from UploadToys", UploadToys.class);
		List<UploadToys> list = query.getResultList();
		return list;
	}

}
