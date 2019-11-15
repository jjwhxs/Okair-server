package com.iss.okair.db.mapper;

import java.util.List;

import com.iss.okair.db.entity.Assetstrans;
import com.iss.okair.db.entity.CheckInList;

public interface CheckInListMapper
{
	List<CheckInList> selectByExample(CheckInList example);
//	CheckInList selectByCheckId(String id);
//	int insertCheckInList(CheckInList check);
}
