<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel ="stylesheet" type ="text/css" href="./Sytle.css">
<title>Registration Form</title>
</head>
<body>
<h1 style="text-align:center;">Please fill this form well to register</h1>
<form action="create" method="post">


<table>
	<tr>
		<td >Full Names</td> <td><input type="text" name="fname"></td>
	</tr>
	<tr>
		<td>Email</td> <td><input type="email" name="email"></td>
	</tr>
	<tr>
		<td> username</td> <td><input type="text" name="username"></td>
	</tr>
	
	<tr>
		<td>Password</td> <td><input type="password" name="password"></td>
	</tr>
	
</table>
<div class" btn">
<button type="submit">Register</button><br><br>
<p>Arleady have account?<a href="Login.jsp">Login here</a>
</div>

</form>


</body>
</html>