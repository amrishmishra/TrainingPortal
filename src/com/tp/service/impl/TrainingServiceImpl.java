package com.tp.service.impl;

import org.apache.commons.lang.BooleanUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.aop.Loggable;
import com.tp.aop.LoggingAroundAdvise;
import com.tp.dao.BaseDao;
import com.tp.dao.LoginDao;
import com.tp.domain.Address;
import com.tp.domain.Login;
import com.tp.domain.Member ;
import com.tp.domain.Roles;
import com.tp.domain.TrainingDetails;
import com.tp.service.LoginService;
import com.tp.service.TrainingService;

@Service 
public class TrainingServiceImpl implements TrainingService
{
	@Autowired
	private BaseDao baseDao;
	
	private static final Logger logger = Logger.getLogger(TrainingServiceImpl.class);
	
	
	public TrainingDetails getTrainingDetail(Long trainingDetailID) {
		TrainingDetails  trainingDetails = (TrainingDetails)baseDao.getDomainOjbect(trainingDetailID, TrainingDetails.class);
		return trainingDetails;
	}

	@Loggable
	public Long saveTrainingDetail(TrainingDetails trainingDetail) {
		logger.info("save training details"+trainingDetail);
		 
		baseDao.saveDomainObject(trainingDetail,TrainingDetails.class);
		
		return trainingDetail.getTrainingDetailId();
	}
	@Loggable
	public Address saveAddress(Address address)
	{
		baseDao.saveDomainObject(address,Address.class);
		return address;
	}
	@Loggable
	public Address getAddress(Long addressID)
	{
		Address address = (Address)baseDao.getDomainOjbect(addressID, Address.class);
		return address;
	}
	
}
