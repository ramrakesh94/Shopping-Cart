<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<!-- Latest compiled and minified CSS -->
<!-- <link rel="stylesheet" href="css/style.css"> -->
 
<link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Philosopher" />
  <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="resources/engine1/style.css" />
<script type="text/javascript" src="resources/engine1/jquery.js"></script>
<script src="js/main.min.js"></script>
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<title>Insert title here</title>
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
</head>
<body>
<div class="container">
 
   <form class="well form-horizontal" action="deliverytofriend" method="post" onsubmit="return formShip()" >
  
<fieldset>

<!-- Form Name -->

<legend><font face="Aclonica" color="black" size="18"> Shipping</font></legend>


<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label"> Name</label>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <input  class="form-control" id="name" name="customerName" type="text">
    </div>
  </div>
</div>

<!-- Text input-->





<!-- Text input-->
       
<div class="form-group">
  <label class="col-md-4 control-label">Phone #</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
  <input placeholder="(845)555-1212" id="ph"  name="customerPhone" class="form-control" type="text">
    </div>
  </div>
</div>

<!-- Text input-->
      
<div class="form-group">
  <label class="col-md-4 control-label">Address</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
  <input placeholder="Address" class="form-control" id="address" name="customerAddress" type="text">
    </div>
  </div>
</div>


<div class="form-group">
  <label class="col-md-4 control-label">ZIP Code <img src="resources/logo.png"  align="left"></label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-tag"></i></span>
  <input placeholder="Zip Code" class="form-control" id="zip"  type="text" name="customerZIP">
    
    </div>
    
</div>
</div>
<div class="form-group">
                        <label class="col-md-4 control-label">Would You Prefer this Site to Others ?</label>
                        <div class="col-md-4">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="customerfeed" value="yes" /> Yes
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="customerfeed" value="no" /> No
                                </label>
                            </div>
                        </div>
                    </div>


<img src="resources/discount.jpg" width="200" height="200" align="right">
<center><button type="submit" class="btn btn-warning" >Continue<span class="glyphicon glyphicon-send"></span></button></center>
    
    </div>

 


                        </div>
                    </div>
   
<!-- Text area -->
  
  
  
    


<!-- Success message -->
<div class="alert alert-success" role="alert" id="success_message"><center> <i class="glyphicon glyphicon-thumbs-up"></i><center>We Deliver the Best Quality Books At the Cheapest Prices !</center></div>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4">
 <%-- <center><button type="submit" class="btn btn-warning" >Continue<span class="glyphicon glyphicon-send"></span></button></center> --%>
  </div>
</div>

</fieldset>
</form>
  </div><!-- /.container -->
  
</body>
</html>