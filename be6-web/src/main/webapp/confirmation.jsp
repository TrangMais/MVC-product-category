<%@page import="util.ParamUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmation</title>
</head>
<body>

	<form action="confirmationAction.jsp" method="post">

<%
	String hbString = ParamUtil.convertArrayToString(request.getParameterValues("hobbies"));
	String languageString = ParamUtil.convertArrayToString(request.getParameterValues("languages"));

%>
	<h1>Confirmation before Submission</h1>
	<p><strong>Please review your information before submitting</strong></p>
	<p><strong>Username:</strong> ${param.username}</p>
	<input name="username" value = "${param.username}" hidden=true>
	<p><strong>Password:</strong> ${param.password}</p>
	<input name="password" value = "${param.password}" hidden=true>
	<p><strong>Gender:</strong> ${param.gender} </p>
	<input name="gender" value = "${param.gender}" hidden=true>
	<p><strong>Hobbies:</strong> <%= hbString %></p>
	<input name="hobbies" value = "<%= hbString %>" hidden=true>
	<p><strong>Languages:</strong> <%= languageString %></p>
	<input name="languages" value = "<%= languageString %>" hidden=true>
	<p><strong>City:</strong> ${param.city}</p>
	<input name="city" value = "${param.city}" hidden=true>
	
	
	<button>Confirm</button>
	</form>
</body>
</html>