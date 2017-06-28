<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="//fonts.googleapis.com/css?family=Aclonica" />

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {
	/*  box-sizing: border-box; */
	
}

.tab, .col-6 {
	width: 420px;
	height: 520px;
	padding: 17px;
	border: 2px solid red;
	background-color: #6495ED;
	margin: 1.5em;
	margin-left: 2em;
	float: left;
	padding: 0px 3px 0px 3px;
}

/* .row::after {
	content: "";
	clear: both;
	display: table;
}
 */
[class*="col-"] {
	float: left;
	padding: 6px;
	font-family: Aclonica;
	font-size: 24px;
	font-style: normal;
	font-variant: normal;
	font-weight: 500;
	line-height: 26.4px;
	
}

.col-1 {
	width: 8.33%;
}

.col-2 {
	width: 6.66%;
}

.col-3 {
	width: 100%;
}

.col-4 {
	width: 33.33%;
}

.col-5 {
	width: 41.66%;
}

.col-6 {
	width: 100%;
}
 
/* .col-7 {
	width: 58.33%;
}

.col-8 {
	width: 66.66%;
}

.col-9 {
	width: 75%;
}

.col-10 {
	width: 83.33%;
}

.col-11 {
	width: 91.66%;
}

.col-12 {
	width: 100%;
} */

html {
	font-family: Aclonica;
}

.header {
	font-family: Aclonica;
	width: 100%;
	font-size: 24px;
	font-style: normal;
	font-variant: normal;
	font-weight: 500;
	line-height: 26.4px;
	background-color: #FFFFF0;
	color: #000080;
	padding: 5px;
}

.menu ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

.menu li {
	padding: 18px;
	margin-bottom: 3px;
	background-color: #33b5e5;
	color: #ffffff;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
}

.menu li:hover {
	background-color: #0099cc;
}

.container {
	/* display: grid;
	grid-template-columns: 100px 100px 100px 100px;
	grid-gap: 20px; */
	background-color: #fff;
	font-family: Aclonica;
	width: 110%;
	font-size: 24px;
	font-style: normal;
	font-variant: normal;
	font-weight: 500;
	line-height: 26.4px;
	padding-top: 40px;
	position: relative;
	float: left;
	background-postion: 100% 100%;
	margin: 3px 3px 30px 3px;
}

.btn btn-warning {
	font-size: 20px
}
</style>
</head>
<body>
	<a href="NewDelivery" class="btn btn-primary pull-right"><span
		class="glyphicon glyphicon-hand-right"></span> New Address
		</button></a>
	<br>
	<br>
	<br>


	<c:forEach items="${shippingList}" var="shipping">
		<div class="container">

			<div class="tab col-lg-6">

				<button type="button" class="btn btn-secondary pull-right">
					<span class="glyphicon glyphicon-trash"></span>
				</button>
				<button type="button" class="btn btn-secondary pull-left">
					<span class="glyphicon glyphicon-pencil"></span>
				</button>
				<br> <br>

				<div class="header">

					<h1>
						<center>Delivery Address</center>
					</h1>
				</div>

				<div class="row">

					<div class="col-10 menu">
						<ul>

							<li>Name : <font face="Aclonica" style="color: black;">${shipping.customerName}
							</font></li>
							<li>Phone : <font face="Aclonica" style="color: black;">${shipping.customerPhone}
							</font></li>
							<li>Address : <font face="Aclonica" style="color: black;">${shipping.customerAddress}
							</font></li>
							<li>ZIP code: <font face="Aclonica" style="color: black;">${shipping.customerZIP}</font></li>
							<br>

							<button type="button" class="btn btn-primary">
								<span class="glyphicon glyphicon-hand-down"></span> Deliver Here
							</button>
						</ul>
					</div>
				</div>

			</div>

		</div>
	</c:forEach>




</body>
</html>
