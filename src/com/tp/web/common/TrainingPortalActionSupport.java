package com.tp.web.common;

import com.opensymphony.xwork2.ActionSupport;

public class TrainingPortalActionSupport extends ActionSupport {
	public TrainingPortalActionSupport() {
		super();
	}
	
	public String execute() throws Exception {
		super.execute();
		return SUCCESS;
	}
}
