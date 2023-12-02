package com.testLife.TestLife;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Controller
public class TestLifeController {
    
	@Autowired
	UsersTestLifeRepository il;
	
	@Autowired
	TestsTLifeRepository tl;
	
	@Autowired
	CartTestLifeRepository cl;
	
	@RequestMapping("home")
	public String home(){
		return "Home.jsp";
	}
	
	@RequestMapping("signup")
	public String signup(){
		return "Signup.jsp";
	}
	
	@RequestMapping("about")
	public String about(){
		return "About.jsp";
	}
	
	@RequestMapping("logout")
	public String logout(){
		return "Logout.jsp";
	}
	@RequestMapping("addtests")
	public String addtests(){
		return "admin/AddTest.jsp";
	}
	
	@RequestMapping("login")
	public ModelAndView login(HttpSession session,String email,String password) {
		
		Users ul=il.findByEmail(email);
		
		if(ul==null) {
			ModelAndView mv=new ModelAndView();
			mv.setViewName("Login.jsp");
			return mv;
					
		}else {
			if(email.equals("admin@testlife.com")&& ul.getPassword().equals(password)) {
				session.setAttribute("tid", email);
				ModelAndView mv=new ModelAndView();
				mv.setViewName("adminHome");
				return mv;
			}else if (ul.getPassword().equals(password)) {
				int i2 = cl.countByCartId(ul.getId());
				ModelAndView mv= new ModelAndView();
				mv.addObject("qty",i2);
				mv.setViewName("home");
				session.setAttribute("tid", email);
				return mv;
			}
			else {
			ModelAndView mv=new ModelAndView();
			mv.setViewName("Login.jsp");
			return mv;
			}

			
		}
	}
		
	@RequestMapping("addUserDetails")
	public String addUserDetails(String user_name, String email, String password, String phone_number, Date dob,
			String gender){
		Users ur=new Users();
		
		ur.setUser_name(user_name);
		ur.setEmail(email);
		ur.setPassword(password);
		ur.setPhone_number(phone_number);
		ur.setDob(dob);
		ur.setGender(gender);
		il.save(ur);
		return "redirect:/home";
	}
	
	
	@RequestMapping("addAllTests")
	public String addAllTests(String category, String test_name, String description_notes, int test_price,
			String img_url){
		Tests ts=new Tests();
		
		ts.setCategory(category);
		ts.setTest_name(test_name);
		ts.setDescription_notes(description_notes);
		ts.setTest_price(test_price);
		ts.setImg_url(img_url);
		
		tl.save(ts);
		return "redirect:/allLabTest";
	}
	
	@RequestMapping("alltests")
	public ModelAndView  alltests(ModelMap mp){
		List<Tests> t4= (List<Tests>) tl.findAllByCategory("Top Booked Diagnostic Tests");
		mp.put("object", t4);
		
		List<Tests> t2= (List<Tests>) tl.findAllByCategory("Maternity essentials Tests");
		mp.put("object2", t2);
		
		List<Tests> t3= (List<Tests>) tl.findAllByCategory("Top Booked Blood Tests");
		mp.put("object3", t3);
		
		ModelAndView mv=new ModelAndView();
		mv.addAllObjects(mp);
		mv.setViewName("AllTests.jsp");
		return mv;
	}
	
	@RequestMapping("singletest")
	public ModelAndView singletest(ModelMap mo,int test_id){
		
		Tests t5= tl.findById(test_id).get();
		mo.put("object1", t5);
		ModelAndView mv= new ModelAndView();
		mv.addObject(mo);
		mv.setViewName("SingleTest.jsp");
		return mv;
	}
	
	@RequestMapping("addcart")
	public ModelAndView addcart(ModelMap mt,String email,int test_id) {
		
		Users ur= il.findByEmail(email);
		Tests ts= tl.findById(test_id).get();
		
		if(ts != null){
			Cart c = new Cart(ts,ur);
			cl.save(c);
		}
		ModelAndView mv =new ModelAndView();
		mv.setViewName("cartTests");
		return mv;
		}
	
	@RequestMapping("cartTests")
	public ModelAndView cartTests(ModelMap mp,String email) {
		
		Users us= il.findByEmail(email);
		int id=us.getId();
		
		mp.put("object4", cl.findAllById_id(id));
		mp.put("user",us);
		ModelAndView mv =new ModelAndView();
		mv.addObject(mp);
		mv.setViewName("CartTests.jsp");
		return mv;
	}
	
	@RequestMapping("adminHome")
	public String adminHome()
	{
		return "admin/AdminHome.jsp";
	}
		
    @RequestMapping("adminAbout")
	public String adminAbout() 
	{
			return "admin/AdminAbout.jsp";
	}
    
    @RequestMapping("registered")
	public  ModelAndView registered(ModelMap mp) 
	{
    	mp.put("object",il.findAll());
    	ModelAndView mv= new ModelAndView();
		mv.addAllObjects(mp);
		mv.setViewName("admin/Registered.jsp");
		return mv;
	}
	
	
	@RequestMapping("adminSingle")
	public ModelAndView adminSingle(ModelMap mo,int test_id){
		
		Tests t5= tl.findById(test_id).get();
		mo.put("object1", t5);
		ModelAndView mv= new ModelAndView();
		mv.addObject(mo);
		mv.setViewName("admin/AdminSingle.jsp");
		return mv;
	}
	
	@RequestMapping("deleteTest")
	public String deleteTest(int test_id) {
		tl.deleteById(test_id);
		return "allLabTest";
	}
	
	@RequestMapping("update")
	public String update(int test_id,ModelMap mp) {
		Tests te=tl.findById(test_id).get();
		mp.put("object", te);
		
		return "admin/UpdateTests.jsp";
	}
	
	@RequestMapping("updateAllTests")
	public String updateAllTests(int test_id, String category, String test_name, String description_notes, int test_price,
			String img_url) {
		
		Tests te=tl.findById(test_id).get();
		
		te.setTest_id(test_id);
		te.setCategory(category);
		te.setTest_name(test_name);
		te.setDescription_notes(description_notes);
		te.setTest_price(test_price);
		te.setImg_url(img_url);
		
		tl.save(te);
		return "redirect:/allLabTest"; 
	}
	
	@RequestMapping("allLabTest")
	public ModelAndView  allLabTest(ModelMap mp){
		List<Tests> t4= (List<Tests>) tl.findAllByCategory("Top Booked Diagnostic Tests");
		mp.put("object", t4);
		
		List<Tests> t2= (List<Tests>) tl.findAllByCategory("Maternity essentials Tests");
		mp.put("object2", t2);
		
		List<Tests> t3= (List<Tests>) tl.findAllByCategory("Top Booked Blood Tests");
		mp.put("object3", t3);
		
		ModelAndView mv=new ModelAndView();
		mv.addAllObjects(mp);
		mv.setViewName("admin/AllLabTest.jsp");
		return mv;
	}
	
	@RequestMapping("deleteCartTest")
	public String deleteCartTest(int cartId) {
		cl.deleteById(cartId);
		return "cartTests";
	}
	@RequestMapping("appointments")
	public String appointments(){
		return "admin/AppointmentDetail.jsp";
	}
}
