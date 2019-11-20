package in.bushansirgur.springbootcrud.springbootcrudapi.serviceImpl;

import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Date;

import javax.mail.MessagingException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import freemarker.template.TemplateException;
import in.bushansirgur.springbootcrud.springbootcrudapi.Utill.EmailSendingUtill;
import in.bushansirgur.springbootcrud.springbootcrudapi.dao.EmployeeDAO;
import in.bushansirgur.springbootcrud.springbootcrudapi.dto.ToysLoginFormsDTO;
import in.bushansirgur.springbootcrud.springbootcrudapi.model.Employee;
import in.bushansirgur.springbootcrud.springbootcrudapi.service.LoginSessionService;

@Service
public class LoginSessionServiceImpl implements LoginSessionService {

	public static final String SALT = "toysPassword";
	
	@Autowired
	EmployeeDAO employeeDao;
	
	@Autowired
	EmailSendingUtill emailSendingUtill;
	
	@Override
	public Boolean loginCredentials(ToysLoginFormsDTO toysLoginFormsDTO) {
		return employeeDao.loginCredentials(toysLoginFormsDTO);
	}

	@Override
	public String toysRegistationForm(ToysLoginFormsDTO toysLoginFormsDTO) throws MessagingException, IOException, TemplateException {
		Employee employee = new Employee();
		employee.setName(toysLoginFormsDTO.getRegisterName());
		employee.setEmail(toysLoginFormsDTO.getRegisterEmail());
		String toyPassword = SALT + toysLoginFormsDTO.getRegisterPassword();
		String password = generateHash(toyPassword);
		employee.setPassword(password);
		employee.setDepartment("IT");
		employee.setGender("Male");
		employee.setDob(new Date(0));
		employeeDao.save(employee);
		emailSendingUtill.sendEmail(toysLoginFormsDTO);
//		emailSendingUtill.sendEmail(toysLoginFormsDTO.getRegisterEmail(),toysLoginFormsDTO.getRegisterName());
		return "success";
	}

	public static String generateHash(String input) {
		StringBuilder hash = new StringBuilder();

		try {
			MessageDigest sha = MessageDigest.getInstance("SHA-1");
			byte[] hashedBytes = sha.digest(input.getBytes());
			char[] digits = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
					'a', 'b', 'c', 'd', 'e', 'f' };
			for (int idx = 0; idx < hashedBytes.length; ++idx) {
				byte b = hashedBytes[idx];
				hash.append(digits[(b & 0xf0) >> 4]);
				hash.append(digits[b & 0x0f]);
			}
		} catch (NoSuchAlgorithmException e) {
			// handle error here.
		}

		return hash.toString();
	}


}
