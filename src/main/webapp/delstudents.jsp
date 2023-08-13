<%@page import="javax.swing.JOptionPane"%>
<%@ page import="com.Ines.ConnectDB" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<%
try {
    int userIdToDelete = Integer.parseInt(request.getParameter("id"));
    ConnectDB db = new ConnectDB();
    db.dbConnection() ;
    
    boolean deleted = db.deleteuser(userIdToDelete);
    
    if (deleted) {
        response.sendRedirect("Students.jsp"); 
    } else {
        out.println("Deletion failed. Please try again.");
    }
} catch (Exception e) {
    e.printStackTrace();
    System.out.println("Failed "+e.getMessage());
}

%>