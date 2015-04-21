package com.tp.service.impl;

import org.apache.commons.lang.BooleanUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.aop.Loggable;
import com.tp.aop.LoggingAroundAdvise;
import com.tp.dao.LoginDao;
import com.tp.domain.Login;
import com.tp.domain.Member ;
import com.tp.domain.Roles;
import com.tp.service.LoginService;

@Service 
public class LoginServiceImpl implements LoginService
{
	@Autowired
	private LoginDao loginDao;
	
	private static final Logger logger = Logger.getLogger(LoginServiceImpl.class);
	
	public Roles getRole(Long roleID)
	{
		return loginDao.getRole(roleID);
	}
	
	@Loggable
	public Boolean addMember(Member member)
	{
		logger.info("Here");
		 
		 
		System.out.println("The memer :"+member);
		 
		loginDao.addMember(member);
		return true;
	}
}
