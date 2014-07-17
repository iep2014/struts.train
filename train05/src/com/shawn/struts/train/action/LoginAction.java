package com.shawn.struts.train.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private static final long serialVersionUID = -5924940795525291652L;
	private String username;
	private String password;

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

	public String execute() throws Exception {
		ActionContext ctx = ActionContext.getContext();
		Integer counter = (Integer) ctx.getApplication().get("counter");
		if (counter == null) {
			counter = 1;
		} else {
			counter = counter + 1;
		}
		ctx.getApplication().put("counter", counter);
		ctx.getSession().put("user", getUsername());
		

		if (getUsername().equals("sa") && getPassword().equals("sa")) {
			ctx.put("tip", "服务器提示：您已经成功的登陆");
			return SUCCESS;
		} else {
			ctx.put("tip", "服务器提示：登陆失败");
			return ERROR;
		}
	}
}
