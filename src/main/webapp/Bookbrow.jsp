<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<body>
    <h2>Borrow Book</h2>
    <form action="borrow_book" method="post">
        <label for="bookId">Book Name:</label>
        <input type="text" id="bookId" name="bookname" required>
        <br>
        <label for="studentId">Student Reg No</label>
        <input type="text" id="studentId" name="studentId" required>
        <br>
        <input type="submit" value="Borrow Book">
    </form>

</body>
</html>