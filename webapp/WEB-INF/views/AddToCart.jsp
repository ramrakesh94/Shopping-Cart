<!DOCTYPE html>
<html>
<head>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Aclonica" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>


table {
    border: 1px solid #ddd;
    border-collapse: collapse;
    width: 100%;
}

th, td {
border: 1px solid #ddd;
    text-align: left;
    padding: 15px;
    
}

tr:nth-child(even){background-color: #f2f2f2}
tr:nth-child(odd){background-color: #f2f2f2}

th {
    background-color: #483D8B;
    color: white;
}
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

<center><h2><font face="Aclonica" size="4">My Cart</h2></center>

<table>

  <tr>
    <th>S.No</th>
    <th>Cart Id</th>
    <th>Customer Email</th>
     <th>Product</th>
    <th>Product Name</th>
    <th>Price</th>
    <th>Total Price</th>
    <th>Quantity</th>
    <th>Status</th>
    
    <th>Days</th>
    <th>Time</th>
    <th>Remove</th>
    
  </tr>
  <c:forEach items="${cartList}" var="cart" varStatus="status">
  <tr>
    <td>${status.count}</td>
					<td>${cart.cartId}</td>
					<td>${cart.customerEmail}</td>
					<td><img src="<c:url value="/resources/images/productImages/${cart.productId}.jpg"/>" alt="${product.productId}" width="40" height="40"></td>
					<td>${cart.productName}</td>
					<td>&#8377;${cart.productPrice}</td>
					<td>${cart.cartTotalprice}</td>
					<td>${cart.cartQuantity}</td>
					<td>${cart.cartStatus}</td>
					<td>${cart.carttDays}</td>
					<td>${cart.cartTime}</td>
					<td><a href="removeCart?cartId=${cart.cartId}">Remove</a></td>
  </tr>
  </c:forEach>
  <tr>
  <div align="right">
  <colspan="11">Grand Total : ${GrandTotal}
  </tr>
  </div>
</tr>
</table>
<p>
		<a href="proceed"><button align="right"
				class="btn btn-primary">Proceed</button>
		<a href ="Home"class="btn btn-primary pull-right"">Continue Shopping</a>
				
	</p>



</body>
</html>
