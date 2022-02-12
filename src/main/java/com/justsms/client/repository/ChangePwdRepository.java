package com.justsms.client.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.justsms.client.model.ClientRegisterForm;

@Repository
public interface ChangePwdRepository extends JpaRepository<ClientRegisterForm, Integer> {

	@Query("SELECT c FROM ClientRegisterForm c WHERE c.username = ?1")
	public ClientRegisterForm findByUsername(String username);

}
