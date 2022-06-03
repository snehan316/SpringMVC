package com.mycode.demo;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

	@RequestMapping("/showForm")
	public String showForm(Model theModel) {
		
		Employee theEmployee = new Employee();
		theModel.addAttribute("employee", theEmployee);
		
		return "employee-form";
		
	}
	
	@RequestMapping("/processForm")
	public String processForm(@ModelAttribute("employee") Employee theEmployee) {
		System.out.println("Employee: " + theEmployee.getFirstName() + " " + theEmployee.getLastName());
		return "confirmation-page";
	}
}
