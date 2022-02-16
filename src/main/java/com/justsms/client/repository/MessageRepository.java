package com.justsms.client.repository;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.justsms.client.model.Message;

@Repository
@Transactional
public interface MessageRepository extends JpaRepository<Message, Integer> {

	
	
}
