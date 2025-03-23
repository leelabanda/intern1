package com.pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;

import com.pack.model.Login;
import com.pack.repository.EmployeeRepository;

import jakarta.servlet.http.HttpSession;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/users")
public class EmployeeController {

    @Autowired
    private EmployeeRepository loginRepo;

    @GetMapping
    public String listEmployees(Model model) {
        List<Login> employees = loginRepo.findAll();
        model.addAttribute("employees", employees);
        return "employee-list"; // JSP should be named employee-list.jsp
    }

    // Show login page
    @GetMapping("/login")
    public String viewLoginPage() {
        return "login";
    }

    // Handle login form submission
    @PostMapping("/login")
    public String processLogin(@RequestParam("name") String name, 
                               @RequestParam("password") String password, 
                               ModelMap model) {
        Optional<Login> user = loginRepo.findByName(name); // Fetch user by name
        
        if (user.isPresent() && user.get().getPassword().equals(password)) { // Check credentials
            model.addAttribute("name", name);
            return "welcome"; // Redirect to welcome page
        } else {
            model.addAttribute("errorMessage", "Invalid Username or Password");
            return "login"; // Stay on login page
        }
    }

    // Show registration page
    @GetMapping("/register")
    public String viewRegisterPage() {
        return "register";
    }

    // Handle user registration (saving data to DB)
    @PostMapping("/register")
    public String registerUser(@RequestParam String name, @RequestParam String password, ModelMap model) {
        Optional<Login> existingUser = loginRepo.findByName(name); // Check if user exists

        if (existingUser.isEmpty()) {
            Login newUser = new Login(name, password);
            loginRepo.save(newUser); // Save to DB
            return "redirect:/login"; // Redirect to login page after registration
        } else {
            model.addAttribute("errorMessage", "User already exists!");
            return "register"; // Stay on register page with error message
        }
    }
    @GetMapping("/logout")
    public String logout(HttpSession session, SessionStatus sessionStatus) {
        session.invalidate();  // Invalidate the session
        sessionStatus.setComplete(); // Clear session attributes
        return "logout"; // Forward to logout.jsp
    }
    @GetMapping("/edit/{id}")
    public String showUpdateForm(@PathVariable("id") Long id, Model model) {
        Login employee = loginRepo.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid employee ID: " + id));

        model.addAttribute("employee", employee);
        return "update-employee"; // JSP file name (should be in `WEB-INF/views`)
    }

    @PostMapping("/updateEmployee")
    public String updateEmployee(@RequestParam Long id,
                                 @RequestParam String name) {
        Login employee = loginRepo.findById(id).orElse(null);
        
        if (employee != null) {
            employee.setName(name);
            loginRepo.save(employee);
        }
        
        return "redirect:/employees"; // Redirect back to employee list
    }

}
