package com.pack.controller;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class ContactController {

	
	@RequestMapping("/contacts")
public String display(Model m) {
	m.addAttribute("Contact",new Contact());
	return "contact";
	}
	@RequestMapping(value="/addContact")
	public ModelAndView addStudent(@ModelAttribute("contact")Contact contact1,HttpSession session) {
		ModelAndView model1=new ModelAndView("Final");
		session.setAttribute("key","abc");
		return model1;
	}
}
