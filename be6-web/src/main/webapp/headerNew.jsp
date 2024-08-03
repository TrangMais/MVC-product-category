<%@page import="entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${not empty sessionScope.loggedInUser}">
		Hello ${sessionScope.loggedInUser.getUsername()}, <a href="logoutAction.jsp"> Logout</a>
	</c:if>
	
	<c:if test="${empty sessionScope.loggedInUser}">
		<a href="login.jsp"> Login</a>
	</c:if>	
</body>
</html>