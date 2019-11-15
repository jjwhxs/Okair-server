package com.iss.okair.controller.baseinfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.iss.okair.db.entity.Employee;
import com.iss.okair.db.entity.Employeedept;
import com.iss.okair.service.baseinfo.EmployeeService;
@RestController
@RequestMapping("logic/baseInfo/employee")
public class EmployeeController {
	@Autowired
	private EmployeeService service;


	@RequestMapping("/find")
	public List<Employee> selectByExample(Employee example){
		System.out.println(service.selectByExample(example));
		return service.selectByExample(example);
	}
	@RequestMapping("/deptList")
	public List<Employeedept> deptList(){
		return service.deptList();
	}
	 @RequestMapping("/list")
	 public List<Employee> namecnList()
	 {
		 return service.find();
	 }
}
