package com.iss.common;

import java.util.List;


import org.springframework.validation.FieldError;

public class Message {

	private String msg;
	private boolean error;
	private List<FieldError> fieldErrors; 
	
	public boolean getError() {
		return error;
	}
	public boolean getSuccess() {
		return !error;
	}
	public void setError(boolean error) {
		this.error = error;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public List<FieldError> getFieldErrors() {
		return fieldErrors;
	}
	public void setFieldErrors(List<FieldError> fieldErrors) {
		this.fieldErrors = fieldErrors;
	}
	
}
