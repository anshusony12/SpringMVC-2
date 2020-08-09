<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Success Page</title>
</head>
<body>
	<h1>${Header }</h1>
	<p>${Desc }</p>
	<hr>
	<h1 style="color: green;">${msg }</h1>

	<h1>Welcome, ${user.userName}</h1>
	<h1>Your email id is ${user.userEmail } </h1>
	<h1>your password is ${user.userPassword } try to secure your password </h1>
	
</body>
</html>