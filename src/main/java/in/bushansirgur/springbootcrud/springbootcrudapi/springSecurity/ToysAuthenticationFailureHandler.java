package in.bushansirgur.springbootcrud.springbootcrudapi.springSecurity;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
public class ToysAuthenticationFailureHandler implements AuthenticationFailureHandler{

	@Override
	public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response,
			AuthenticationException exception) throws IOException, ServletException {
		  HttpSession session = request.getSession(false);
		  session.setAttribute("email", request.getParameter("email"));
		  session.setAttribute("password", request.getParameter("password"));
		  session.setAttribute("isLoginFailed", true);
		  if(exception.getClass().isAssignableFrom(BadCredentialsException.class)) {
			request.setAttribute(exception.getMessage(),true);
		   } 
			ServletContext context = request.getServletContext();
			RequestDispatcher rd = context.getRequestDispatcher("/login");
			rd.forward(request, response);
	}

}
