package com.lz.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lz.bean.T_MALL_PRODUCT;

public interface Spumapper {

	public void insert_spu(T_MALL_PRODUCT spu); 

	public void insert_images(@Param("shp_id") int shp_id,@Param("list_images") List<String> list_images);
	
}
