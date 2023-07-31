package com.Ines;

public class Userlog {
String username,password;

public String getUsername() {
	return username;
}

public Userlog() {
	super();
}

public Userlog(String username, String password) {
	super();
	this.username = username;
	this.password = password;
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
}
