<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link rel ="stylesheet" type ="text/css" href="./Sytle.css"> -->
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
<body style="overflow: hidden">
<nav class="navbar navbar-expand-sm bg-secondary navbar-dark">
    <div class="container">
      <div class="text-white text-center">
        <h1><a class="navbar-brand" href="#">
      <img src="https://amarebe.com/wp-content/uploads/2021/08/INES-Ruhengeri-logo-700x426-1-1280x720.png"alt="Ines" style="width:70px; height: 80px;" class="rounded-pill"> 
    </a>Welcome to Ines Library</h1>
      </div>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item">
          <a class="nav-link" href="#">Contact Us</a>
        </li>
      </ul>
    </div>
  </nav>
<div class="main" style="display:flex">
<div class="left" style="background-color:rgb(36, 31, 49);height: 80vh;width:500px;padding-left:2rem;">

<div class="mainlink"><a href="Lendbook.jsp">Brow Book</a></div>
<div class="mainlink"><a href="index.jsp">Logout</a></div>

</div>
<div class="right" style="height:80vh;width:600vh; padding-left: 20rem;overflow-y: scroll;">
<div class=" cord" style="width: 600px;">
            <h1 class="mb-0">Fill this form well if you want <br>to borrow Book</h1>
            <form action="borrowBook" method="post">
               
                    <label for="studentFaculty" class="form-label">Faculty:</label>
                    <input type="text" class="form-control" id="studentName" name="faculty" required>
   
                <label for="studentDepartment " class="form-label ">Department:</label>
                <input type="text " class="form-control " id="studentName " name="department" required>
        
  
                <label for="year " class="form-label ">Year:</label>
                <input type="text" class="form-control " id="studentName " name="year" required>
       
           
                <label for="studentName " class="form-label ">Student Name:</label>
                <input type="text " class="form-control " id="studentName " name="studentName" required>

                <label for="studentID " class="form-label ">Student ID:</label>
                <input type="text " class="form-control " id="studentID " name="studentID" required>
         
                <label for="bookName " class="form-label ">Book Name:</label>
                <input type="text " class="form-control " id="bookTitle " name="bookTitle" required>
            
                <label for="lendDate " class="form-label ">Lend Date:</label>
                <input type="text " class="form-control " id="lendDate " name="lendDate" required>
        
                <label for="dueDate " class="form-label ">Due Date:</label>
                <input type="text " class="form-control " id="dueDate " name="dueDate" required>
           
            <button type="submit " class="btn btn-primary " name="action " value="borrow">Borrow</button>
        </form>
    </div>
</div>
</div>
<footer class="bg-secondary text-white mt-0 py-3">
        <div class="container text-center">
            <p>&copy; 2023 Ines Library System. All rights reserved.</p>
        </div>
    </footer>
</body>
</html>


<!-- <img alt="library" src="https://www.londonlibrary.co.uk/images/CHARLOTTE/NEW_WEBSITE_IMAGES/LF_Wide_Back_Stacks.jpg">
 -->