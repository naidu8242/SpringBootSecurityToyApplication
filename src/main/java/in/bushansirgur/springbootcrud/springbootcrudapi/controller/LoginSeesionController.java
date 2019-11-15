package in.bushansirgur.springbootcrud.springbootcrudapi.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import in.bushansirgur.springbootcrud.springbootcrudapi.dto.ToysLoginFormsDTO;
import in.bushansirgur.springbootcrud.springbootcrudapi.service.LoginSessionService;

@RestController
public class LoginSeesionController {
	
	@Autowired
	LoginSessionService loginSessionService;
	
	
	@RequestMapping(value="/toysLoginForm", method = RequestMethod.POST)
	public @ResponseBody Boolean toysLoginForm(HttpServletRequest request, HttpServletResponse response, ToysLoginFormsDTO toysLoginFormsDTO) throws IOException {
		Boolean flag = loginSessionService.loginCredentials(toysLoginFormsDTO);
		return flag;
	}

}
