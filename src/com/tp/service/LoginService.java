package com.tp.service;


import com.tp.domain.Login;
import com.tp.domain.Member;
import com.tp.domain.Roles;

public interface LoginService {
	 
	public Boolean addMember(Member  member);
	
	public Roles getRole(Long roleID);
}
