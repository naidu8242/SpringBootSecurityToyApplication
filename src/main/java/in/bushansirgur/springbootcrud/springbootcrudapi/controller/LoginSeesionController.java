package in.bushansirgur.springbootcrud.springbootcrudapi.controller;

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
	
	@RequestMapping(value="/toysRegistration", method = RequestMethod.POST)
	public @ResponseBody String toysRegistration(HttpServletRequest request, HttpServletResponse response, ToysLoginFormsDTO toysLoginFormsDTO) throws Exception {
		loginSessionService.toysRegistationForm(toysLoginFormsDTO);
		return "success";
	}
}
