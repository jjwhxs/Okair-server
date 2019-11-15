package com.iss.okair.db.mapper;

import java.util.List;

import com.iss.okair.db.entity.Alltranslist;

public interface AlltranslistMapper
{
	List<Alltranslist> selectByAssetsid(String assetsid);
//	Alltranslist selectByHandleremp(String handleremp);
}
