package com.iss.okair.db.mapper;

import java.util.List;

import com.iss.okair.db.entity.Sysuser;

public interface SysuserMapper {
//    int insertSelective(Sysuser record);

//    Sysuser selectByPrimaryKey(Integer id);

//    int updateByPrimaryKeySelective(Sysuser record);

	List<Sysuser> loginCheck(Sysuser loginUser);

	List<Sysuser> selectByExample(Sysuser example);
}