<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(odd){background-color: #f2f2f2}
tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #F4A460;
    color: white;
}
}
</style>
</head>
<body>
<table>
<tr>
<th>S.No</th>
<th>Category ID</th>
<th>Category Name</th>
<th>Category Description</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<c:forEach items="${asdf}" var="category" varStatus="status">

<tr>
<td>${status.count}</td>
<td>${category.categoryId}</td>
<td>${category.categoryName}</td>
<td>${category.categoryDesc}</td>
<td><a href="editCategory?categoryId=${category.categoryId}">edit</a></td>
<td><a href="deleteCategory?categoryId=${category.categoryId}">delete</a></td>
</tr>
</c:forEach>
</table>
</body>
</html>


