<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:forEach items="${listofprod}" var="prod">
<img  src="resources/images/productImages/${prod.productId}.jpg">
${prod. productName}
${prod.productPrice}
${prod.categoryName}
${prod.productDesc}
<!-- <a href="ProdInfo" class="btn btn-primary">More info</a> -->
</c:forEach>
</body>
</html>