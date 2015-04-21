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

import com.tp.domain.Address;
import com.tp.domain.Login;
import com.tp.domain.TrainingDetails;
import com.tp.service.LoginService;
import com.tp.service.TrainingService;

@Controller
@RequestMapping("/app")
public class TrainingController  
{
    private static final Logger LOG = Logger.getLogger(TrainingController.class);

	@Autowired
	private LoginService loginService;

	@Autowired
	private TrainingService trainingService ;
	
	
	@RequestMapping(value = "testTraing/", method = RequestMethod.GET) 
	public @ResponseBody boolean test()
	{
		return true;
	}
	
	@RequestMapping(value = "saveTrainingDetails/", method = RequestMethod.POST)
	public @ResponseBody Long saveTrainingDetails(@RequestBody TrainingDetails traininDetail)
	 {
		  trainingService.saveTrainingDetail(traininDetail);
		 System.out.println("The object:::"+traininDetail);
		 return traininDetail.getTrainingDetailId();
	 }
	  
	@RequestMapping(value = "getTrainingDetailByID/", method = RequestMethod.POST)
	public @ResponseBody TrainingDetails signUp(@RequestBody Long trainingDetailID )
	  {
		    TrainingDetails td = trainingService.getTrainingDetail(trainingDetailID);
			 System.out.println("The sign up ;;;;object:::"+td);
			 return td;
	  }
	  
	@RequestMapping(value = "saveAddress/", method = RequestMethod.POST)
	public @ResponseBody Address saveAddress(@RequestBody Address	address )
		 {
			  Address td = trainingService.saveAddress(address);
			  System.out.println("The  address object:::"+td);
			  return td;
		 }

	@RequestMapping(value = "getAddressByID/", method = RequestMethod.GET)
	public @ResponseBody Address getAddress(@RequestParam("addressID") Long addressID )
	  {
		  Address address = trainingService.getAddress( addressID);
		  System.out.println("The address object:::"+address);
		  return address;
	 }
	
}
