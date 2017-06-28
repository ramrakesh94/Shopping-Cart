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
<form action="afterEditProduct" method="post">
<div class="form-group">
    <label for="productId">Product Id</label>
    <input type="text" class="form-control" id="productId" name="productId" value=" ${product.productId}" readonly="true">
  </div>

<div class="form-group">
    <label for="productName">Product Name</label>
    <input type="text" class="form-control" id="productName" name="productName" value=" ${product.productName}">
  </div>
  <div class="form-group">
    <label for="productDesc">Product Description</label>
    <input type="text" class="form-control" id="productDesc" name="productDesc" value="${product.productDesc}">
  </div>
  
    <div class="form-group">
    <label for="productCat">Product Category </label>
    <input type="text" class="form-control" id="productCat" name="categoryName" value="${product.categoryName}" >
  </div>
  
  <div class="form-group">
    <label for="productprice"> Product Price</label>
    <input type="text" class="form-control" id="productPrice" name="productPrice" value="${product.productPrice}">
  </div>
  <div class="form-group">
    <label for="productstock">Stock </label>
    <input type="text" class="form-control" id="productstock" name="productStock" value="${product.productStock}" >
  </div>
  
    <div class="form-group">
    <label for="productsup">Name of Supplier </label>
    <input type="text" class="form-control" id="productsupname" name="supplierName" value="${product.supplierName}">
  </div>

  <button type="submit" class="btn btn-default">Add</button>
</form>

</body>
</html>
