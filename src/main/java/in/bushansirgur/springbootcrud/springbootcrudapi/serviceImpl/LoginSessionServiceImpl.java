package in.bushansirgur.springbootcrud.springbootcrudapi.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.bushansirgur.springbootcrud.springbootcrudapi.dao.EmployeeDAO;
import in.bushansirgur.springbootcrud.springbootcrudapi.dto.ToysLoginFormsDTO;
import in.bushansirgur.springbootcrud.springbootcrudapi.service.LoginSessionService;

@Service
public class LoginSessionServiceImpl implements LoginSessionService {

	@Autowired
	EmployeeDAO employeeDao;
	
	@Override
	public Boolean loginCredentials(ToysLoginFormsDTO toysLoginFormsDTO) {
		return employeeDao.loginCredentials(toysLoginFormsDTO);
	}

	 

}
