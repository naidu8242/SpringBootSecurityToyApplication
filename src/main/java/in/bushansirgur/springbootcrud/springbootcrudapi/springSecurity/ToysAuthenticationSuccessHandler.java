package in.bushansirgur.springbootcrud.springbootcrudapi.springSecurity;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import in.bushansirgur.springbootcrud.springbootcrudapi.model.Employee;
import in.bushansirgur.springbootcrud.springbootcrudapi.service.EmployeeService;

@Configuration
@EnableTransactionManagement
public class ToysAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

	@Autowired
	EmployeeService employeeService;
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
	System.out.println("seesion"+request.getSession().getId());
	HttpSession session =	request.getSession(false);
	try {
		Employee employee = employeeService.employeeDetailsByEmail(authentication.getPrincipal().toString());
		session.setAttribute("employee", employee);	
	} catch (Exception e) {
		e.printStackTrace();
	}
	response.sendRedirect("/toysHome");
	}

	 
}
