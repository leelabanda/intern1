package com.pack.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pack.model.Employee;
import com.pack.repository.EmployeeRepository;

@RestController
@RequestMapping("/avi/v1/")
public class EmployeeController {
	@Autowired
	private EmployeeRepository emprepo;
	//get all employees
	@GetMapping("/employees")
	public List<Employee> getAllEmployees(){
		return emprepo.findAll();
	}
}
