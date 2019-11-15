package com.iss.common;

import java.io.IOException;
import java.security.MessageDigest;

import sun.misc.BASE64Decoder;
import sun.misc.BASE64Encoder;

public final class MD5Tools {

	public static String buildMD5String(String source) {
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] b = source.getBytes("UTF8");
			byte[] hash = md.digest(b);
			BASE64Encoder en = new BASE64Encoder();
			String result = en.encode(hash);
			
			return result;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "";
	}
	
	
	public static void main(String[] args) {
		String tmp = MD5Tools.buildMD5String("000000");
		System.out.println(tmp);
		
		BASE64Decoder de = new BASE64Decoder();
		try {
			String s = new String(de.decodeBuffer(tmp));
			System.out.print(s);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
