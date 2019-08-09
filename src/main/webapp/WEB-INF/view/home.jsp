<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Page</title>
</head>
<body>
	<table border="1">
		<thead>
			<tr>
				<th>ID</th>
				<th>Product Name</th>
				<th>Brand</th>
				<th>Country</th>
				<th>Price</th>
				<th>Actions</th>
			</tr>
		</thead>
		<c:forEach var="temp" items="${product}">
			<tbody>
				<tr>
					<td>${temp.id}</td>
					<td>${temp.name}</td>
					<td>${temp.brand}</td>
					<td>${temp.country}</td>
					<td>${temp.price}</td>
					<td><a href="/deleteUser?id=${temp.id}">Delete/</a><a
						href="/updateUser?id=${temp.id}">Update</a></td>
				</tr>
			</tbody>
		</c:forEach>
	</table>
	<a href="/register">Add new product</a>
</body>
</html>