<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<!-- Latest compiled and minified CSS -->
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
    background-image: url("resources/bookshelf.jpg"); 
    background-size: 1000px 1200px; 
    
   
}
</style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="Home"><font face="Aclonica" size="2"> Shoppemart</font></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="Home"><font face="Aclonica" size="2"> Home</font></a></li>
      <li><a href="Home"><font face="Aclonica" size="2"> Store</font></a></li>
      <li><a href="about"><font face="Aclonica" size="2"> About Us</font></a></li>
     
			
      
    </ul>
   <p class="text-right">
   <a href="SignIn" class="btn btn-success">Sign in</a>s
    
    <a href="SignUp" class="btn btn-primary ">Sign Up</a>
    
   </p>
    
  </div>
</nav>

<div class="container">
  <!-- h2</h2>
  <p>Welcome to Shoppe Mart !</p> -->
</div>
<c:if test="${isUserClickedStore == 'true' }">
 <%@ include file="store.jsp" %>
 </c:if>
 
 <c:if test="${isUserClickedAboutUs == 'true' }">
 <%@ include file="Aboutus.jsp" %>
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