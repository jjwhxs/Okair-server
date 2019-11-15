package com.iss.okair.db.entity;

public class categroy {
	private Integer id;
	private String code;
	private Integer parentid;
	private String namecn;
	private String comment;
	private String parentname;

	
	
	public Integer getId() {
		return id;
	}
	public String getParentname() {
		return parentname;
	}
	public void setParentname(String parentname) {
		this.parentname = parentname;
	}
	@Override
	public String toString() {
		return "Category [id=" + id + ", code=" + code + ", parentid=" + parentid + ", namecn=" + namecn + ", comment="
				+ comment + "]";
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}


	public Integer getParentid() {
		return parentid;
	}
	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}
	public String getNamecn() {
		return namecn;
	}
	public void setNamecn(String namecn) {
		this.namecn = namecn;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}



}
