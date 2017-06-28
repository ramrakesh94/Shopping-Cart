
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
</head>
<style>

        .product_view .modal-dialog{max-width: 800px; width: 100%;}
        /* .pre-cost{text-decoration: line-through; color: #a5a5a5;} */
        .space-ten{padding: 10px 0;}
.modal-header
{

font-family:Philosopher;
		color:#444;
		letter-spacing:1px;

}
body {
    background-image: url("resources/Loginew.jpg");
    background-size: 1450px 1850px;
    } 



</style>
<body>



    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <!-- <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a> -->
                <h3 class="modal-title"><font face="Philosopher" size="3">${product.categoryName}</h3>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6 product_img">
                         <img src="<c:url value="/resources/images/productImages/${product.productId}.jpg"/>" alt="${product.productId}" width="290" height="250">
                    </div>
                    <div class="col-md-6 product_content">
                        <h4>Product Name: <span>${product.productName}</span></h4>
                        <!-- <div class="rating">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            (10 reviews)
                        </div> -->
                        <p><font style="color:red;" face="Philosopher" size="6">Product Description</font><p>
                       
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        <h3 class="cost"><span><font style="color:blue;" face="Philosopher" size="6">Price : &#8377;${product.productPrice}</font></span>
                        <br>
                        <font style="color:green;" face="Philosopher" size="5">Quantity : ${product.productStock}</font></span>
                        </h3>
                        <div class="row">
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <!-- <select class="form-control" name="select">
                                    <option value="" selected="">Color</option>
                                    <option value="black">Black</option>
                                    <option value="white">White</option>
                                    <option value="gold">Gold</option>
                                    <option value="rose gold">Rose Gold</option>
                                </select>
                            </div>
                            end col
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <select class="form-control" name="select">
                                    <option value="">Capacity</option>
                                    <option value="">16GB</option>
                                    <option value="">32GB</option>
                                    <option value="">64GB</option>
                                    <option value="">128GB</option>
                                </select> -->
                            </div>
                            <!-- end col -->
                            <div class="col-md-4 col-sm-12">
                               <!--  <select class="form-control" name="select">
                                    <option value="" selected="">QTY</option>
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option> -->
                                </select>
                            </div>
                            <!-- end col -->
                        </div>
                        <div class="space-ten"></div>
                        <div class="btn-ground">
                                    
                            <a href="addTocart?productId=${product.productId}" class="btn btn-primary"><span class="glyphicon glyphicon-shopping-cart"></span> Add To Cart</a>
                            <button type="button" class="btn btn-primary" onclick="goBack()"><span class="glyphicon glyphicon-hand-left"></span> Back</button>
                        </div>
                    </div>
                </div>
   <script>
function goBack() {
    window.history.back();
}
</script>      

</body>
</html>