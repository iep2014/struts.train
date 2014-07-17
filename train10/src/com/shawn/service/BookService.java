package com.shawn.service;

import com.shawn.bean.Book;

public class BookService
{
	public Book[] getBooks()
	{
		return new Book[]
		{
			new Book("Spring2.0宝典","李刚"),
			new Book("轻量级J2EE企业应用实战","李刚"),
			new Book("基于J2EE的Ajax宝典","李刚")
		};
	}
}
