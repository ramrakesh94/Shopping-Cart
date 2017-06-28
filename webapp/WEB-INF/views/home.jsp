
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
    background-size: 1000px 1200px; 
    
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

.container
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
	<!-- Start Carousel -->
	
<div id="wowslider-container1">
<div class="ws_images"><ul>
		<li><img src="resources/data1/images/children.jpg" alt="Children" title="Children" id="wows1_0"/></li>
		<li><img src="resources/data1/images/comic.jpg" alt="Comic" title="Comic" id="wows1_1"/></li>
		<li><img src="resources/data1/images/magazines.jpg" alt="Magazines" title="Magazines" id="wows1_2"/></li>
		<li><img src="resources/data1/images/novels.jpg" alt="Novels" title="Novels" id="wows1_3"/></li>
		
		<li><img src="resources/data1/images/teenagers.jpg" alt="Teenagers" title="Teenagers" id="wows1_5"/></li>
	</ul></div>
	<div class="ws_bullets"><div> 
		<a href="#" title="Children"><span><img src="resources/data1/tooltips/children.jpg" alt="Children"/>1</span></a>
		<a href="#" title="Comic"><span><img src="resources/data1/tooltips/comic.jpg" alt="Comic"/>2</span></a>
		<a href="#" title="Magazines"><span><img src="resources/data1/tooltips/magazines.jpg" alt="Magazines"/>3</span></a>
		<a href="#" title="Novels"><span><img src="resources/data1/tooltips/novels.jpg" alt="Novels"/>4</span></a>
		<a href="#" title="School"><span><img src="resources/data1/tooltips/school.jpg" alt="School"/>5</span></a>
		<a href="#" title="Teenagers"><span><img src="resources/data1/tooltips/teenagers.jpg" alt="Teenagers"/>6</span></a>
	</div></div><div class="ws_script" style="position:absolute;left:-99%"></a> </div>
<div class="ws_shadow"></div>
</div>	
<script type="text/javascript" src="resources/engine1/wowslider.js"></script>
<script type="text/javascript" src="resources/engine1/script.js"></script>

	
<!-- <img src="resources\SHoPPeMart.gif" HEIGHT="200" WIDTH="1550" BORDER="0"> -->
<div class="container">
  <h2>
  
  
  <marquee direction="right">
  <img src="resources/Welcome.jpg" style="width:80px;height:80px;">
  
  <font face="Aclonica" color="black" size="18"> Books For Everyone</font>
  </marquee>
  </h2>
  <marquee direction="down">
  <marquee direction="right">
  <img src="resources/cart.jpg" style="width:80px;height:80px;">
  <font color="black" size="6">Welcome to Shoppemart </font>
  
  </marquee>
  </marquee>
</div>
<c:choose>
 <c:when test="${isUserClickedSignUp == 'true' }">
<%@ include file="customer.jsp" %>

</c:when>

<c:when test="${isUserClickedProdInfo == 'true' }">
<%@ include file="productDetails.jsp" %>
</c:when>

 
 <c:when test="${isUserClickedSignIn == 'true' }">
 <%@ include file="In.jsp" %>
 </c:when>
 
<%--  <c:when test="${myCartClicked == 'true' }">
 <%@ include file="AddToCart.jsp" %>
 
</c:when> --%>


<c:otherwise>
<%@ include file="grid.jsp" %>
</c:otherwise>
</c:choose>
<br>


</body>
</html>
</body>
</html>