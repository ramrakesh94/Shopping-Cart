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
<form action="newCategory" method="post" enctype="multipart/form-data">
<div class="form-group">
    <label for="CatName">Category Name</label>
    <input type="text" class="form-control" id="categoryName" name="categoryName" placeholder="Nike">
  </div>
  <div class="form-group">
    <label for="catDesc">Product Description</label>
    <input type="text" class="form-control" id="categoryDesc" name="categoryDesc" placeholder="Winter sales">
    
    <!-- <div class="form-group">
    <label for="fU">Choose file to upload </label>
    <input type="file" class="form-control" id="image" name="image">
  </div> -->
  
  <button type="submit" class="btn btn-default">Add</button>
  </div>
  </form>
</body>
</html>
