<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="./Style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Ines Library System</title>

<style>
body {
    background-color: gray;
    display: flex;
    flex-direction: column;
    min-height: 100vh;
    margin: 0;
}

.navbar {

    background-color: #343a40;
}

.navbar-brand img {
    width: 40px;
}

.nav-link {
    color: white !important;
}

.main {
    display: flex;
    flex: 1;
    margin-top: 20px;
}

.left {
    background-color: rgb(36, 31, 49);
    height: 500px;
    width: 250px;
    padding: 10px;
    margin-left: -90px; 
}

.mainlink a {
    border-radius: 5px;
    color: white;
    text-decoration: none;
    display: flex;
    flex-direction: column;
    gap: 20px;
    margin-bottom: 15px;
}

.mainlink a:hover {
     color: rgb(255, 163, 72);
}
.right {
        flex: 1;
     display: flex;
    flex-direction: column;
    margin-left: 15px; 
    padding: 20px;
    background-color: #f8f9fa; 
    border-radius: 5px;
    /* box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3); */
}

.footer {
position:fixed;
    width: 100%;
}

.footer p {
    margin: 0;
} 
 


</style>


</head>
<body style="background-color:gray;">
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
 <div class="container mt-5">
<div class="main">
<div class="left">
<div class="mainlink"><a href="Profile.jsp">My profile</a></div>
<div class="mainlink"><a href="Booklist.jsp">Books</a></div>
<div class="mainlink"><a href="processLending.jsp">Books issued</a></div>
<div class="mainlink"><a href="Students.jsp">Student registered</a></div>
<div class="mainlink"><a href="index.jsp">Logout</a></div>
</div>
<div class="right">
<h3>Welcome Librarian<hr></hr></h3>
</div></div>
</div>
 <footer class="bg-secondary text-white mt-4 py-3">
        <div class="container text-center">
            <p>&copy; 2023 Ines Library System. All rights reserved.</p>
        </div>
    </footer>
    
</body>
</html>


<!-- <img alt="library" src="https://www.londonlibrary.co.uk/images/CHARLOTTE/NEW_WEBSITE_IMAGES/LF_Wide_Back_Stacks.jpg">
 -->