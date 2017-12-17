package com.lz.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.lz.MyUtils.MyUploadFile;
import com.lz.bean.T_MALL_PRODUCT;
import com.lz.service.SpuserviceImp;

@Controller
public class SpuController {
	
	@Autowired
	SpuserviceImp spuserviceImp;
	/*
	 * MultipartFile[] files,用来接收图片,但是springmvc不能解析，需要添加注解@RequestParam()。
	 */
	@RequestMapping("save_spu")
	public ModelAndView  save_spu(T_MALL_PRODUCT spu ,@RequestParam("files") MultipartFile[] files,ModelMap map) {
		// 1.上傳圖片
		List<String> list_images = MyUploadFile.upload_image(files);
		//2.保存商品信息
		spuserviceImp.save_spu(spu,list_images);
		ModelAndView mv = new ModelAndView("redirect:/goto_spu.do");
		mv.addObject("success","欢迎");
		return	mv;
	}
	/*xu
	 * 跳转到manager_spu页面
	 */
	@RequestMapping("goto_spu")
	public String  goto_spu(String success ,ModelMap map) {
		map.put("success", success);
		return	"manager_spu";
	}
}
