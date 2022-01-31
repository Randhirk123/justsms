package com.justsms.client.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.justsms.client.model.ClientRegisterForm;

@Repository
public interface ClientFormRepository extends JpaRepository<ClientRegisterForm, Integer> {

	@Query("SELECT a FROM ClientRegisterForm a WHERE a.username = :username")
    public ClientRegisterForm getUserByUsername(@Param("username") String username);
	
	@Query("SELECT a FROM ClientRegisterForm a WHERE a.email = ?1")
    public ClientRegisterForm findByEmail(String email); 
     
    public ClientRegisterForm findByResetPasswordToken(String token);
}
