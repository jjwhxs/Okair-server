package com.iss.okair.db.mapper;

import java.util.List;

import com.iss.okair.db.entity.Employee;



public interface EmployeeMapper {
	List<Employee> selectByExample(Employee example);
	List<Employee> findAll();
}
