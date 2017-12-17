package com.lz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lz.bean.T_MALL_PRODUCT;
import com.lz.mapper.Spumapper;
@Service
public class SpuserviceImp implements  SpuserviceInf{
	@Autowired
	Spumapper spumapper;
	public void save_spu(T_MALL_PRODUCT spu, List<String> list_images) {
		spu.setShp_tp(list_images.get(0));
		
		spumapper.insert_spu(spu);
		
		spumapper.insert_images(spu.getId(),list_images);
		
	}

}
