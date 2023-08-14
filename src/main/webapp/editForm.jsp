<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.Ines.ConnectDB" %>
<!DOCTYPE html>
<html>
<head>
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
    height: 100vh; 
    overflow-y: auto;
  }
form{
padding-left:20px;
   font-size:20px;
   width:500px;
	background-color: skyblue;
   border-radius: 5px;
	
}

</style>

</head>
<body>
    <h2>Edit Book</h2>
    <%
    int bookId = Integer.parseInt(request.getParameter("id"));
    try {
        ConnectDB db = new ConnectDB();
        db.dbConnection();
        ResultSet rs = db.getBookById(bookId);
        if (rs.next()) {
            String bookName = rs.getString("BookName");
            String bookAuthor = rs.getString("BookAuthor");
            String bookType = rs.getString("BookType");
            String date = rs.getString("Date");
    %>
    <form action="updateBook.jsp" method="post">
        <input type="hidden" name="id" value="<%= bookId %>">
        <label for="bookName">Book Name:</label>
        <input type="text" id="bookName" name="bookName" value="<%= bookName %>"><br>
        <label for="bookAuthor">Book Author:</label>
        <input type="text" id="bookAuthor" name="bookAuthor" value="<%= bookAuthor %>"><br>
        <label for="bookType">Book Type:</label>
        <input type="text" id="bookType" name="bookType" value="<%= bookType %>"><br>
        <label for="date">Date:</label>
        <input type="text" id="date" name="date" value="<%= date %>"><br>
        <di class="btn" style="margin-top:20px;margin-left:150px;width:100px;background-color:green;border: 2px solid black;"><input type="submit" value="Update"></di>
    </form>
    <%
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    %>
</body>
</html>
