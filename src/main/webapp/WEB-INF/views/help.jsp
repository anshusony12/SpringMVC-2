<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Help Page</title>
</head>
<body>
	<h1>This is help page. </h1>
	<%
// 		String name= (String) request.getAttribute("name");
// 		Integer id = (Integer) request.getAttribute("id");
// 		LocalDateTime time = (LocalDateTime) request.getAttribute("time");
		
	%>
	<h1>My name is 
<%-- 	<%= name %> --%>
	${name}
	</h1>
	<h1>id is 
<%-- 	<%= id %> --%>
	${id }
	</h1>
	<h1>updated time is 
<%-- 	<%= time %> --%>
		${t}
	</h1>
	
		<c:forEach var="item" items="${mark}">
<%-- 			<h2>${item }</h2> --%>
			<h2><c:out value="${item }"></c:out></h2>
		</c:forEach>

	
</body>
</html>