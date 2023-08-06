package com.Ines;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Servlet implementation class borrowBook
 */
@WebServlet("/borrowBook")
public class borrowBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public borrowBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String studentFaculty =request.getParameter("faculty");
		String studentDepartment =request.getParameter("department");
		String year=request.getParameter("year");
		String studentName =request.getParameter("studentName");
		String studentID  =request.getParameter("studentID");
		String bookName =request.getParameter("bookTitle");
		String lendDate =request.getParameter("dueDate");
		String dueDate =request.getParameter("dueDate");
		Bookborow user2=new Bookborow(studentFaculty,studentDepartment,year,studentName,studentID,bookName,lendDate,dueDate);
		ConnectDB db =new ConnectDB();
		db.dbConnection();
		/* db.addUser(user); */
		String rs= db.borrowBook(user2);
		response.sendRedirect("processLending.jsp");
		/*
		 * if(rs!=null) { response.sendRedirect("processLending.jsp"); }
		 */
		
		ResultSet result=db.getBook();
		try {
			while(result.next()) {
				String studentFaculty1=result.getString("Faculty");
				String studentDepartment1=result.getString("Department");
				String year1=result.getString("Year");
				String studentName1=result.getString("StudentName");
				String studentID1=result.getString("StudentName");
				String bookName1=result.getString("BookName");
				String lendDate1=result.getString("LendDate");
				String status=result.getString("status");
				String dueDate1=result.getString("DueDate");
			}
		} catch (SQLException e) {

			e.printStackTrace();
			System.out.println("No data Found !!"+e.getMessage());
		}
		
		
	}

}
