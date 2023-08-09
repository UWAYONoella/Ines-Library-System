<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
</head>
<body>	

<nav class="navbar navbar-expand-sm bg-secondary navbar-dark">
    <div class="container">
      <div class="text-white text-center">
        <h1><a class="navbar-brand" href="#">
      <img src="https://amarebe.com/wp-content/uploads/2021/08/INES-Ruhengeri-logo-700x426-1-1280x720.png"alt="Ines" style="width:40px;" class="rounded-pill"> 
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


<div class="container" style="height: 77vh;">

    <h2>Book List</h2>
<div class="cont"> <a href="Addbook.jsp">Add new book</a><hr></div>
    <table border="1">
    
        <tr>
            <th>ID</th>
            
            <th>Book-Name</th>
            <th>Book-Author</th>
            <th>Book-Type</th>
            <th>Date</th>
            <th>Action</th>
           
            
        </tr>
         <%
         try{
           ConnectDB db=new ConnectDB();
           db.dbConnection();
           ResultSet rs=db.getAllBook();
           while(rs.next()){
        	   %>
        	   <tr>
        	   <td><%=rs.getInt("ID") %></td>
        	 
        	   <td><%=rs.getString("BookName") %></td>
        	   <td><%=rs.getString("BookAuthor") %></td>
        	   <td><%=rs.getString("BookType") %></td>
        	     <td><%=rs.getString("Date") %></td>
        	   <td>
        	   <a href="editForm.jsp?id=<%=rs.getInt("ID") %>"> Edit</a>
        	   
        	  <a href="delete.jsp?id=<%=rs.getInt("ID") %>"> Delete</a></td>
        	   
        	   </tr>
        	   <% 
        	   }
           
         }catch(Exception e){
        	 e.printStackTrace();
         }
        	   
         %> 
 
</table>
</div>

<footer class="bg-secondary text-white mt-4 py-3">
        <div class="container text-center">
            <p>&copy; 2023 Ines Library System. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
