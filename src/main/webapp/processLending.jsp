<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.Ines.ConnectDB" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lending Data</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1>Lending Data</h1>
        
        <table class="table">
            <thead>
                <tr>
                
                  <th>ID</th>
                
                    <th>Faculty</th>
                    <th>Department</th>
                    <th>Year</th>
                    <th>Student Name</th>
                    <th>Student ID</th>
                    <th>Book Name</th>
                    <th>Lend Date</th>
                    <th>Due Date</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            
            <tbody>
                <%
                try {
                    ConnectDB db = new ConnectDB();
                    db.dbConnection();
                    ResultSet rs = db.getBook();
                    while (rs.next()) {
                %>
                <tr>
                   
                   <td><%=rs.getInt("ID") %></td>
                   
                    <td><%= rs.getString("Faculty") %></td>
                    <td><%= rs.getString("Department") %></td>
                    <td><%= rs.getString("Year") %></td>
                    <td><%= rs.getString("StudentName") %></td>
                    <td><%= rs.getString("StudentID") %></td>
                    <td><%= rs.getString("BookName") %></td>
                    <td><%= rs.getString("lendDate") %></td>
                    <td><%= rs.getString("DueDate") %></td>
                    <td><%= rs.getString("status") %></td>
                    <td>
                        <a href="editForm.jsp?id=<%= rs.getString("ID") %>">Edit</a>
                        <a href="delbook.jsp?id=<%= rs.getString("ID") %>">Delete</a>
                    </td>
                </tr>
                <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
                %>
            </tbody>
        </table>
        
    </div>
</body>
</html>
