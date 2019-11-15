package in.bushansirgur.springbootcrud.springbootcrudapi.springSecurity;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Component;

import in.bushansirgur.springbootcrud.springbootcrudapi.dto.ToysLoginFormsDTO;
import in.bushansirgur.springbootcrud.springbootcrudapi.service.LoginSessionService;

@Component
public class ToysAuthenticationProvider implements AuthenticationProvider{

	@Autowired
	LoginSessionService loginSessionService;
	
	@Override
    public Authentication authenticate(Authentication authentication)
      throws AuthenticationException {
  
        String email = authentication.getName();
        String password = authentication.getCredentials().toString();
      ToysLoginFormsDTO toysLoginFormsDTO = new ToysLoginFormsDTO ();
      toysLoginFormsDTO.setEmail(email);
      toysLoginFormsDTO.setPassword(password);
      Boolean flag = loginSessionService.loginCredentials(toysLoginFormsDTO);
        if(flag) {
        	return new UsernamePasswordAuthenticationToken(email, password,new ArrayList<>());
        }else {
        	return null;
        }
    }
 
    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }
    

}
