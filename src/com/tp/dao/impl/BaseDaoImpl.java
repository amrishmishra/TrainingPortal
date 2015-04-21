package com.tp.dao.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.tp.dao.BaseDao;
import com.tp.dao.LoginDao;
import com.tp.domain.Member;
import com.tp.domain.Roles;


@Repository("BaseDao")
public class BaseDaoImpl  
implements BaseDao {
	 
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	 
	
	public Long saveDomainObject(Object domainObject , Class domainClass)
	{
		hibernateTemplate.save(domainObject);
		//domainObject 
		
		return 0L;
	}

	public Object getDomainOjbect(Long domainID , Class domainClass)
	{
		 
		Object DomainObject =  hibernateTemplate.get(domainClass,domainID);
		System.out.println("The Domain Class :::"+domainClass.getClass());
		System.out.println("The Domain Object ::::"+DomainObject);
		return DomainObject;
	}

}
