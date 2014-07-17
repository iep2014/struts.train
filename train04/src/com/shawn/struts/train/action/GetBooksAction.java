package com.shawn.struts.train.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.shawn.struts.train.service.BookService;

public class GetBooksAction extends ActionSupport {
	private static final long serialVersionUID = -3084915701131891130L;
	private String[] books;

	public void setBooks(String[] books) {
		this.books = books;
	}

	public String[] getBooks() {
		return books;
	}

	public String execute() throws Exception {
		String user = (String) ActionContext.getContext().getSession().get("user");
		if (user != null && user.equals("sa")) {
			BookService bs = new BookService();
			setBooks(bs.getLeeBooks());
			return SUCCESS;
		} else {
			return LOGIN;
		}
	}
}
