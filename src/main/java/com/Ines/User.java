package com.Ines;

public class User {
String fullnames,email,username,role,password;

public User() {
	super();
}

public User(String fullnames, String email, String username, String role, String password) {
	super();
	this.fullnames = fullnames;
	this.email = email;
	this.username = username;
	this.role = role;
	this.password = password;
}

public String getFullnames() {
	return fullnames;
}

public void setFullnames(String fullnames) {
	this.fullnames = fullnames;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

public String getRole() {
	return role;
}

public void setRole(String role) {
	this.role = role;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}
}
