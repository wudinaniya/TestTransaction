package com.qx.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qx.pojo.User;
import com.qx.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;

	@RequestMapping("/findAll")
	public ModelAndView findAll() throws Exception{
		ModelAndView mv=new ModelAndView();
		List<User> users = userService.findAll();
		mv.addObject("users", users);
		mv.setViewName("/userlist");
		return mv;
	}
	
	@RequestMapping("/addUser")
	public String addUser(){
		User user=new User();
		user.setUsername("郑爽");
		user.setAge(17);
		user.setSex("女");
		user.setSalary(9856.00);
		user.setDepartment("销售");
		try {
			userService.AddUser(user);
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/user/findAll.action";
		
	}
	
	@RequestMapping("/updateUser")
	public String updateUser(Integer id){
		
		try {
			userService.updateUserById(id, "逗逼姚", 22, "男");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/user/findAll.action";
	}
	
}
