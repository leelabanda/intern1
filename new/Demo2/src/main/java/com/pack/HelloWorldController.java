package com.pack;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloWorldController {
	@RequestMapping("/welcome")
	public ModelAndView Welcome() {
		String message="welcome to spring mvc";
		return new ModelAndView("HelloWorld","msg",message);
	}

}
