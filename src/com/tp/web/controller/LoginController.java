package com.tp.web.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.tp.domain.Login;
import com.tp.domain.Member;
import com.tp.service.LoginService;

@Controller
@RequestMapping("/app")
public class LoginController  
{
    private static final Logger LOG = Logger.getLogger(LoginController.class);

	@Autowired
	private LoginService loginService;

	@RequestMapping(value = "test/", method = RequestMethod.GET) 
	public @ResponseBody boolean test()
	{
		return true;
	}
	
	  @RequestMapping(value = "signIn/", method = RequestMethod.POST)

	 public @ResponseBody Member signIn(@RequestBody Member  member )
	 {
		   loginService.addMember(member);
		 System.out.println("Here in signup The object:::"+member);
		 return member;
	 }
	  
	  @RequestMapping(value = "signUp/", method = RequestMethod.POST)

	 public @ResponseBody Boolean signUp(@RequestBody Member member )
		 {
		  loginService.addMember(member);
			 System.out.println("The sign up ;;;;object:::"+member);
			 return true;
		 }
	  
	  	@RequestMapping(value = "forgotPassword/", method = RequestMethod.POST)
		 public @ResponseBody Boolean fogotPassword(@RequestParam  String  emailId )
		 {
			// System.out.println("The object:::"+member);
			 return true;
		 }
	  	

}
