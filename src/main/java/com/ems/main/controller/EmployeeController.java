package com.ems.main.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ems.main.model.Employee;
import com.ems.main.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;
	
	@GetMapping("/registration")
	public String reg(Map<String, Object> model) {
		model.put("employee", new Employee());
		return "registration";
	}
	
	@PostMapping("/createOrUpdate")
	public String createOrUpdateEmployee(@ModelAttribute("employee") Employee emp) {
		employeeService.createOrUpdateEmployee(emp);
		return "redirect:/list";	
	}
	
	@GetMapping("/list")
	public String listOfEmployee(Model model) {
		List<Employee> employeeList = employeeService.getAllEmployee();
		model.addAttribute("empList", employeeList);
		return "employeeList";
	}
	
	@GetMapping("/delete")
	public String deleteEmployee(@RequestParam("id") String id) {
		employeeService.deleteEmployee(Long.parseLong(id));
		return "redirect:/list";		
	}
	
	@GetMapping("/edit")
	public String editEmployee(@RequestParam("id") String id, Map<String, Object> model) {
		Employee emp = employeeService.editEmployee(Long.parseLong(id));
		model.put("employee", emp);
		return "registration";
	}
	
}
