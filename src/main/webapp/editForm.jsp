<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.Ines.ConnectDB" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Book</title>
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
        <input type="submit" value="Update">
    </form>
    <%
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
    %>
</body>
</html>
