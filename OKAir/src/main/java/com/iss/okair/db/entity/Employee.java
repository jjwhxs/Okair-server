package com.iss.okair.db.entity;

public class Employee {
	private Integer id;
	private String empno;
	private String namecn;
	private Integer reportto;
	private String dept;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getEmpno() {
		return empno;
	}
	public void setEmpno(String empno) {
		this.empno = empno;
	}
	public String getNamecn() {
		return namecn;
	}
	public void setNamecn(String namecn) {
		this.namecn = namecn;
	}
	public Integer getReportto() {
		return reportto;
	}
	public void setReportto(Integer reportto) {
		this.reportto = reportto;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	@Override
	public String toString() {
		return "Employee [id=" + id + ", empno=" + empno + ", namecn=" + namecn + ", reportto=" + reportto + ", dept="
				+ dept + "]";
	}
	
	
}
