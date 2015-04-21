package com.tp.web.actions;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.tp.web.common.AbstractTrainingPortalAction;

public class LoginAction extends AbstractTrainingPortalAction implements ServletRequestAware, SessionAware {

	private static final long serialVersionUID = 1L;
	
	public String Handlelogin() throws Exception {
		if(true){
			return "success";
		}
		return "failed"; 
	}
}
