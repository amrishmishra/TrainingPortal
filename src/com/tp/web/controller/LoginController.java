package com.tp.web.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.tp.domain.Login;
import com.tp.domain.Member;
import com.tp.service.LoginService;

@Controller
@RequestMapping("/app")
public class LoginController  
{
    private static final Logger LOG = Logger.getLogger(LoginController.class);

    final String emailPattern = "[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
	final String passwordPattern = "(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=\\S+$).{8,}";
	@Autowired
	private LoginService loginService;

	@RequestMapping(value = "test/", method = RequestMethod.GET) 
	public @ResponseBody boolean test()
	{
		return true;
	}
	
	  @RequestMapping(value = "signIn/", method = RequestMethod.POST)

	 public @ResponseBody ResponseEntity<Object> signIn(@RequestBody Login  login )
	 {
		  if(null == login.getEmailID() || login.getEmailID().equals("") ||  !login.getEmailID().matches(emailPattern))
		  {
			  return  new ResponseEntity<Object>("Email Id is not valid .", HttpStatus.BAD_REQUEST);
		  } 
		  else
		  {
			  Member existingMember = loginService.getMemberByEmailId(login.getEmailID());
			  if(null == existingMember)
			  {
				  return  new ResponseEntity<Object>("User doesn't exist with this email Id.", HttpStatus. BAD_REQUEST);
			  }
			  else
			  {
				  Object memberObject = (Object)existingMember;
				  return new ResponseEntity<Object>(memberObject,HttpStatus.OK);
			  }
		  }
	 }
	  
	 @RequestMapping(value = "signUp/", method = RequestMethod.POST)
	 public @ResponseBody ResponseEntity<Object> signUp(@RequestBody Login login )
     {
		  	
		 if(null == login.getEmailID() || login.getEmailID().equals("") ||  !login.getEmailID().matches(emailPattern))
		 {
			  return  new ResponseEntity<Object>("Email is not valid.", HttpStatus.BAD_REQUEST);
		 }
		  
		  else if (null == login.getPassword() || login.getPassword().equals("") ||  !login.getPassword().matches(passwordPattern))
		  {
			  return  new ResponseEntity<Object>("Password is not matching required pattern.", HttpStatus.BAD_REQUEST);
		  }
		  else
		  {
			  Member existingMember = loginService.getMemberByEmailId(login.getEmailID());
			  if(null != existingMember)
			  {
				  return  new ResponseEntity<Object>("User exists with this email Id.", HttpStatus.BAD_REQUEST);
			  }
			  else
			  {
				  Member member = new Member();
				  member.setEmail(login.getEmailID());
				  member.setPassword(login.getPassword());
			 
				  member.setRole(loginService.getRole(new Long(1)));
			  
				  member = loginService.addMember(member);
			  	
				  Object memberObject = (Object)member;
				  return new ResponseEntity<Object>(memberObject,HttpStatus.OK);
			  }
		  }
		 }
	  
	  	@RequestMapping(value = "forgotPassword/", method = RequestMethod.POST)
		 public @ResponseBody Boolean fogotPassword(@RequestParam  String  emailId )
		 {
			// System.out.println("The object:::"+member);
			 return true;
		 }
}
