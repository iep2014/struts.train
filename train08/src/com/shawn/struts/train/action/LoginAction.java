package com.shawn.struts.train.action;

import com.opensymphony.xwork2.Action;
import com.shawn.struts.train.model.User;

import java.util.Date;

public class LoginAction implements Action {
	private User[] user;
	private Date birth;
	private String tip;

	public void setUser(User[] user) {
		this.user = user;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	public void setBirth(Date d) {
		this.birth = d;
	}

	public User[] getUser() {
		return (this.user);
	}

	public Date getBirth() {
		return this.birth;
	}

	public String getTip() {
		return (this.tip);
	}

	public String execute() throws Exception {
		if (getUser()[0].getName().equals("sa") && getUser()[0].getPass().equals("sa")) {
			setTip("转换成功");
			return SUCCESS;
		} else {
			setTip("转换失败");
			return ERROR;
		}
	}
}