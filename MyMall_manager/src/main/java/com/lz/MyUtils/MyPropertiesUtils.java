package com.lz.MyUtils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class MyPropertiesUtils {

	public static String getProperty(String property, String name) {
		Properties properties = new Properties();
		InputStream resourceAsStream = MyPropertiesUtils.class.getClassLoader().getResourceAsStream(property);
		try {
			properties.load(resourceAsStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
		String property2 = properties.getProperty(name);
		return property2;
	}

}
