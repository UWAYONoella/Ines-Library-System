<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.Ines.ConnectDB" %>
<%
int bookId = Integer.parseInt(request.getParameter("id"));
String bookName = request.getParameter("bookName");
String bookAuthor = request.getParameter("bookAuthor");
String bookType = request.getParameter("bookType");
String date = request.getParameter("date");

try {
    ConnectDB db = new ConnectDB();
    db.dbConnection();
    db.updateBook(bookId, bookName, bookAuthor, bookType, date);
    response.sendRedirect("Booklist.jsp"); // Redirect back to main page
} catch (Exception e) {
    e.printStackTrace();
}
%>
