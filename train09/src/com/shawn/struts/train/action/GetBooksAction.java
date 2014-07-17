package com.shawn.struts.train.action;

import org.apache.tomcat.util.bcel.classfile.Constant;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.shawn.struts.train.service.BookService;

public class GetBooksAction extends ActionSupport {
	private static final long serialVersionUID = -3084915701131891130L;
	private String[] books;
	private String infoMsg;
	private String intercepterMsg;
	private final String INFOMSG = "infoPage";

	public String getIntercepterMsg() {
		return intercepterMsg;
	}

	public void setIntercepterMsg(String intercepterMsg) {
		this.intercepterMsg = intercepterMsg;
	}

	public String getInfoMsg() {
		return infoMsg;
	}

	public void setInfoMsg(String infoMsg) {
		this.infoMsg = infoMsg;
	}

	public void setBooks(String[] books) {
		this.books = books;
	}

	public String[] getBooks() {
		return books;
	}
	
	public String getInfo1() throws Exception{
		setInfoMsg("信息1");
		return INFOMSG;
	}
	
	public String getInfo2() throws Exception{
		setInfoMsg("信息2");
		return INFOMSG;
	}

	public String execute() throws Exception {
		BookService bs = new BookService();
		setBooks(bs.getLeeBooks());
		return SUCCESS;
	}
}
