package com.iss.okair.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.iss.okair.db.entity.Sysuser;

@Controller
@RequestMapping("/")
@SessionAttributes("currentUser")
public class RedirectController {
	
	ThreadLocal<Sysuser> authContext = new ThreadLocal<Sysuser>();
	
	@ModelAttribute
	private void currentUser(HttpSession session) {
		 Object obj = session.getAttribute("currentUser");
	        if(obj instanceof Sysuser) {
	        	Sysuser user = (Sysuser) obj;
	            authContext.set(user);
	        }
	}
	
	@RequestMapping("/")
	public String root() {
		return "login";
	}
	
	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/assets/{assetsType}")
	public String assetsPage(@PathVariable String assetsType) {
		return "/assets/" + assetsType + "Assets";
	}
	
	@RequestMapping("/baseInfo/{infoType}")
	public String baseInfoPage(@PathVariable String infoType) {
		return "/baseInfo/" + infoType;
	}
	
	@RequestMapping("/trans/{assetsType}")
	public String assetsTransPage(@PathVariable String assetsType) {
		return "/trans/" + assetsType + "Trans";
	}
	
}
