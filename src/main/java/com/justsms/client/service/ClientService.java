package com.justsms.client.service;

import org.springframework.stereotype.Service;

import com.justsms.client.model.ClientRegisterForm;

@Service
public interface ClientService {

	ClientRegisterForm saveClient(ClientRegisterForm registerForm);

	ClientRegisterForm getClientByUsername(String username);

}
