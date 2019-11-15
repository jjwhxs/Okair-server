package com.iss.okair.db.mapper;

import java.util.List;

import com.iss.okair.db.entity.Dicttype;
import com.iss.okair.db.entity.Sysdict;

public interface SysdictMapper {
	   List<Sysdict> finddict(Sysdict example);
	   List<Sysdict> findlist(String typeCode);
}
