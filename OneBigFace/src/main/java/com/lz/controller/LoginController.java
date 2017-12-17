package com.lz.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lz.bean.AjaxResult;
import com.lz.bean.User;
import com.lz.service.LoginServiceImpl;

@Controller
public class LoginController {
	@Autowired
	private LoginServiceImpl loginServiceImpl;
	
	@RequestMapping("/index")
	public String index () {
		
		return "index";
	}
	@ResponseBody
	@RequestMapping("/login")
	public Object login (User user) {
		AjaxResult result = new AjaxResult();
		User dbuser = loginServiceImpl.query4Login(user);
		if(dbuser!=null) {
			result.setSuccess(true);
			
		}else {
			result.setSuccess(false);
		}
		return result;
	}
	
	@RequestMapping("/loginSuccess")
	public String loginSuccess () {
		
		return "loginSuccess";
	}
	
}
