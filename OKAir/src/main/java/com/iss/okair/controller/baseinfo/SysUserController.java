package com.iss.okair.controller.baseinfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.iss.common.Message;
import com.iss.okair.db.entity.Sysuser;
import com.iss.okair.db.entity.Sysuserrole;
import com.iss.okair.service.baseinfo.SysUserService;

@RestController
@RequestMapping("logic/baseInfo/sysUser")
@SessionAttributes("currentUser")

public class SysUserController {
    @Autowired
	private SysUserService service;
    @RequestMapping("/login")   //路径，自己定
    @ResponseStatus(code=HttpStatus.OK)
	public Message login(Sysuser user,ModelMap model) {
		Message message=new Message();
		user=service.login(user);
		
		if(user!=null) {
			message.setError(false);
			message.setMsg("/index");
			model.addAttribute("currentUser",user);//添加绑定数据
		}else {
				message.setError(true);
				message.setMsg("/login");
			}
			return message;
		}
	  @RequestMapping("/roleList")
	  public List<Sysuserrole> roleList(){
		  return service.roleList();
	  }

	  @RequestMapping("/find")
	  public List<Sysuser> selectByExample(Sysuser example){
		  return service.selectByExample(example);
	  } 

}

