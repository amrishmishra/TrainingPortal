package com.tp.service.impl;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.tp.aop.Loggable;
import com.tp.dao.LoginDao;
import com.tp.domain.Member;
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
	public Member addMember(Member member)
	{
		logger.info("Adding member");
		return loginDao.addMember(member);
	}
	
	@Loggable
	public Member getMemberByEmailId(String emailId)
	{
		return loginDao.getMemberByEmailId(emailId);
	}
}
