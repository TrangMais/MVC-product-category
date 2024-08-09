<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!-- Fifth requirement: How to use repeatedly the code above for every page -->
			<%@include file='header.jsp'%>
	
	<h2>The list of product</h2>

	<ul>
		<li>Coffee - 5$ - <input type="button" value="Add"></li>
		<li>Box - 1$ - <input type="button" value="Add"></li>
	</ul>
</body>
</html>