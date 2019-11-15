package com.iss.okair.service.baseinfo;

import java.util.List;

import org.apache.catalina.mapper.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iss.common.MD5Tools;
import com.iss.okair.db.entity.Sysuser;
import com.iss.okair.db.entity.Sysuserrole;
import com.iss.okair.db.mapper.SysuserMapper;
import com.iss.okair.db.mapper.SysuserroleMapper;
  @Service
public class SysUserService {
	@Autowired
	private SysuserMapper mapper;
	@Autowired
	private SysuserroleMapper roleMapper;
	
	
	public Sysuser login(Sysuser loginUser) {
		//加密
		loginUser.setPwd(MD5Tools.buildMD5String(loginUser.getPwd()));
		
		List<Sysuser> rs=mapper.loginCheck(loginUser);
		return rs.size()==1?rs.get(0):null;
	}
	
	public List<Sysuserrole> roleList(){
		return roleMapper.selectAll();
	}
	
	public List<Sysuser> selectByExample(Sysuser example){
		return mapper.selectByExample(example);
	
	
	}
	
  }
	



