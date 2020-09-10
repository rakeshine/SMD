package com.ems.main.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ems.main.model.Employee;
import com.ems.main.repository.EmployeeRepository;
import com.ems.main.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService{
	
	@Autowired
	private EmployeeRepository employeeRepository;

	public void createOrUpdateEmployee(Employee emp) {
		employeeRepository.save(emp);
	}
	
	public List<Employee> getAllEmployee() {
		return employeeRepository.findAll();
	}
	
	public void deleteEmployee(Long id) {
		employeeRepository.deleteById(id);
	}
	
	public Employee editEmployee(Long id) {
		return employeeRepository.getOne(id);
	}
}
