package com.justsms.client.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.justsms.client.model.BlackListNumber;
import com.justsms.client.model.ClientRegisterForm;
import com.justsms.client.model.ManageSignature;

@Service
public interface ClientService {

	ClientRegisterForm saveClient(ClientRegisterForm registerForm);

	ClientRegisterForm getClientByUsername(String username);

	ManageSignature saveSignature(ManageSignature signature);

	List<ManageSignature> getAllSignature();

	void deleteById(Integer id);

	BlackListNumber saveBlackListNumber(BlackListNumber blackListNumber);

	List<BlackListNumber> getAllBlackList();

	void deleteBlackListById(Integer id);
	
	public ClientRegisterForm changeClientPassword(String username, String password);

}
