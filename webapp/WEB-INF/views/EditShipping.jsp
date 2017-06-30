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
<script>
	function formShip() {
	var name = document.getElementById('name');
	var phone = document.getElementById('ph');
	
	var address = document.getElementById('address');
	var zipcode = document.getElementById('zip');
	
	if (notEmpty(name, "Name Should not be empty")) 
	{
		if (isAlphabet(name, "Please enter only letters for name"))
			{
			if (notEmpty(phone,
			"PhoneNumber Should not be empty")) 
			
		{
			if (isNumeric(phone,
			"Please enter only number for PhoneNumber")) 
		{
				if (notEmpty(address,
				"Address Should not be empty"))
				{	
					if (isAlphanumeric(address,
					"Numbers and Letters Only for Address")) 
					{	
						
					if (notEmpty(zipcode,
					"Zipcode Should not be empty")) 
					{
				if (isNumeric(
						zipcode,
						"Please enter a valid zip code")) {
					
					
					
					
					return true;
				}
			
		}
					}
				}
				
		}
		}
			}
	}
return false;
}

function notEmpty(elem, helperMsg) {
if (elem.value.length == 0) {
alert(helperMsg);
elem.focus(); // set the focus to this input
return false;
}
return true;
}
function isNumeric(elem, helperMsg) {
var numericExpression = /^[0-9]+$/;
if (elem.value.match(numericExpression)) {
return true;
} else {
alert(helperMsg);
elem.focus();
return false;
}
}
function isAlphabet(elem, helperMsg) {
var alphaExp = /^[a-z A-Z]+$/;
if (elem.value.match(alphaExp)) {
return true;
} else {
alert(helperMsg);
elem.focus();
return false;
}
}
function isAlphanumeric(elem, helperMsg) {
var alphaExp = /^[0-9a-zA-Z\.\-]+$/;
if (elem.value.match(alphaExp)) {
return true;
} else {
alert(helperMsg);
elem.focus();
return false;
}
}

</script>	
	
	
	
	
	
<style> 
body {
    background-image: url("resources/Loginew.jpg");
    background-size: 1500px 1800px;
    } 

.container {
    width: 450px;
    height: 600px;    
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

/* .parts:hover
{
background-color: #E0FFFF;
} */


</style>
</head>
<body>

<a href="NewDelivery" class="btn btn-primary pull-right"><span
		class="glyphicon glyphicon-hand-right"></span> New Address</a>
		<br>
		<br>
		<br>
		
<div class="container">

				
                
                <br>
<div class="head"><center>Delivery Address<center></div>
<div class="parts">

<form action="afterEditShip" method="post" onsubmit="return formShip()">

<div class="form-group">
    <label for="shipName"></label>
    <input type="hidden" class="form-control" id="shipId" name="shipId" value="${ship.shipId}">
  </div>


<div class="form-group">
    <label for="shipName">Name</label>
    <input type="text" class="form-control" id="name" name="customerName" value="${ship.customerName}">
  </div>
  <div class="form-group">
    <label for="shipphone">Phone</label>
    <input type="text" class="form-control" id="ph" name="customerPhone" value="${ship.customerPhone}">
  </div>
  
    <div class="form-group">
    <label for="shipadd">Address</label>
    <input type="text" class="form-control" id="address" name="customerAddress" value="${ship.customerAddress}" >
  </div>
 
  
    <div class="form-group">
    <label for="shipZIP">ZIP</label>
    <input type="text" class="form-control" id="zip" name="customerZIP" value="${ship.customerZIP}">
  </div>

				<button>		<center>		<span class="glyphicon glyphicon-hand-down"></span> Done
							</a></center> </button>
</form>
</div>
</div>

</body>
</html>
