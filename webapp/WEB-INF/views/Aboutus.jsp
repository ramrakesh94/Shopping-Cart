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
<style>
body {
    background-image: url("resources/aboutus.jpg"); 
    background-size: 1486px 900px; 
    
   
}
.well well-lg
{
font-family: Tangerine;
	font-size: 24px;
	font-style: normal;
	font-variant: normal;
	font-weight: 500;
	line-height: 26.4px;
}
</style>
</head>
<body>






<div class="container">
  <h1></h1>
</font>
  <div class="well well-lg"><font face="Tangerine" size="6"> We are a growing Indian-based company and we got our start by selling books 3 years ago from our garage. We love to read and discovered that we could share our hundreds of books with others by selling them online. Our goal is to give a second life to our books by getting them in the hands of readers across the globe. Since then, we've more than doubled our inventory each year, allowing us to expand to our warehouse in Coimbatore. Our inventory is currently well over enormous volume of books and we sell on 5 different online book categories with more being added regularly. We also have a second warehouse in Chennai.</font></div>
</div>
<c:if test="${isUserClickedStore == 'true' }">
 <%@ include file="store.jsp" %>
 </c:if>
 
 
<c:if test="${isUserClickedSignIn == 'true' }">
 <%@ include file="signin.jsp" %>
 </c:if>
 
 <c:if test="${isUserClickedSignUp == 'true' }">
 <%@ include file="customer.jsp" %>
 </c:if>
 


</body>
</html>
</body>
</html>