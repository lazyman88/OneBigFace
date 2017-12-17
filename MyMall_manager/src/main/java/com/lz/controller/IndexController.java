package com.lz.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexController {
	
	@RequestMapping("/index")
	public String index() {
		return "manager_index" ;
	}
	@ResponseBody
	@RequestMapping("/test")
	public Object test() {
	Map map =new HashMap();
	map.put("name", "wukong");
	map.put("age", 16);
	return map;
	} 
}	
