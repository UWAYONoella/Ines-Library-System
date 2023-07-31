<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel ="stylesheet" type ="text/css" href="./Sytle.css">
<title>Ines Library System</title>
</head>
<body>
<form action="log" method="post" style="background-color: skyblue;margin-top: 10%;">
<table>
	<tr>
		<td> username</td> <td><input type="text" name="username"></td>
	</tr>
	
	<tr>
		<td>Password</td> <td><input type="password" name="password"></td>
	</tr>
	
</table>
<div class" btn">
<button type="submit">Login</button><br><br>
<p>Don't you have account?<a href="Home.jsp">Create account</a>
</div>

</form>
</body>
</html>