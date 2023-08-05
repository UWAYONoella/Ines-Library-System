<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.Ines.ConnectDB" %>
<!DOCTYPE html>
<html>
<head>
    <title>Book List</title>
</head>
<body>	
<div class="container">

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
</body>
</html>
