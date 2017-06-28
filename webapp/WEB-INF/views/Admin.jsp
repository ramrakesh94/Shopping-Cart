
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/engine1/style.css" />
  <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Aclonica" />
<script type="text/javascript" src="resources/engine1/jquery.js"></script>
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Shopping</title>

<style type="text/css">

body {
      background-image: url("resources/book0.jpg");  
    /* background-color: #cccccc; */
}
.dropbtn { 
    background-color: ##000000;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 100;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}
/*
.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}*/
.h2
{


font-family: Aclonica;
	font-size: 24px;
	font-style: normal;
	font-variant: normal;
	font-weight: 500;
	line-height: 26.4px;

}
</style>
</head>
<body>

<%@ include file="NavBar.jsp" %>
<c:choose>
<c:when test="${isCatClicked == 'true' }">
 <%@ include file="category.jsp" %>


</c:when>
 <c:when test="${isSupClicked == 'true' }">
 <%@ include file="supplier.jsp" %>


</c:when>
 <c:when test="${isProdClicked == 'true' }">
 <%@ include file="product.jsp" %>


</c:when>
 <c:when test="${isProdView == 'true' }">
 <%@ include file="viewproduct.jsp" %>


</c:when>

<c:when test="${isCatView == 'true' }">
 <%@ include file="viewcategory.jsp" %>


</c:when>
<c:when test="${isAdminClickedEditCat == 'true' }">
 <%@ include file="Editcategory.jsp" %>
</c:when>
<c:when test="${isAdminClickedEditProd == 'true'}">
<%@ include file="EditProduct.jsp" %>
</c:when>

<c:when test="${isAdminClickedEditSupp == 'true'}">
<%@ include file="EditSupplier.jsp" %>
</c:when>

<c:when test="${isSupView == 'true' }">
 <%@ include file="viewsupplier.jsp" %>


</c:when>
<c:otherwise>
<h2><font face="Aclonica" size="7">Welcome Admin :)</h2>
</c:otherwise>
</c:choose>
</body>
</html>
</body>
</html>