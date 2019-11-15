package com.iss.okair.db.mapper;

import com.iss.okair.db.entity.Assetstrans;

public interface AssetstransMapper
{
	Assetstrans selectById(String id);
	int insertAssetstrans(Assetstrans assetstrans);
}
