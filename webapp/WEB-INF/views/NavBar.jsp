<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Aclonica" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<title>Insert title here</title>
<style type="text/css">
.navbar-header
{
font-family: Aclonica;
	font-size: 24px;
	font-style: normal;
	font-variant: normal;
	font-weight: 500;
	line-height: 26.4px;
	}

 .glyphicon glyphicon-shopping-cart
 {
 font-size: 46px;
 }  

</style>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <input type="image" src=" resources/logo.png" height="72" width="99">
     <a class="navbar-brand" href="Home"><font face="Aclonica" size="2"> Shoppemart</font></a>
    </div>
    <ul class="nav navbar-nav">
     <li class="active"><a href="Home"><font face="Aclonica" size="2"> Home</font></a></li>
      <li><a href="store"><font face="Aclonica" size="2"> Store</font></a></li>
      <li><a href="about"><font face="Aclonica" size="2"> About Us</font></a></li>
     
      
      </ul>
      <form class="navbar-form navbar-left">
      <div class="form-group">
       <!--  <input type="text" class="form-control" placeholder="Search"> -->
       <!--   <button> <span class="glyphicon glyphicon-search"></span></button> -->
        
        </form>
      </div>
      <br>
     
      
  		
	<c:if test="${isAdminLoggedIn == 'true' }">	
<li class="dropdown">
  <a href ="#" class="dropbtn">Product</a>
  <ul class="dropdown-content">
    <li><a href="prodview">View</a></li>
    <li><a href="prodadd">Add</a></li>
</ul>
<li class="dropdown">
  <a href ="#" class="dropbtn">Category</a>
  <ul class="dropdown-content">
    <li><a href="catview">View</a></li>
    <li><a href="catadd">Add</a></li>
    </ul>		    		

 <li class="dropdown">
  <a href ="#" class="dropbtn">Supplier</a>
  <ul class="dropdown-content">
    <li><a href="supview">View</a></li>
    <li><a href="supadd">Add</a></li>
   </ul> 	
   </li>
   </li>
   </li>
   
   
   
   	
    	
	</c:if>			
			
     <p class="text-right">
     <c:if test="${isUserLoggedIn == 'true' }">	
     <a href="mycart"><span class="glyphicon glyphicon-shopping-cart btn-lg"></span></a>;
     </c:if>
     <c:if test="${pageContext.request.userPrincipal.name == null }">
   <a href="SignUp" class="btn btn-primary ">Sign Up</a>
   <a href="SignIn" class="btn btn-success">Sign in</a>
   </c:if>
   <c:if test="${pageContext.request.userPrincipal.name != null }">
   <a href="SignOut" class="btn btn-success">Sign Out</a>
   </c:if>
   
   
   
    
    
    
   </p>
      
   
</nav>

 <c:if test="${isUserClickedSignIn == 'true' }">
 <%@ include file="signin.jsp" %>
 </c:if>
</body>
</html>