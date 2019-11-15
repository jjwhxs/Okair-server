package com.iss.common;

import java.util.UUID;

public class UuidTools {

	public static String buildUUID() {
		
		return UUID.randomUUID().toString();
	}
	
	
	public static void main(String[] args) {
		System.out.println(UuidTools.buildUUID());
	}
}
