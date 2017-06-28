<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Tangerine" />
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Aclonica" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Shopping</title>
<body>
<%@ include file="NavBar.jsp" %>

<c:choose>
<c:when test="${isUserClickedmyCart == true }">
<%@ include file="AddToCart.jsp" %>
</c:when>
 <c:when test="${isUserClickedProceed == true }">
<%@ include file="DeliverWho.jsp" %>
</c:when>
<c:when test="${isUserClickedNewDelivery == true }">
<%@ include file="viewShipping.jsp" %>
</c:when>
<c:otherwise>
<%@ include file="grid.jsp" %>
</c:otherwise>
</c:choose>


</body>
</html>
</body>
</html>