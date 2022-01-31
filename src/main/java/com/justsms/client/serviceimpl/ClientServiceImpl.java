package com.justsms.client.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.justsms.client.model.ClientRegisterForm;
import com.justsms.client.repository.ClientFormRepository;
import com.justsms.client.service.ClientService;
import com.justsms.client.utility.BcryptHashedPassword;

@Service
public class ClientServiceImpl implements ClientService {
	
	@Autowired
	private ClientFormRepository clientFormRepository;

	@Override
	public ClientRegisterForm saveClient(ClientRegisterForm registerForm) {
		registerForm.setPassword(BcryptHashedPassword.hashedPassword(registerForm.getPassword()));
	 return	clientFormRepository.save(registerForm);
		
	}

	@Override
	public ClientRegisterForm getClientByUsername(String username) {
		return clientFormRepository.getUserByUsername(username);
	}

}
