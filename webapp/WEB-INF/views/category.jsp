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
function formCat() {
var catname = document.getElementById('categoryName');
var proddesc = document.getElementById('categoryDesc');

if (notEmpty(catname, " Category Name Should not be empty")) 
{
	
	if (isAlphabet(catname, "Please enter only letters for Category Name "))
		{
		if (notEmpty(proddesc, "Description Should not be empty")) 
		{
			if (isAlphanumeric(proddesc, "Please enter alpha-numeric characters for Description"))
				{
		return true ;
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
	var alphaExp = /^[0-9a-zA-Z]+$/;
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
<form action="newCategory" method="post"  onsubmit="return formCat()">
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
