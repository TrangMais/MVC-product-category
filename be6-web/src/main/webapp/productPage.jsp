<%@page import="entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	User user = (User) session.getAttribute("loggedInUser");
	%>
	
	<h2>Hello, ${sessionScope.loggedInUser.username}!</h2>
	
	<h2>The list of product</h2>

	<ul>
		<li>Coffee - 5$ - <input type="button" value="Add"></li>
		<li>Box - 1$ - <input type="button" value="Add"></li>
	</ul>
</body>
</html>