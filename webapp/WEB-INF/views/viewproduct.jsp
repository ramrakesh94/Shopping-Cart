<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>    
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
    background-color: #663399;
    color: white;
}
}
}
</style>
</head>
<body>
<table>
<tr>

<th>S.No</th>
<th>Product ID</th>
<th>Product Name</th>
<th>Product Category</th>
<th>Product Description</th>
<th>Product Price</th>
<th>Product Stock</th>
<th>Name of Supplier</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<c:forEach items="${listofprod}" var="prod" varStatus="status">

<tr>
<td>${status.count}</td>
<td>${prod.productId}</td>
<td>${prod. productName}</td>
<td>${prod.categoryName}</td>
<td>${prod.productDesc}</td>
<td>${prod.productPrice}</td>
<td>${prod.productStock}</td>
<td>${prod.supplierName}</td>
<td><a href="editProduct?productId=${prod.productId}">edit</a></td>
<td><a href="deleteProduct?productId=${prod.productId}">delete</a></td>
</tr>
</c:forEach>


</table>
</body>
</html>


