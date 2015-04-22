package com.tp.domain;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;

public class BaseDomain  {

	
	public boolean equals(Object o) {
		return EqualsBuilder.reflectionEquals(o, this);
	}
	
	public int hashCode() {
		return HashCodeBuilder.reflectionHashCode(this);
	}
	
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

	
	public Long getID() {
		return ID;
	}

	public void setID(Long iD) {
		ID = iD;
	}


	private Long ID;
}
