package com.iss.common;

public class StringTools {

	public static boolean isNullOrEmpty(String source) {
		if(source == null || "".equals(source)||"null".equals(source))
			return true;
		return false;
	}
	
	public static int parseFromString(String source) {
		int tmp = 0;
		
		try{
			tmp = Integer.parseInt(source);
		} catch(Exception ex) {
			ex.printStackTrace();
			
		}
		
		return tmp;
	}
	
}
