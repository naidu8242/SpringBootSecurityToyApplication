package in.bushansirgur.springbootcrud.springbootcrudapi.service;

import in.bushansirgur.springbootcrud.springbootcrudapi.dto.ToysLoginFormsDTO;

public interface LoginSessionService {

	Boolean loginCredentials(ToysLoginFormsDTO toysLoginFormsDTO);
	 
}
