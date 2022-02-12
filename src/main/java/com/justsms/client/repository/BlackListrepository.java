package com.justsms.client.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.justsms.client.model.BlackListNumber;

@Repository
public interface BlackListrepository extends JpaRepository<BlackListNumber, Integer> {

}
