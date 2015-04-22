package com.tp.domain;

import java.io.Serializable;
import java.util.Date;

public class IndividualMember  extends Member  implements Serializable {
	
	private static final long serialVersionUID = 1L;
 
	
	private String expDetail;
	
	private String  firstName;

	private String  lastName;

	private Date dateOfBirth;
	
	
	public String getExpDetail() {
		return expDetail;
	}

	public void setExpDetail(String expDetail) {
		this.expDetail = expDetail;
	}

	 
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

}
