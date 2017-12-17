package com.lz.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lz.bean.OBJECT_T_MALL_ATTR;
import com.lz.service.AttrServiceImpl;

@Controller
public class AttrController {
	@Autowired
	AttrServiceImpl attrServiceImpl;
	
	@RequestMapping("/goto_attr")
	public String index() {
		return "manager_attr";
	}
	
	//跳转页面到manager_attr_list_inner
	@RequestMapping("/get_attr_by_class_2")
	public String get_attr_by_class_2(int class_2_id,String class_2_name,ModelMap map) {
		List<OBJECT_T_MALL_ATTR> list_attr = attrServiceImpl.get_attr_by_class_2(class_2_id);
		map.put("list_attr", list_attr);
		map.put("class_2_name", class_2_name);
		map.put("class_2_id", class_2_id);
		return "manager_attr_list_inner";
	}
	@RequestMapping("/goto_add_attr")
	public String goto_add_attr(int class_2_id,String class_2_name,ModelMap map) {
		map.put("class_2_name", class_2_name);
		map.put("class_2_id", class_2_id);
		return "manager_add_attr";
	}
	
}
