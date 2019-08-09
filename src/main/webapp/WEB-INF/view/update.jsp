<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>
</head>
<body>
<form action="home">
ID:<input type="text" value="${product.id}"> \
<br>
Name: <input type="text" value="${product.name}"><br>
Brand: <input type="text" value="${product.brand}"><br>
Country : <input type="text" value="${product.country}"><br>
Price:<input type="text" value="${product.price}"><br>
<input type="submit" value="submit">
</form>
</body>
</html>