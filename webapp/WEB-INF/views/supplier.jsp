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
<form action="newSupplier" method="post" enctype="multipart/form-data">
<div class="form-group">
    <label for="supname">Supplier Name</label>
    <input type="text" class="form-control" id="supname" name="supplierName" placeholder="Aman">
  </div>
<div class="form-group">
    <label for="supphone">Supplier Phone</label>
    <input type="text" class="form-control" id="supphone" name="supplierPhone" placeholder="+91-9994186745">
  </div>
<div class="form-group">
    <label for="supaddress">Supplier Address</label>
    <input type="text" class="form-control" id="supaddress" name="supplierAddress" placeholder=".....">
  </div>
  
   <div class="form-group">
    <label for="supzip">ZIP</label>
    <input type="text" class="form-control" id="supezip" name="supplierZIP" placeholder="641097">
  </div>
  

  <div class="form-group">
    <label for="supemail">Email address</label>
    <input type="email" class="form-control" id="supemail" name="supplierEmail" placeholder="aman_raj@xyz.com">
  </div>
  
 

  
  <button type="submit" class="btn btn-default">Add</button>
</form>

</body>
</html>