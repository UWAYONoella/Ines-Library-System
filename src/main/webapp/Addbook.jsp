<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    
      <footer class="bg-secondary text-white mt-4 py-3">
        <div class="container text-center">
            <p>&copy; 2023 Ines Library System. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>