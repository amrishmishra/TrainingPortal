package com.tp.dao.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.tp.dao.AbstractHibernateExtent;
import com.tp.dao.BaseDao;
import com.tp.dao.LoginDao;
import com.tp.dao.TrainingDao;
import com.tp.domain.Login;
import com.tp.domain.Member ;
import com.tp.domain.Roles;
import com.tp.domain.TrainingDetails;


@Repository("TrainingDao")
public class TrainingDaoImpl  
implements TrainingDao {
	 
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Autowired
	private BaseDao baseDao;
	
	public Boolean addMember(Member  memberDetails)
	{
		hibernateTemplate.save(memberDetails);
		System.out.println("The login Object :"+memberDetails);
		return  true;
	}

	 

	@Override
	public Long addTraining(TrainingDetails trainingDetails) {

		baseDao.saveDomainObject(trainingDetails, TrainingDetails.class);
		
		return trainingDetails.getTrainingDetailId();
	}

	@Override
	public TrainingDetails getTrainingdeDetail(Long trainingID) {
	 
		TrainingDetails trainingDetailObject =(TrainingDetails) baseDao.getDomainOjbect(trainingID, TrainingDetails.class);
		return trainingDetailObject;
	}
	
}
