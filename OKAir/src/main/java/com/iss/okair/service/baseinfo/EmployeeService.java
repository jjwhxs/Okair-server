package com.iss.okair.service.baseinfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iss.okair.db.entity.Employee;
import com.iss.okair.db.entity.Employeedept;
import com.iss.okair.db.mapper.EmployeeMapper;
import com.iss.okair.db.mapper.EmployeedeptMapper;

@Service
public class EmployeeService {
		@Autowired
		private EmployeeMapper mapper;
		@Autowired
		private EmployeedeptMapper deptmapper;
		
		public List<Employee> selectByExample(Employee example){
			return mapper.selectByExample(example);
		}
	
		public List<Employeedept> deptList(){
			return deptmapper.selectAll();
		}
		
		public List<Employee> find()
		{
			return mapper.findAll();
		}
	}


