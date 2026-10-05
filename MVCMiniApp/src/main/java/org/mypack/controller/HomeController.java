package org.mypack.controller;

import org.mypack.model.Login;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import jakarta.servlet.http.HttpServletRequest;

import java.util.Map;


@Controller
public class HomeController {

	@RequestMapping(value="/", method=RequestMethod.GET)
	public String homePage() {
		return "home";
	}
	
	@RequestMapping(value="/validate", method=RequestMethod.POST)
	public String validateUser(Login login, Map<String, String>map) {
		if(login.getUsername().equals("admin") && login.getPassword().equals("admin"))
		{       
			map.put("user", "admin");
			return "admindashboard";
		}
		else {
			map.put("msg", "Invalid username and password");
			return "home";
		}
	}
	 
	@GetMapping("/addnewcourse")
	public String addNewCourse() {
		return "addcourse";
	}
	
	
	

}

