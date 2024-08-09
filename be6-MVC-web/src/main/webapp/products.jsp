<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- This is the way to have the same header/ content like in one page.
	It's the requirement when we log in with an account then the account's name with appear
	in the header of every page-->
<jsp:include page="index.jsp"/>
    <hr/>
    <h3>All Products</h3>
    
    <ul>
        <li><a href="Product?category=drink">Drink</a></li>
        <li><a href="Product?category=food">Food</a></li>
        <li><a href="Product?category=fruits">Fruits </a></li>
        <td><a href="product?action=id=${product.id}">More</a></td>
    </ul>

</body>
</html>