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
    background-color: #87CEFA;
    color: white;
}
}
</style>
</head>
<body>
<table>
<tr>

<th>S.No</th>
<th>Supplier ID</th>
<th>Supplier Name</th>
<th>Supplier Address</th>
<th>Supplier ZIP</th>
<th>Supplier Phone No</th>
<th>Supplier Email</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<c:forEach items="${listofSup}" var="sup" varStatus="status">

<tr>
<td>${status.count}</td>
<td>${sup.supplierId}</td>
<td>${sup.supplierName}</td>
<td>${sup.supplierAddress}</td>
<td>${sup.supplierZIP}</td>
<td>${sup.supplierPhone}</td>
<td>${sup.supplierEmail}</td>
<td><a href="editSupplier?supplierId=${sup.supplierId}">edit</a></td>
<td><a href="deleteSupplier?supplierId=${sup.supplierId}">delete</a></td>

</tr>
</c:forEach>

</table>
</body>
</html>


