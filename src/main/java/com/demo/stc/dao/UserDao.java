package com.demo.stc.dao;

import java.sql.SQLException;

import com.demo.stc.model.Company;
import com.demo.stc.model.User;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.stc.model.Company;

public interface UserDao extends JpaRepository<User, Integer>{

}
