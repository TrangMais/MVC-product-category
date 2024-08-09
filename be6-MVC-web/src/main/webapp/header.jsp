<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<!-- Fifth requirement: How to use repeatedly the code above for every page -->
	<%--=
	<% if (session.getAttribute("loggedInUser") != null) {%>
	<p>HELLO ${sessionScope.loggedInUser.username},</p>
	<a href="logout.jsp">LOGOUT</a>
	<%} else {%>
	<a href="login.jsp">LOGIN</a>
	<%}%>
	--%>
	
	<!-- Improved code without IF OR ELSE from java code. So that JSP - Standard Tag Library have c:if -->
	<c:if test="${not empty sessionScope.loggedInUser}">
		<p>HELLO ${sessionScope.loggedInUser.username},</p>
		<a href="logoutAction.jsp"> Logout</a>
	</c:if>
	<c:if test="${empty sessionScope.loggedInUser}">
		<a href="login.jsp"> Login</a>
	</c:if>	
	
</body>
</html>