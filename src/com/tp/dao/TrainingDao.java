package com.tp.dao;

import org.springframework.stereotype.Repository;

import com.tp.domain.Login;
import com.tp.domain.Member ;
import com.tp.domain.Roles;
import com.tp.domain.TrainingDetails;

@Repository("TrainingDao")
public interface TrainingDao {
	 
	public Long addTraining(TrainingDetails  TrainingDetailss);

	public TrainingDetails getTrainingdeDetail(Long trainingID);
}
