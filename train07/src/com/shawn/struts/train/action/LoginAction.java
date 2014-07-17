package com.shawn.struts.train.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private static final long serialVersionUID = -5924940795525291652L;
	private String username;
	private String password;
	private String tip;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getTip() {
		return tip;
	}

	public void setTip(String tip) {
		this.tip = tip;
	}

	public String regist() throws Exception {
		ActionContext.getContext().getSession().put("user", getUsername());
		setTip("恭喜您," + getUsername() + ",您已经注册成功！");
		return SUCCESS;
	}

	public String login() throws Exception {
		if (getUsername().equals("sa") && getPassword().equals("sa")) {
			ActionContext.getContext().getSession().put("user", getUsername());
			setTip("欢迎," + getUsername() + ",您已经登陆成功！");
			return SUCCESS;
		} else {
			return ERROR;
		}
	}
}
