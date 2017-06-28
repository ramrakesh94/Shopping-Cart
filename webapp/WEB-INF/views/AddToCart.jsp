<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th, td {
	padding: 5px;
}

th {
	text-align: left;
}

#page {
	margin: 20px;
}
</style>
</head>
<body>
	<div id="page">
		<table style="width: 100%">
			<tr>
				<th align="left">S.No</th>
				<th align="left">Cart Id</th>
				<th align="left">Product Name</th>
				<th align="left">Price</th>
				<th align="left">Total Price</th>
				<th align="left">Quantity</th>
				<th align="left">Status</th>
				<th align="left">Days</th>
				<th align="left">Time</th>
				<th align="left">Remove</th>

			</tr>

			<c:forEach items="${cartList}" var="cart" varStatus="status">
				<tr>
					<td>${status.count}</td>
					<td>${cart.cartId}</td>
					<td>${cart.productName}</td>
					<td>${cart.productPrice}</td>
					<td>${cart.cartTotalprice}</td>
					<td>${cart.cartQuantity}</td>
					<td>${cart.cartStatus}</td>
					<td>${cart.carttDays}</td>
					<td>${cart.cartTime}</td>
					<td><a href="removeCart?cartId=${cart.cartId}">Remove</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="9.5">Grand Total :</td>
				
					<%-- ${GrandTotal  --%>
				</td>
				<td></td>
			</tr>

		</table>
	</div>
	<p>
		<a href="proceed"><button align="left"
				class="w3-button w3-#009933">Proceed</button></a>
	</p>
</body>
