package com.lz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lz.bean.OBJECT_T_MALL_ATTR;
import com.lz.mapper.AttrMapper;

@Service
public class AttrServiceImpl implements AttrServiceInf{
	@Autowired
	AttrMapper attrMapper;
		
	public List<OBJECT_T_MALL_ATTR> get_attr_by_class_2(int class_2_id) {
		List<OBJECT_T_MALL_ATTR> list_attr=attrMapper.selcet_attr_by_class_2(class_2_id);
		return list_attr;
	}
	
}
