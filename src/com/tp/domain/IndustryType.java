package com.tp.domain;

public class IndustryType
{
	private Long  industryTypeID ;
	
	private String name ;
	
	private String  description ;
	
  
    private Boolean status;


	public Long getIndustryTypeID() {
		return industryTypeID;
	}


	public void setIndustryTypeID(Long industryTypeID) {
		this.industryTypeID = industryTypeID;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}


	public Boolean getStatus() {
		return status;
	}


	public void setStatus(Boolean status) {
		this.status = status;
	}
    
    
    
}
