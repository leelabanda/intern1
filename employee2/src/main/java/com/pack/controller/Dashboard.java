package com.pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pack.model.Login;
import com.pack.repository.EmployeeRepository;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Controller
public class Dashboard {
	@Autowired
    private EmployeeRepository loginRepo;
	 @GetMapping("/dash")
	    public String viewLoginPage1() {
	        return "dashboard1";
	    }
	 @GetMapping("/")
	    public String home() {
	        return "index"; // Loads index.jsp
	    }
	 @GetMapping("/login")
	    public String viewLoginPage() {
	        return "login";
	    }
	  @PostMapping("/login")
	    public String processLogin(@RequestParam("name") String name, 
	                               @RequestParam("password") String password, 
	                               ModelMap model) {
	        Optional<Login> user = loginRepo.findByName(name); // Fetch user by name
	        
	        if (user.isPresent() && user.get().getPassword().equals(password)) { // Check credentials
	            model.addAttribute("name", name);
	            return "dashboard"; // Redirect to welcome page
	        } else {
	            model.addAttribute("errorMessage", "Invalid Username or Password");
	            return "login"; // Stay on login page
	        }
	    }

	    @GetMapping("/register")
	    public String register() {
	        return "register"; // Loads register.jsp
	    }
}
