package com.shawn.service;

import com.shawn.bean.Book;

public class BookService
{
	public Book[] getBooks()
	{
		return new Book[]
		{
			new Book("Spring2.0����","���"),
			new Book("������J2EE��ҵӦ��ʵս","���"),
			new Book("����J2EE��Ajax����","���")
		};
	}
}
