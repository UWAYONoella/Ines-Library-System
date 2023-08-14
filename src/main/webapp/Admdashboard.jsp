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
    background-image: url("https://scontent-mba1-1.xx.fbcdn.net/v/t31.18172-8/15129072_725477447602823_1478575613298859508_o.jpg?_nc_cat=104&cb=99be929b-3346023f&ccb=1-7&_nc_sid=e3f864&_nc_eui2=AeGS4zO5iRWLYEKmv2YaQC__g9XcYeEMx16D1dxh4QzHXvStRzd0gbNqsgc0pKWbojnqBn4y25lZF4oRv0karXFZ&_nc_ohc=ZjdpnaMKWSgAX-E-cFP&_nc_ht=scontent-mba1-1.xx&oh=00_AfB-vtKmqpqbgWHj3mV-hKGVFjezQMXqeOIH7h1jdFe76Q&oe=64F767B4"); /* Replace with your image URL */
    background-size: cover; 
    background-repeat: no-repeat; 
    display: flex;
    flex-direction: column;
    min-height: 100vh;
    margin: 0;
}

.navbar {

    background-color:rgba(0, 0, 0, 0.5); ;
}

.navbar-brand img {
    width: 40px;
}

.nav-link {
    color: white !important;
}

nav a:hover {
     color: rgb(255, 163, 72);
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
}

</style>


</head>
<body>
<nav class="navbar navbar-expand-sm bg-secondary">
    <div class="container">
      <div class="text-white text-center">
        <h1><a class="navbar-brand" href="#">
      <img src="https://amarebe.com/wp-content/uploads/2021/08/INES-Ruhengeri-logo-700x426-1-1280x720.png"alt="Ines" style="width:70px; height: 80px;" class="rounded-pill"> 
    </a>Welcome to Ines Library</h1>
      </div>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="index.jsp"><i class="fa fa-home"style=" font-size:30px; color:rgb(36, 31, 49); font-weight:bolder;padding-left:50px; "></i>Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="Home.jsp"><i class="fa fa-address-book"  style=" font-size:30px; color:rgb(36, 31, 49); font-weight:bolder;padding-left:50px; aria-hidden="true"></i>
          Signup</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="Login.jsp"> <i class="fa fa-sign-in" style=" font-size:30px; color:rgb(36, 31, 49); font-weight:bolder;padding-left:50px; aria-hidden="true"></i>
          Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><i class="fa fa-phone-square" style=" font-size:30px; color:rgb(36, 31, 49); font-weight:bolder;padding-left:50px; aria-hidden="true"></i>
          Contact Us</a>
        </li>
      </ul>
    </div>
  </nav>
 <div class="container ">
<div class="main">
<div class="left">
<div class="mainlink"><a href="Booklist.jsp"><i class="fa fa-book"style=" font-size:70px; color:white; font-weight:bolder;padding-left:0px;" aria-hidden="true"  ></i>
Books</a></div>
<div class="mainlink"><a href="processLending.jsp"><i class="fa fa-leanpub"  style=" font-size:60px; color:white; font-weight:bolder;padding-left:0px;"aria-hidden="true"></i>Books borrowed</a></div>
<div class="mainlink"><a href="Students.jsp"><i class="fa fa-user-circle-o" style=" font-size:60px; color:white; font-weight:bolder;padding-left:0px;"aria-hidden="true"></i>&nbsp &nbspStudent registered</a></div>
<div class="mainlink"><a href="index.jsp"><i class="fa fa-sign-out"style=" font-size:70px; color:white; font-weight:bolder;padding-left:0px;margin-button:-60px;" aria-hidden="true"></i>
Logout</a></div>
</div>
<div class="right">
<h3>Welcome Librarian<hr></hr></h3>

      <img src="https://amarebe.com/wp-content/uploads/2021/08/INES-Ruhengeri-logo-700x426-1-1280x720.png"alt="Ines" style="width:80px; height: 100px;" class="rounded-pill"> <h1 style="padding-left:100px;padding-bottom:70px; font-weight:bolder;font-style:italic; margin-top:-40px;">Help students to boost their Brains</h1>
     <img src=" https://friendspeaceteams.org/wp-content/uploads/2021/12/Books-Distributed-YoungWoman.jpg">
</div></div>
</div>
 <footer class="bg-secondary text-white mt-4 py-3">
        <div class="container text-center">
            <p>&copy; 2023 Ines Library System. All rights reserved.</p>
        </div>
    </footer>
    
</body>
</html>


