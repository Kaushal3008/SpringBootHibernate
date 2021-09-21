package com.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.entity.UserEntity;

@Repository
public interface UserRespositery  extends JpaRepository<UserEntity, Integer>{

	public UserEntity findByEmail(String email);

}
