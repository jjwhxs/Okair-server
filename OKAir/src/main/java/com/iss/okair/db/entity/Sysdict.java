package com.iss.okair.db.entity;

import java.util.List;

public class Sysdict {

	private Integer id;
	private String typecode;
	private String value;
	private String display;
    private String desc;
    private List<Dicttype> dicttype;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTypecode() {
		return typecode;
	}
	public void setTypecode(String typecode) {
		this.typecode = typecode;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	public String getDisplay() {
		return display;
	}
	public void setDisplay(String display) {
		this.display = display;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public List<Dicttype> getDicttype() {
		return dicttype;
	}
	public void setDicttype(List<Dicttype> dicttype) {
		this.dicttype = dicttype;
	}
    
}
