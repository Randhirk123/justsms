package com.justsms.client.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.justsms.client.model.ClientRegisterForm;
import com.justsms.client.model.ResellerDetails;

public class ClientDetailsServiceImpl implements UserDetailsService {

	@Autowired
    private ClientService clientService;
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		ClientRegisterForm client = clientService.getClientByUsername(username);
         
	        if (client == null) {
	            throw new UsernameNotFoundException("Could not find user");
	        }
	         
	        return new ResellerDetails(client);
	}

}
