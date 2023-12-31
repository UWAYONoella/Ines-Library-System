package com.Ines;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.swing.JOptionPane;

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
	public ResultSet getUser(Userlog user1) {
		
		ResultSet row=null;
		
		loadDriver();
		Connection cnx =dbConnection();
        String sql = "SELECT * FROM Users WHERE Username=? AND Password=?";
        try {
			PreparedStatement rs = cnx.prepareStatement(sql);
			rs.setString(1, user1.getUsername());
			rs.setString(2, user1.getPassword());
			row=rs.executeQuery();
		} catch (SQLException e) {
		
			e.printStackTrace();
			System.err.println("No data found "+e.getMessage());
		}

		return row;
		
	}
	public String addBook(Book user2) {
		loadDriver();
		Connection cnx =dbConnection();
		String sql ="INSERT INTO Books (Date,BookName,BookAuthor,BookType) VALUES(?,?,?,?)";
		try {
			PreparedStatement rs =cnx.prepareStatement(sql);
			rs.setString(1,user2.getDate());
			rs.setString(2,user2.getName());
			rs.setString(3,user2.getAuthor());
			rs.setString(4,user2.getType());
			rs.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	public ResultSet getAllBook() {
		ResultSet row=null;
		loadDriver();
		Connection cnx =dbConnection();
		String sql="SELECT * FROM Books";
		try {
			PreparedStatement stm=cnx.prepareStatement(sql);
			row=stm.executeQuery();
			
		} catch (SQLException e) {
	
			e.printStackTrace();
		}
		
		
		
		return row;
		
	}
	
	public String deleteBook(int bookID) throws SQLException {
		loadDriver();
		Connection cnx =dbConnection();
        String sql = "DELETE FROM Books WHERE ID = ?";
        try 
        (PreparedStatement st = cnx.prepareStatement(sql)) {
            st.setInt(1, bookID);
            st.executeUpdate();
        }
		return null;
    
	}
	// ... (existing code)

	public ResultSet getBookById(int bookId) {
	    ResultSet row = null;
	    loadDriver();
	    Connection cnx = dbConnection();
	    String sql = "SELECT * FROM Books WHERE ID=?";
	    try {
	        PreparedStatement stm = cnx.prepareStatement(sql);
	        stm.setInt(1, bookId);
	        row = stm.executeQuery();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return row;
	}

	public String updateBook(int bookId, String bookName, String bookAuthor, String bookType, String date) {
	    loadDriver();
	    Connection cnx = dbConnection();
	    String sql = "UPDATE Books SET BookName=?, BookAuthor=?, BookType=?, Date=? WHERE ID=?";
	    try {
	        PreparedStatement stm = cnx.prepareStatement(sql);
	        stm.setString(1, bookName);
	        stm.setString(2, bookAuthor);
	        stm.setString(3, bookType);
	        stm.setString(4, date);
	        stm.setInt(5, bookId);
	        stm.executeUpdate();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return null;
	}

	public String borrowBook(Bookborow user2) {
		loadDriver();
		Connection cnx =dbConnection();
		String sql ="INSERT INTO BorrowedBooks(Faculty,Department,Year,StudentName,StudentID,BookName,LendDate,DueDate) VALUES(?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement rs =cnx.prepareStatement(sql);
			rs.setString(1,user2.getStudentFaculty());
			rs.setString(2,user2.getStudentDepartment());
			rs.setString(3,user2.getYear());
			rs.setString(4,user2.getStudentName());
			rs.setString(5,user2.getStudentID());
			rs.setString(6,user2.getBookName());
			rs.setString(7,user2.getLendDate());
			rs.setString(8,user2.getDueDate());
			rs.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	public ResultSet getBook() {
		ResultSet row=null;
		loadDriver();
		Connection cnx =dbConnection();
		String sql="SELECT * FROM BorrowedBooks";
		try {
			PreparedStatement stm=cnx.prepareStatement(sql);
			row=stm.executeQuery();
			
		} catch (SQLException e) {
	
			e.printStackTrace();
		}
		
		
		
		return row;
		
	}
	public String deleteBorrowedBook(int bookID) throws SQLException {
		loadDriver();
		Connection cnx =dbConnection();
        String sql = "DELETE FROM BorrowedBooks WHERE ID = ?";
        try 
        (PreparedStatement st = cnx.prepareStatement(sql)) {
            st.setInt(1, bookID);
            st.executeUpdate();
        }
		return null;
    
	}

	public ResultSet getAllStudents() {
	    ResultSet rows = null;
	    loadDriver();
	    Connection cnx = dbConnection();
	    String sql = "SELECT * FROM Users"; // Modify the SQL query as needed
	    try {
	        PreparedStatement stm = cnx.prepareStatement(sql);
	        rows = stm.executeQuery();
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return rows;
	}
//byJoel
	
	public String updateUser(String name,String email,String username,String role,int id) {
	 String message = "Success";
	    loadDriver();
	    Connection cnx = dbConnection();
	    String sql = "UPDATE Users SET Names=?,Email=?,Username=?,Role=? WHERE ID=?";
	    try {
	        PreparedStatement stm = cnx.prepareStatement(sql);
	        stm.setString(1, name);
	        stm.setString(2, email);
	        stm.setString(3, username);
	        stm.setString(4, role);
	        stm.setInt(5, id);
	        int row = stm.executeUpdate();
	        if(row>0) {
	        	JOptionPane.showMessageDialog(null, "User updated");
	        }
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	        System.out.println(e.getMessage());
	    }
	    return message;
	}
	


public boolean deleteuser(int userID) throws SQLException {
	loadDriver();
	Connection cnx =dbConnection();
    String sql = "DELETE FROM Users WHERE ID = ?";
    try 
    (PreparedStatement st = cnx.prepareStatement(sql)) {
        st.setInt(1, userID);
        st.executeUpdate();
    }
	return true;

}

public String updateborrowerdata(int id, String faculty, String department, String year, String studentName, String studentID, String bookTitle, String lendDate, String dueDate, String status) {
	 String message = "Success";
	    loadDriver();
	    Connection cnx = dbConnection();
	    String sql = "UPDATE BorrowedBooks SET Faculty=?,Department=?,Year=?,StudentName=?,StudentID=?, BookName=? ,LendDate=? ,DueDate=?,status=? WHERE ID=?";
	    try {
	        PreparedStatement stm = cnx.prepareStatement(sql);
	        stm.setString(1, faculty);
	        stm.setString(2, department);
	        stm.setString(3, year);
	        stm.setString(4, studentName);
	        stm.setString(5, studentID);
	        stm.setString(6, bookTitle);
	        stm.setString(7, lendDate);
	        stm.setString(8, dueDate);
	        stm.setString(9, status);
	        stm.setInt(10, id);
	        int row = stm.executeUpdate();
	        if(row>0) {
	        	JOptionPane.showMessageDialog(null, "Well  updated");
	        }
	        
	    } catch (SQLException e) {
	        e.printStackTrace();
	        System.out.println(e.getMessage());
	    }
	    return message;
	}

}
