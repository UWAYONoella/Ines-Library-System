<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel ="stylesheet" type ="text/css" href="./Sytle.css">
<title>Login</title>
</head>
<body>
<form action="log" method="post">


<table>
	<tr>
		<td> username</td> <td><input type="text" name="username"></td>
	</tr>
	
	<tr>
		<td>Password</td> <td><input type="password" name="password"></td>
	</tr>
	
</table>
<div class" btn">
<button type="submit">Register</button><br><br>
<p>Don't you have account?<a href="Home.jsp">Create account</a>
</div>

</form>

</body>
</html>