<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.Ines.ConnectDB" %>

<%
try {
    // Get the book ID from the request parameter
    int bookID = Integer.parseInt(request.getParameter("id"));

    // Delete the book from the database using the book ID
    ConnectDB db = new ConnectDB();
    db.dbConnection();
    db.deleteBook(bookID); // You'll need to implement this method in ConnectDB class

    // Redirect back to the original page
    response.sendRedirect("Booklist.jsp"); // Replace with the actual original page URL
} catch (Exception e) {
    e.printStackTrace();
}
%>
