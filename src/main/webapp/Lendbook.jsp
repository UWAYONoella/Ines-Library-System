<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <title>Book Lending Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1 class="mb-4">Book Lending Form</h1>
        <form action="borrowBook" method="post">
        <div class="mb-3">
                <label for="studentFaculty" class="form-label">Faculty:</label>
                <input type="text" class="form-control" id="studentName" name="faculty"" required>
            </div>
            <div class="mb-3">
                <label for="studentDepartment" class="form-label">Department:</label>
                <input type="text" class="form-control" id="studentName" name="department" required>
            </div>
            <div class="mb-3">
                <label for="year" class="form-label">Year:</label>
                <input type="text" class="form-control" id="studentName" name="year" required>
            </div>
            <div class="mb-3">
                <label for="studentName" class="form-label">Student Name:</label>
                <input type="text" class="form-control" id="studentName" name="studentName" required>
            </div>
            
            <div class="mb-3">
                <label for="studentID" class="form-label">Student ID:</label>
                <input type="text" class="form-control" id="studentID" name="studentID" required>
            </div>
            
            <div class="mb-3">
                <label for="bookName" class="form-label">Book Name:</label>
                <input type="text" class="form-control" id="bookTitle" name="bookTitle" required>
            </div>
            <div class="mb-3">
                <label for="lendDate" class="form-label">Lend Date:</label>
                <input type="text" class="form-control" id="dueDate" name="dueDate" required>
            </div>
            
            <div class="mb-3">
                <label for="dueDate" class="form-label">Due Date:</label>
                <input type="text" class="form-control" id="dueDate" name="dueDate" required>
            </div>
            <button type="submit" class="btn btn-primary" name="action" value="borrow">Borrow</button>
            <button type="submit" class="btn btn-secondary" name="action" value="return"><a href="processLending.jsp">book You borrow</a></button>
        </form>
    </div>
</body>
</html>
