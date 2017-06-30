<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
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


function formProd() {
	var productName = document.getElementById('productName');
	var productDesc = document.getElementById('productDesc');
	var productPrice = document.getElementById('productPrice');
	
	var productstock = document.getElementById('productstock');
	
	if (notEmpty(productName, " Product Name Should not be empty")) 
	{
		
		if (isAlphabet(productName, "Please enter only letters for Product Name "))
			{
			
				if (isAlphanumeric(productDesc, "Please enter alpha-numeric characters for Description"))
				{
					if (notEmpty(productPrice,
					"Price Should not be empty")) 
					{
						if (isNumeric(
								productPrice,
								"Please enter a valid price"))
							{
							if (notEmpty(productstock,
							"Stock Should not be empty")) 
							{
								if (isNumeric(
										productstock,
										"Please enter a valid stock quantity"))
							
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
	
	


	

</script>
</head>
<body>
<form action="newProduct" method="post" enctype="multipart/form-data" onsubmit="return formProd()">
<div class="form-group">
    <label for="productName">Product Name</label>
    <input type="text" class="form-control" id="productName" name="productName" placeholder="Nike">
  </div>
  <div class="form-group">
    <label for="productDesc">Product Description</label>
    <input type="text" class="form-control" id="productDesc" name="productDesc" placeholder="Shoe">
  </div>
  
    <div class="form-group">
    <label for="productCat">Product Category </label>
    <select name="categoryName" class="form-control">
    <option>Select Category</option>
    <c:forEach items="${categoryList}" var="category">
    <option value="${category.categoryName}">${category.categoryName}</option>
    </c:forEach>
    </select>
  </div>
  
  <div class="form-group">
    <label for="productprice"> Product Price</label>
    <input type="text" class="form-control" id="productPrice" name="productPrice" placeholder="980">
  </div>
  <div class="form-group">
    <label for="productstock">Stock </label>
    <input type="text" class="form-control" id="productstock" name="productStock" placeholder="20">
  </div>
  
    <div class="form-group">
    <label for="productsup">Name of Supplier </label>
   <select name="supplierName" class="form-control">
    <option>Select Supplier</option>
    <c:forEach items="${supplierList}" var="supplier"> <!-- local variable -->
    <option value="${supplier.supplierName}">${supplier.supplierName}</option>
    </c:forEach>
    </select>
  </div>
 <div class="form-group">
    <label for="fU">Choose file to upload </label>
    <input type="file" class="form-control" id="image" name="image">
  </div>
  <button type="submit" class="btn btn-default">Add</button>
</form>

</body>
</html>
