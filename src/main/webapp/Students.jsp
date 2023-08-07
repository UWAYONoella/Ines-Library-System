<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.Ines.ConnectDB" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel ="stylesheet" type ="text/css" href="./Sytle.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Ines Library System</title>

<style>
  body {
    background-image: url("https://scontent-mba1-1.xx.fbcdn.net/v/t31.18172-8/15129072_725477447602823_1478575613298859508_o.jpg?_nc_cat=104&cb=99be929b-3346023f&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeGS4zO5iRWLYEKmv2YaQC__g9XcYeEMx16D1dxh4QzHXvStRzd0gbNqsgc0pKWbojnqBn4y25lZF4oRv0karXFZ&_nc_ohc=ZjdpnaMKWSgAX-E-cFP&_nc_ht=scontent-mba1-1.xx&oh=00_AfB-vtKmqpqbgWHj3mV-hKGVFjezQMXqeOIH7h1jdFe76Q&oe=64F767B4"); /* Replace with your image URL */
    background-size: cover;
    background-repeat: no-repeat; 
   
  }
  .nav-link {
    color: white !important;
}
   .main-container {
    height: 100vh; /* Adjust as needed */
    overflow-y: auto;
  }
table{
border-radius: 5px;
	background-color: #f8f9fa; 
}
/* footer{
position:fixed;
} */
</style>

</head>
<body>

<nav class="navbar navbar-expand-sm bg-secondary navbar-dark">
    <div class="container">
      <div class="text-white text-center">
        <h1><a class="navbar-brand" href="#">
      <img src="https://amarebe.com/wp-content/uploads/2021/08/INES-Ruhengeri-logo-700x426-1-1280x720.png"alt="Ines" style="width:70px; height: 80px;" class="rounded-pill"> 
    </a>Welcome to Ines Library</h1>
      </div>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="index.jsp"><i class="fa fa-home"></i>Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Home.jsp">Signup</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="Login.jsp"> Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Contact Us</a>
        </li>
      </ul>
    </div>
  </nav>

    <div class="container mt-5">
        <h1>Student list</h1>
        
        <table class="table">
            <thead>
                <tr>
                
                  <th>ID</th>
                
                    <th>Names</th>
                    <th>Email</th>
                    <th>Username</th>
                    <th>Role</th>
                    <th>status</th>
                    <th>Action</th>
                </tr>
            </thead>
            
            <tbody>
                <%
                try {
                    ConnectDB db = new ConnectDB();
                    db.dbConnection();
                    ResultSet rs = db.getAllStudents();
                    while (rs.next()) {
                %>
                <tr>
                   
                   <td><%=rs.getInt("ID") %></td>
                   
                    <td><%= rs.getString("Names") %></td>
                    <td><%= rs.getString("Email") %></td>
                    <td><%= rs.getString("Username") %></td>
                    <td><%= rs.getString("Role") %></td>
                    <td><%= rs.getString("status") %></td>
                    <td>
                        <a href="edit.jsp?id=<%= rs.getString("ID") %>">Edit</a>
                        <a href="delstudents.jsp?id=<%= rs.getString("ID") %>">Delete</a>
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
    
    <footer class="bg-secondary text-white mt-4 py-3">
        <div class="container text-center">
            <p>&copy; 2023 Ines Library System. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
