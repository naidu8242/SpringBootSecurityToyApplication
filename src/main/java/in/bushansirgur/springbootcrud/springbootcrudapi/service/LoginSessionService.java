package in.bushansirgur.springbootcrud.springbootcrudapi.service;

import java.io.IOException;

import javax.mail.MessagingException;

import freemarker.template.TemplateException;
import in.bushansirgur.springbootcrud.springbootcrudapi.dto.ToysLoginFormsDTO;

public interface LoginSessionService {

	Boolean loginCredentials(ToysLoginFormsDTO toysLoginFormsDTO);
	
	String toysRegistationForm(ToysLoginFormsDTO toysLoginFormsDTO) throws MessagingException, IOException, TemplateException;
	 
}
