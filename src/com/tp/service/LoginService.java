package com.tp.service;


import com.tp.domain.Login;
import com.tp.domain.Member;
import com.tp.domain.Roles;

public interface LoginService {
	 
	public Member addMember(Member  member);
	
	public Roles getRole(Long roleID);
	
	public Member getMemberByEmailId(String emailId);
}
