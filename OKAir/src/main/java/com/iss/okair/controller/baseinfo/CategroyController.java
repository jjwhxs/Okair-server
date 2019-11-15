package com.iss.okair.controller.baseinfo;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.iss.okair.db.entity.CategroyInterface;
import com.iss.okair.db.entity.categroy;
import com.iss.okair.service.baseinfo.CategoryService;
@RestController
@RequestMapping("logic/baseInfo/category/")
@SessionAttributes("currentUser")//会话绑定
public class CategroyController {
	@Autowired
	private CategoryService service;
	@ResponseStatus(code=HttpStatus.OK)//响应的状态
    
	@RequestMapping("/find")
	public List<categroy> selectByExample(categroy example){
		System.out.println(service.selectAll(example));
		return service.selectAll(example);
	}
	@RequestMapping("/parentList")
	public List<CategroyInterface> selectAll(){
		System.out.println(service.SelectAll());
		return service.SelectAll();
	}
	@RequestMapping("/{id}")
	public categroy findPrimaryKeyById(@PathVariable Integer id) {
		return service.findById(id);
	}
	@RequestMapping("/list/{parentid}")
	public List<categroy> categroyParent(@PathVariable Integer parentid)
	{
		return service.categroyId(parentid);
	}
		
}
