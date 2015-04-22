package com.tp.domain;

import java.io.Serializable;

public class Organization extends Member implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Long organizationID;
	private String website;
	private String description;
	private String name;
	private Address address;
	
	 

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

 
	public Long getOrganizationID() {
		return organizationID;
	}

	public void setOrganizationID(Long organizationID) {
		this.organizationID = organizationID;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	private Boolean status;
	
 
	
	 
		
}
