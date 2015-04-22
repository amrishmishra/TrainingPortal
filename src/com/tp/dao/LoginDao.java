package com.tp.dao;

import org.springframework.stereotype.Repository;

import com.tp.domain.Login;
import com.tp.domain.Member ;
import com.tp.domain.Roles;

@Repository("LoginDao")
public interface LoginDao {
	 
	public Member addMember(Member  memberDetails);

	public Roles getRole(Long roleID);
	
	public Member getMemberByEmailId(String emailId);
}
