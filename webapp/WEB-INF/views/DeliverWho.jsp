<!DOCTYPE html>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Aclonica" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="//fonts.googleapis.com/css?family=Aclonica" />
<style> 
body {
    background-image: url("resources/Loginew.jpg");
    background-size: 1500px 1800px;
    } 

.container {
    width: 450px;
    height: 400px;    
    padding: 8px;
    border: 1px solid red;
    box-sizing: border-box;
    float: left;
	/* padding: 45px; */
	font-family: Aclonica;
	font-size: 24px;
	font-style: normal;
	font-variant: normal;
	font-weight: 500;
	line-height: 40.4px;
    background-color: #6495ED;
    margin: 3px 3px 3px 3px;
    margin-left: 1cm
    
    
    
  
}
.head
{
background-color: #ffffff;
color:#000080;

}

.parts
{
background-color: #ADD8E6;

}

.parts:hover
{
background-color: #E0FFFF;
}


</style>
</head>
<body>

<a href="NewDelivery" class="btn btn-primary pull-right"><span
		class="glyphicon glyphicon-hand-right"></span> New Address</a>
		<br>
		<br>
		<br>
		<c:forEach items="${shippingList}" var="shipping">
<div class="container">
<a href="deleteShipping?shipId= ${shipping.shipId}" class="btn btn-secondary pull-left">
					<span class="glyphicon glyphicon-trash"></span></a>
				
				<a href="editShipping?shipId= ${shipping.shipId}" class="btn btn-secondary pull-left">
					<span class="glyphicon glyphicon-pencil "></span></a>
					
				
                
                <br>
<div class="head"><center>Delivery Address<center></div>
<div class="parts">
<h3>Name: ${shipping.customerName}</h3>
<h3>Mobile: ${shipping.customerPhone}</h3>
<h3>Address: ${shipping.customerAddress}</h3>
<h3>ZIP: ${shipping.customerZIP}</h3>

</div>
<center><a href="deliverWho?shippingId=${shipping.shipId}" class="btn btn-warning btn-lg">
								<span class="glyphicon glyphicon-hand-down"></span> Deliver Here
							</a></center>

</div>
</c:forEach>
</body>
</html>
