package com.iss.common;

import java.util.List;

public class ResultData {
	List rows;
	
	public int getTotal() {
		return rows.size();
	}

	public List getRows() {
		return rows;
	}
	public void setRows(List rows) {
		this.rows = rows;
	}
}
