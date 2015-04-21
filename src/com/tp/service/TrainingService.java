package com.tp.service;


import com.tp.domain.Address;
import com.tp.domain.Login;
import com.tp.domain.Roles;
import com.tp.domain.TrainingDetails;

public interface TrainingService {
	 
	public TrainingDetails getTrainingDetail(Long trainingDetailID);
	
	
	public Long saveTrainingDetail(TrainingDetails trainingDetail);
	
	
	public Address saveAddress(Address address);
	
	public Address getAddress(Long addressID);
}
