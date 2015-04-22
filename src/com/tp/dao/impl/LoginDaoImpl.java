package com.tp.dao.impl;


import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Expression;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.tp.dao.LoginDao;
import com.tp.domain.Member;
import com.tp.domain.Roles;


@Repository("LoginDao")
public class LoginDaoImpl  
implements LoginDao {
	 
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	public Member addMember(Member  memberDetails)
	{
		hibernateTemplate.save(memberDetails);
		return  memberDetails;
	}

	@Override
	public Roles getRole(Long roleID) {
		Roles role = hibernateTemplate.get(Roles.class,roleID);
		return role;
	}
	
	public Member getMemberByEmailId(String emailId)
	{
		DetachedCriteria criteria = DetachedCriteria.forClass(Member.class);
		criteria.add(Expression.eq("email", emailId));
		List<Member> members = hibernateTemplate.findByCriteria(criteria);
		if(null != members && !members.isEmpty())
		{
			return members.get(0);
		}
		else
		{	
			return null;
		}
	}
	
}
