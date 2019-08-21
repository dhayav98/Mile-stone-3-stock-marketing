package com.demo.stc.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.demo.stc.dao.*;
import com.demo.stc.model.User;
import com.demo.stc.service.*;
@Controller
public class UserControllerImpl implements UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/user_landing_page")
	public String user_landing_page()
	{
		return "admin_landing_page";
	}
	
	@RequestMapping("/user_login_page")
	public String user_login_page(Model model)
	{
		User user=new User();
		model.addAttribute("user",user);
		return "user_login";
	}
	
	@RequestMapping("/user_registration_page")
	public String user_registration_page(Model model)
	{
		User user=new User();
		model.addAttribute("user", user);
		return "user_registration";
	}
	

	@RequestMapping(value="/user_register",method=RequestMethod.POST)	
    public String insert(@ModelAttribute("userdetails") User user, Model model) throws SQLException{
             
		try {
			registerUser(user);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/user_login_page";
              
       }
		
	@RequestMapping(value="/user_login1",method=RequestMethod.POST)	
    public String user_login(@ModelAttribute("user") User user, Model model) throws SQLException{
             
		try {
			int flag=0;
			 String name=user.getUserName();
			 String password=user.getUserPassword();
			 System.out.println("user name :"+name);
			 System.out.println("user password :"+password);
			 List<User> userdetails=new ArrayList<User>(userService.getUserList());
			 for(User u : userdetails)
			 {
				 if(name.equalsIgnoreCase(u.getUserName()) && password.equals(u.getUserPassword()))
				 {
					 flag=1;
					 break;
				 }
				
			 }
			 if(flag==1)
			 {	
				 System.out.println("succesfully logged in");
				 return "redirect:/user_landing_page";
			 }
			 else
			 {
				 System.out.println("incorrect userid and password");

			 }
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/user_login_page";
	
              
       }

	public User registerUser(User user) throws Exception {
	
		return userService.registerUser(user);
	}

	
	public User updateUser(User user) throws Exception {
	
		return userService.updateUser(user);
	}

	
	

}
