<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <h1>Comment ${productId}</h1>
    <form action="product" method="post">
        <textarea name="comment" rows="4" cols="100"></textarea><br>
        <input type="submit" value="Submit Feedback">
        
        <input type="hidden" name="username" value="${username}">
        <input type="hidden" name="productName" value="${productName}">
    </form>
</body>
</html>