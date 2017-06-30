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


function formSup() {
	var supname = document.getElementById('supname');
	var suppphone = document.getElementById('supphone');
	var supaddress = document.getElementById('supaddress');
	var suppzip = document.getElementById('supezip');
	var supnemail = document.getElementById('supemail');
	
	if (notEmpty(supname, " Category Name Should not be empty")) 
	{
		
		if (isAlphabet(supname, "Please enter only letters for Supplier Name "))
			{
			if (isNumeric(suppphone, "Pnone # Should  be numeric")) 
			{
				if (isAlphanumeric(supaddress, "Please enter alpha-numeric characters for Address"))
				{
					if (notEmpty(suppzip,
					"Zipcode Should not be empty")) 
					{
						if (isNumeric(
								suppzip,
								"Please enter a valid zip code"))
				{
				if (emailValidator(supnemail, "Please enter valid e-mail"))
					{
			return true ;
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
<form action="afterEditSupplier" method="post">
<div class="form-group">
    <label for="supplierId">Supplier Id</label>
    <input type="text" class="form-control" id="supplierId" name="supplierId" value="${supplier.supplierId}" readonly="true">">
  </div>
<div class="form-group">
    <label for="supname">Supplier Name</label>
    <input type="text" class="form-control" id="supname" name="supplierName" value="${supplier.supplierName}"> 
  </div>
<div class="form-group">
    <label for="supphone">Supplier Phone</label>
    <input type="text" class="form-control" id="supphone" name="supplierPhone" value="${supplier.supplierPhone}"> 
  </div>
<div class="form-group">
    <label for="supaddress">Supplier Address</label>
    <input type="text" class="form-control" id="supaddress" name="supplierAddress" value="${supplier.supplierAddress}"> 
  </div>
  
   <div class="form-group">
    <label for="supzip">ZIP</label>
    <input type="text" class="form-control" id="supezip" name="supplierZIP" value="${supplier.supplierZIP}"> 
  </div>
  

  <div class="form-group">
    <label for="supemail">Email address</label>
    <input type="text" class="form-control" id="supemail" name="supplierEmail" value="${supplier.supplierEmail}"> 
  </div>

  
  <button type="submit" class="btn btn-default">Add</button>
</form>

</body>
</html>