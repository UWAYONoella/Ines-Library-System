package com.Ines;

public class Bookborow {
String studentFaculty,studentDepartment,year,studentName,studentID,bookName,lendDate,dueDate;

public String getStudentFaculty() {
	return studentFaculty;
}

public void setStudentFaculty(String studentFaculty) {
	this.studentFaculty = studentFaculty;
}

public String getStudentDepartment() {
	return studentDepartment;
}

public void setStudentDepartment(String studentDepartment) {
	this.studentDepartment = studentDepartment;
}

public String getYear() {
	return year;
}

public Bookborow() {
	super();
}

public Bookborow(String studentFaculty, String studentDepartment, String year, String studentName, String studentID,
		String bookName, String lendDate, String dueDate) {
	super();
	this.studentFaculty = studentFaculty;
	this.studentDepartment = studentDepartment;
	this.year = year;
	this.studentName = studentName;
	this.studentID = studentID;
	this.bookName = bookName;
	this.lendDate = lendDate;
	this.dueDate = dueDate;
}

public void setYear(String year) {
	this.year = year;
}

public String getStudentName() {
	return studentName;
}

public void setStudentName(String studentName) {
	this.studentName = studentName;
}

public String getStudentID() {
	return studentID;
}

public void setStudentID(String studentID) {
	this.studentID = studentID;
}

public String getBookName() {
	return bookName;
}

public void setBookName(String bookName) {
	this.bookName = bookName;
}

public String getLendDate() {
	return lendDate;
}

public void setLendDate(String lendDate) {
	this.lendDate = lendDate;
}

public String getDueDate() {
	return dueDate;
}

public void setDueDate(String dueDate) {
	this.dueDate = dueDate;
}
}
