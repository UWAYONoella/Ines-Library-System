package com.Ines;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Bookservlet
 */
public class Bookservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Bookservlet() {
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
		String date =request.getParameter("date");
		String name =request.getParameter("name");
		String author=request.getParameter("author");
		String type =request.getParameter("type");
		Book book=new Book(date,name,author,type);
		ConnectDB db =new ConnectDB();
		db.dbConnection();
//		db.addBook(book);
		String rs= db.addBook(book);
		if(rs!=null) {
			response.sendRedirect("Booklist.jsp");
		}
		
		
		ResultSet result=db.getAllBook();
	
			try {
				while(result.next()) {
					int bookID=result.getInt("ID");
					String bookdate=result.getString("Date");
					String bookname=result.getString("BookName");
					String bookauthor=result.getString("BookAuthor");
					String booktype=result.getString("BookType");
				}
			} catch (SQLException e) {
	
				e.printStackTrace();
				System.out.println("No data Found !!"+e.getMessage());
			}
		
	}

}
