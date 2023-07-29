package com.Ines;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ConnectDB {
	String dburl="jdbc:mysql://localhost:3307/Registration";
	String dbuser="root";
	String dbpwd="";
	String dbdriver="com.mysql.cj.jdbc.Driver";
	Connection con=null;
	
	public void loadDriver() {
		try {
			Class.forName(dbdriver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("No driver");
		}
	}
	public Connection dbConnection() {
		try {
			con=DriverManager.getConnection(dburl,dbuser,dbpwd);
			System.out.println("Well connected");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("Not connected");
		}
		return con;
	}
	public String addUser(User user) {
		loadDriver();
		Connection cnx =dbConnection();
		String sql ="INSERT INTO Users(Names,Email,Username,Role,Password) VALUES(?,?,?,?,?)";
		try {
			PreparedStatement st=cnx.prepareStatement(sql);
			st.setString(1, user.getFullnames());
			st.setString(2, user.getEmail());
			st.setString(3, user.getUsername());
			st.setString(4, user.getRole());
			st.setString(5, user.getPassword());
			st.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	
	}
}
