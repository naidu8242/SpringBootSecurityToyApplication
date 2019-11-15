package in.bushansirgur.springbootcrud.springbootcrudapi.daoImpl;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import in.bushansirgur.springbootcrud.springbootcrudapi.dao.EmployeeDAO;
import in.bushansirgur.springbootcrud.springbootcrudapi.dto.ToysLoginFormsDTO;
import in.bushansirgur.springbootcrud.springbootcrudapi.model.Employee;
import org.springframework.transaction.annotation.Transactional;


@Repository
public class EmployeeDAOImpl implements EmployeeDAO {

	public static final String SALT = "toysPassword";
	
	@Autowired
	private EntityManager entityManager;
	
	@Override
	public List<Employee> get() {
		Session currentSession = entityManager.unwrap(Session.class);
		Query<Employee> query = currentSession.createQuery("from Employee", Employee.class);
		List<Employee> list = query.getResultList();
		return list;
	}

	@Override
	public Employee get(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Employee employeeObj = currentSession.get(Employee.class, id);
		return employeeObj;
	}

	@Override
	public void save(Employee employee) {
		Session currentSession = entityManager.unwrap(Session.class);
		currentSession.saveOrUpdate(employee);
	}

	@Override
	public void delete(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Employee employeeObj = currentSession.get(Employee.class, id);
		currentSession.delete(employeeObj);
	}

	@Override
	@Transactional
	public Boolean loginCredentials(ToysLoginFormsDTO toysLoginFormsDTO) {
		Boolean flag = false;
		String toyPassword = SALT + toysLoginFormsDTO.getPassword();
		String password = generateHash(toyPassword);
		Session currentSession = entityManager.unwrap(Session.class);
		Query<Employee> query = currentSession.createQuery("from Employee emp where emp.email =:email and emp.password =:password", Employee.class);
		List<Employee> list = query.setString("email", toysLoginFormsDTO.getEmail()).setString("password", password).list();
		if(list.size() > 0) {
			flag = true;
		}
		return flag;
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

	@Override
	@Transactional
	public Employee employeeDetailsByEmail(String email) throws Exception {
		Session currentSession = entityManager.unwrap(Session.class);
		List<Employee> employeeList = currentSession.createQuery("from Employee emp where emp.email =:email").setString("email", email).list();
		Employee employee = null;
		if(employeeList != null && !employeeList.isEmpty())
		{
			employee = (Employee) employeeList.iterator().next();
		}
		return employee;
	}
}
