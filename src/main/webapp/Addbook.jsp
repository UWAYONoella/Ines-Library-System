<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h2>Add New Book</h2>
    <form method="post" action="Bookservlet">
        <label for="date">Date:</label>
        <input type="text" id="date" name="date" required><br><br>

        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>
        <label for="author">Author:</label>
        <input type="text" id="author" name="author" required><br><br>

        <label for="type">Type:</label>
        <input type="text" id="type" name="type" required><br><br>

        <input type="submit" value="Add Book">
    </form>
</body>
</html>