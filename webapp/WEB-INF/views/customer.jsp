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
</head>
<body>
<form action="newCustomer" method="post">
<div class="form-group">
    <label for="custname">Customer Name</label>
    <input type="text"  id="custame" name ="customerName" placeholder="Aman" size="40">
  </div>
<div class="form-group">
    <label for="custphone">Customer  Phone</label>
    <input type="text"  id="custphone" name ="customerPhone" placeholder="+91-9994186745" size="40">
  </div>
<div class="form-group">
    <label for="custaddress">Customer Address</label>
    <input type="text" id="custaddress" name ="customerAddress" placeholder="Bangkok Street" size="38">
  </div>
  
   <div class="form-group">
    <label for="custzip">ZIP Code</label>
    <input type="text" id="custzip" name ="customerZIP" placeholder="641097" size="48">
  </div>
  

  <div class="form-group">
    <label for="supemail">E-mail address</label>
    <input type="email"  id="custemail" name ="customerEmail" placeholder="aman_raj@xyz.com" size="42">
  </div>
  
  <div class="form-group">
    <label for="supemail">Password</label>
    <input type="password"  id="custpass" name ="customerPass" placeholder="******" size="47"> 
  </div>
  

  
  <button type="submit" class="btn btn-default">Submit</button>
</form>

</body>
</html>