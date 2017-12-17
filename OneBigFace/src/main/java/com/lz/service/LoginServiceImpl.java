package com.lz.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lz.bean.User;
import com.lz.mapper.LoginMapper;

@Service
public class LoginServiceImpl implements LoginServiceInf {
	@Autowired
	private LoginMapper loginMapper;
	public User query4Login(User user) {
	
		return loginMapper.select4Login(user);
	}

	

	
}
