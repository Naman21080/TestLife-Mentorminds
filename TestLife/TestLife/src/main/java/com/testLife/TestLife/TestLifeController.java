package com.testLife.TestLife;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestLifeController {
    
	@Autowired
	UsersTestLifeRepository il;
	
	@RequestMapping("home")
	public String home(){
		return "Home.jsp";
	}
	
	@RequestMapping("signup")
	public String signup(){
		return "Signup.jsp";
	}
	
	@RequestMapping("login")
	public String login(String email,String password)
	{
		users us=il.findByEmail(email);
		if(us !=null && us.getPassword().equals(password)){
			return "home";
		}
		else {
			return "Login.jsp";
		}
	}
	
	@RequestMapping("addUserDetails")
	public String addUserDetails(String user_name, String email, String password, String phone_number, Date dob,
			String gender, String user_type){
		users ur=new users();
		
		ur.setUser_name(user_name);
		ur.setEmail(email);
		ur.setPassword(password);
		ur.setPhone_number(phone_number);
		ur.setDob(dob);
		ur.setGender(gender);
		ur.setUser_type(user_type);
		
		il.save(ur);
		return "redirect:/home";
	}
	
	@RequestMapping("allTest")
	public String allTest(){
		return "AllTest.jsp";
	}
	
	
}
