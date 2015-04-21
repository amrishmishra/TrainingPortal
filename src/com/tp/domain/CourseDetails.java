package com.tp.domain;

import java.io.Serializable;

public class CourseDetails implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long courseDetailID;
	private String title;
	private String description;
	private String level;
	private String format;
	
	private Boolean status;
	
	private TrainingDetails trainingDetail;
	public Long getCourseDetailID() {
		return courseDetailID;
	}

	public void setCourseDetailID(Long courseDetailID) {
		this.courseDetailID = courseDetailID;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getFormat() {
		return format;
	}

	public void setFormat(String format) {
		this.format = format;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	public TrainingDetails getTrainingDetail() {
		return trainingDetail;
	}

	public void setTrainingDetail(TrainingDetails trainingDetail) {
		this.trainingDetail = trainingDetail;
	}

	
	
//	private String format
//	
//	private String format
//	
//	private String format
//	
	
	 
		
}
