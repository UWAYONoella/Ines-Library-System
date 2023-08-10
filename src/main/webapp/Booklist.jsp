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



<style>
body {
    background-image: url("https://scontent-mba1-1.xx.fbcdn.net/v/t31.18172-8/15129072_725477447602823_1478575613298859508_o.jpg?_nc_cat=104&cb=99be929b-3346023f&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeGS4zO5iRWLYEKmv2YaQC__g9XcYeEMx16D1dxh4QzHXvStRzd0gbNqsgc0pKWbojnqBn4y25lZF4oRv0karXFZ&_nc_ohc=ZjdpnaMKWSgAX-E-cFP&_nc_ht=scontent-mba1-1.xx&oh=00_AfB-vtKmqpqbgWHj3mV-hKGVFjezQMXqeOIH7h1jdFe76Q&oe=64F767B4"); /* Replace with your image URL */
    background-size: cover; 
    background-repeat: no-repeat; 
    display: flex;
    flex-direction: column;
    min-height: 100vh;
    margin: 0;
}
.cont{
border: 2px solid white;
height:40px;
width:150px;
margin-left:20px;
margin-top:20px;
}
.cont a{
color:white;
text-decoration: none;
padding-top: 40px;
padding-left: 20px;
font-size:18px;
}
.cont a:hover{
color:red;
}

table{
border-radius: 5px;
	background-color: #f8f9fa; 
}
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
<div class="cont"> <a href="Addbook.jsp">Add new book</a><hr></div>
    <div class="container mt-5" style="height: 65vh;">
        <h1> List of Books </h1>
        
        <table class="table">
            <thead>
                <tr>
                
                  <th>ID</th>
                
                    <th>Book-Name</th>
                    <th>Book-Author</th>
                    <th>Book-Type</th>
                    <th>Date</th>
                    <th>Action</th>
                </tr>
            </thead>
            
            <tbody>
            <%
         try{
           ConnectDB db=new ConnectDB();
           db.dbConnection();
           ResultSet rs=db.getAllBook();
           while(rs.next()){
        	   %>
                <tr>
                   
                   <td><%=rs.getInt("ID") %></td>
                   
                    <td><%= rs.getString("BookName") %></td>
                    <td><%= rs.getString("BookAuthor") %></td>
                    <td><%= rs.getString("BookType") %></td>
                    <td><%= rs.getString("Date") %></td>
                    <td>
                    
        	   <a href="editForm.jsp?id=<%=rs.getInt("ID") %>"> Edit</a>
        	   
        	  <a href="delete.jsp?id=<%=rs.getInt("ID") %>"> Delete</a>
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
    <%-- <table border="1">
    
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
</div> --%>

<footer class="bg-secondary text-white mt-4 py-3">
        <div class="container text-center">
            <p>&copy; 2023 Ines Library System. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>
