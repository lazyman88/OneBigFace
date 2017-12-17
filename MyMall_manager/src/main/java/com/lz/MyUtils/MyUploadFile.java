package com.lz.MyUtils;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class MyUploadFile {

	public static List<String> upload_image(MultipartFile[] files) {
		List<String> list_image = new ArrayList<String>();
		
			for (int i = 0; i < files.length; i++) {
				
				String originalFilename = files[i].getOriginalFilename();
				originalFilename  = System.currentTimeMillis()+originalFilename;
				try {
					files[i].transferTo(new File
							(MyPropertiesUtils.getProperty("filePath.properties","image_path")+"\\"+originalFilename));
				} catch (Exception e) {
					e.printStackTrace();
				} 
				list_image.add(originalFilename);
				}
			
	
		return list_image;
	}
	
}
