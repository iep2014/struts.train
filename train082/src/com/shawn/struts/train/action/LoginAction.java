package com.shawn.struts.train.action;

import com.opensymphony.xwork2.Action;
import com.shawn.struts.train.model.User;

import java.util.Date;
import java.util.List;
import java.util.Map;

public class LoginAction implements Action {
	private Map<String,User> users;
	private Date birth;
	private String tip;

	public Map<String,User> getUsers() {
		return users;
	}

	public void setUsers(Map<String,User> users) {
		this.users = users;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	public void setBirth(Date d) {
		this.birth = d;
	}

	public Date getBirth() {
		return this.birth;
	}

	public String getTip() {
		return (this.tip);
	}

	public String execute() throws Exception {
		return SUCCESS;
	}
}