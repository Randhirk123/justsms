package com.justsms.client.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.justsms.client.model.BlackListNumber;
import com.justsms.client.model.ClientRegisterForm;
import com.justsms.client.model.ManageSignature;
import com.justsms.client.repository.BlackListrepository;
import com.justsms.client.repository.ChangePwdRepository;
import com.justsms.client.repository.ClientFormRepository;
import com.justsms.client.repository.ManageSignatureRepository;
import com.justsms.client.service.ClientService;
import com.justsms.client.utility.BcryptHashedPassword;

@Service
public class ClientServiceImpl implements ClientService {
	
	@Autowired
	private ClientFormRepository clientFormRepository;
	
	@Autowired
	private ManageSignatureRepository signatureRepository;
	
	@Autowired
	private BlackListrepository blackListrepository;
	
	@Autowired ChangePwdRepository pwdRepository;

	@Override
	public ClientRegisterForm saveClient(ClientRegisterForm registerForm) {
		registerForm.setPassword(BcryptHashedPassword.hashedPassword(registerForm.getPassword()));
	 return	clientFormRepository.save(registerForm);
		
	}

	@Override
	public ClientRegisterForm getClientByUsername(String username) {
		return clientFormRepository.getUserByUsername(username);
	}

	@Override
	public ManageSignature saveSignature(ManageSignature signature) {
		
		return signatureRepository.save(signature);
	}

	@Override
	public List<ManageSignature> getAllSignature() {
		return signatureRepository.findAll();
	}

	@Override
	public void deleteById(Integer id) {
		signatureRepository.deleteById(id);
		
	}

	@Override
	public BlackListNumber saveBlackListNumber(BlackListNumber blackListNumber) {
		
		return blackListrepository.save(blackListNumber);
	}

	@Override
	public List<BlackListNumber> getAllBlackList() {
		
		return blackListrepository.findAll();
	}

	@Override
	public void deleteBlackListById(Integer id) {
		blackListrepository.deleteById(id);
		
	}

	@Override
	public ClientRegisterForm changeClientPassword(String username, String password) {
		ClientRegisterForm changePass =pwdRepository.findByUsername(username);
		changePass.setPassword(BcryptHashedPassword.hashedPassword(password));
		return pwdRepository.save(changePass);
	}

}
