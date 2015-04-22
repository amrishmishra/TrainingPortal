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
import com.tp.service.LoginService;

@Controller
@RequestMapping("/app")
public class NavigationController  
{
    private static final Logger logger = Logger.getLogger(NavigationController.class);

//	@Autowired
//	private LoginService loginService;

	//navigate to Home page. 
    @RequestMapping(value = "/home", method = RequestMethod.GET)
	public String getHomePage() {
		logger.debug("Navigating to Home page");
		// This will resolve to /WEB-INF/jsp/Home.jsp
		return "Home";
	}

    @RequestMapping(value = "/explore", method = RequestMethod.GET)
	public String getExplorePage() {
		logger.debug("Navigating to Explore page");
		// This will resolve to /WEB-INF/jsp/Home.jsp
		return "Explore";
	}

    @RequestMapping(value = "/signUpPopup", method = RequestMethod.GET)
	public String getSignupPopup() {
		logger.debug("Navigating to Signup Popup");
		// This will resolve to /WEB-INF/jsp/Home.jsp
		return "SignupPopup";
	}
	 

}
