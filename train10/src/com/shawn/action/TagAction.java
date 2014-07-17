package com.shawn.action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class TagAction extends ActionSupport {
	private String author;

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getAuthor() {
		return author;
	}

	public String execute() throws Exception {
		return "done";
	}

	public String login() throws Exception {
		ServletActionContext.getRequest().setAttribute("author", getAuthor());
		return "done";
	}
}
