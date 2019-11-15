package com.iss.okair.db.mapper;

import java.util.List;

import com.iss.okair.db.entity.CheckOutList;

public interface CheckOutListMapper
{
	List<CheckOutList> selectByExample(CheckOutList example);
}
