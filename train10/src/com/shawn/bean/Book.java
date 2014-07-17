package com.shawn.bean;

public class Book
{
	private String name;
	private String author;

	public Book()
	{
	}
	public Book(String name , String author)
	{
		this.name = name;
		this.author = author;

	}

	public void setName(String name)
	{
		this.name = name;
	}
	public String getName()
	{
		 return this.name;
	}

	public void setAuthor(String author)
	{
		this.author = author;
	}
	public String getAuthor()
	{
		 return this.author;
	}

}