package com.tp.dao;

import org.springframework.stereotype.Repository;

import com.tp.domain.Login;
import com.tp.domain.Member ;
import com.tp.domain.Roles;

@Repository("BaseDao")
public interface BaseDao {
	 
	public Long saveDomainObject(Object domainObject , Class domainClass);

	public Object getDomainOjbect(Long domainID , Class domainClass);
}
