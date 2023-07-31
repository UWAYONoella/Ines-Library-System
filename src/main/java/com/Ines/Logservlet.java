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
 * Servlet implementation class Logservlet
 */
public class Logservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logservlet() {
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
	
	String username =request.getParameter("username");
	String password =request.getParameter("password");
	Userlog user1=new Userlog(username,password);
	ConnectDB db =new ConnectDB();
	db.dbConnection();
	db.getUser(user1);
	ResultSet rs= db.getUser(user1);
	
	try {
		if(rs.next()) {
			String role=rs.getString("role");
			System.out.println(role);
			if(role.equals("user")) {
				response.sendRedirect("StuDashboard.jsp");
			}else {
				response.sendRedirect("Admdashboard.jsp");
			}
		}
	} catch (SQLException e) {
	
		e.printStackTrace();
	}
	
	}

}
