package com.Ines;

public class Book {
	public Book() {
		super();
	}

	public Book(String date, String name, String author, String type) {
		super();
		this.date = date;
		this.name = name;
		this.author = author;
		this.type = type;
	}

	String date,name,author,type;

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
}
