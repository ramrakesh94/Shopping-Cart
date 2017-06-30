<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Shopping</title>
<script>



function formRegister() {
	// Make quick references to our fields
	var name = document.getElementById('name');
	/* var username = document.getElementById('user'); */
	var password = document.getElementById('pass');
	var phone = document.getElementById('ph');
	var email = document.getElementById('email');
	var address = document.getElementById('address');
	var zipcode = document.getElementById('zip');
	// Check each input in the order that it appears in the form!
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
					
					if (notEmpty(email,
					"EmailId Should not be empty")) 
				 {
						if (emailValidator(email,
						"Enter a valid e-mail address"))
		{
							if (notEmpty(password,
									"password Should not be empty")) {
								if (isAlphanumeric(password,
										"Numbers and Letters Only for Passwords")) {
									
										
											
													
															return true;
														}
													
												}
											}
										}
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

function emailValidator(elem, helperMsg) {
	var emailExp = /^[\w\-\.\+]+\@[a-zA-Z0-9\.\-]+\.[a-zA-z0-9]{2,4}$/;
	if (elem.value.match(emailExp)) {
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
<form action="newCustomer" method="post" name="myForm" onsubmit="return formRegister()">
<div class="form-group">
    <label for="custname">Customer Name</label>
    <input type="text"  id="name" name ="customerName" placeholder="Aman" size="40">
  </div>
<div class="form-group">
    <label for="custphone">Customer  Phone</label>
    <input type="text"  id="ph" name ="customerPhone" placeholder="+91-9994186745" size="40">
  </div>
<div class="form-group">
    <label for="custaddress">Customer Address</label>
    <input type="text" id="address" name ="customerAddress" placeholder="Bangkok Street" size="38">
  </div>
  
   <div class="form-group">
    <label for="custzip">ZIP Code</label>
    <input type="text" id="zip" name ="customerZIP" placeholder="641097" size="48">
  </div>
  

  <div class="form-group">
    <label for="supemail">E-mail address</label>
    <input type="text"  id="email" name ="customerEmail" placeholder="aman_raj@xyz.com" size="42">
  </div>
  
  <div class="form-group">
    <label for="supemail">Password</label>
    <input type="password"  id="pass" name ="customerPass" placeholder="******" size="47"> 
  </div>
  

  
  <button type="submit" class="btn btn-default">Submit</button>
</form>

</body>
</html>