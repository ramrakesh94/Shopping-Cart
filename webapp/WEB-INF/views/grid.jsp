<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="resources/engine1/style.css" />
<script type="text/javascript" src="resources/engine1/jquery.js"></script>
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<script>
function checkWindowSize() {
    if ( jQuery(window).width() >= 480 ) {
        $('.truncate').succinct({
            size: 100
        }); 
    }
    else if ( jQuery(window).width() >= 320 ) {
        $('.truncate').succinct({
            size: 55
        }); 
    } 
    else {
        $('.truncate').succinct({
            size: 150
        }); 
    }   
}

jQuery(document).ready(function(){
    jQuery(window).resize(checkWindowSize);
    checkWindowSize();
});


</script>
<style>
* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
body, html {
  height: 100%;
  margin: 0;
  padding: 0;
  font-size: 100%;
  background: #F5F5F5;
  font-family: 'Titillium Web', sans-serif;
}
.navigation a {
  float: right;
  color: #fff;
  text-decoration: none;
  padding: 4px 15px;
  margin: 10px;
  border-radius: 3px;
  background: #7db9e8;
  background: -moz-linear-gradient(top,  #7db9e8 0%, #1e5799 100%);
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#7db9e8), color-stop(100%,#1e5799));
  background: -webkit-linear-gradient(top,  #7db9e8 0%,#1e5799 100%);
  background: -o-linear-gradient(top,  #7db9e8 0%,#1e5799 100%);
  background: -ms-linear-gradient(top,  #7db9e8 0%,#1e5799 100%);
  background: linear-gradient(to bottom,  #7db9e8 0%,#1e5799 100%);
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#7db9e8', endColorstr='#1e5799',GradientType=0 );  
}
.navigation a:hover {
  background: #1e5799;
  background: -moz-linear-gradient(top,  #1e5799 0%, #7db9e8 100%);
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%,#1e5799), color-stop(100%,#7db9e8));
  background: -webkit-linear-gradient(top,  #1e5799 0%,#7db9e8 100%);
  background: -o-linear-gradient(top,  #1e5799 0%,#7db9e8 100%);
  background: -ms-linear-gradient(top,  #1e5799 0%,#7db9e8 100%);
  background: linear-gradient(to bottom,  #1e5799 0%,#7db9e8 100%);
  filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#1e5799', endColorstr='#7db9e8',GradientType=0 );
}
.navigation a:first-child {
  float: left;
}
img {
  max-width: 100%;
  height: auto;
}
ul.product_list {
  display: block;
  float: left;
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 100%;
}
.product_grid a {
  text-decoration: none;
}
.product_item {
  display: inline-block;
  background: #fff;
  border: 1px solid #ccc;
  padding: 10px;
  position: relative;
}

.product_image {
  position: relative;
  overflow: hidden;
}
.product_image a {
  display: block;
}
.product_image img {
  display: block;
  -webkit-transition: all .35s ease-in-out;
  -moz-transition: all .35s ease-in-out;
  transition: all .35s ease-in-out;
}
.product_image img:hover {
  -o-transform: scale(1.2, 1.2);
  -moz-transform: scale(1.2, 1.2);
  -webkit-transform: scale(1.2, 1.2);
  -ms-transform: scale(1.2, 1.2);
  transform: scale(1.2, 1.2);
}
.product_image:hover .product_buttons {
  bottom: 0;
}
.product_buttons {
  position: absolute;
  bottom: -40%;
  left: 0;
  width: 100%;
  text-align: center;
  -webkit-transition: all .35s ease;
  -moz-transition: all .35s ease;
  transition: all .35s ease;
}
.product_buttons button {
  color: #fff;
  border: none;
  background: rgba(0, 0, 0, 0.5);
  font-size: 1em;
  border-radius: 50%;
  width: 40px;
  height: 40px;
}
.product_buttons .product_heart:hover {
  color: #DF0404;
  background: rgba(255, 255, 255, 0.5);
}
.product_buttons .product_compare:hover {
  color: rgb(18, 150, 18);
  background: rgba(255, 255, 255, 0.5);
}
.product_buttons .add_to_cart:hover {
  color: #4DC8D3;;
  background: rgba(255, 255, 255, 0.5);
}
.quick_view h6 {
  background: rgba(0, 0, 0, 0.5);
  margin: 6px 0 0 0;
  text-align: center;
  color: #fff;
  padding: 8px 0;
  font-size: 1em;
  font-weight: normal;
}
.quick_view h6:before {
  content: "\f00e";
  font-family: FontAwesome;
  padding: 0 5px;
}
.product_title {
  float: left;
  width: 100%;
  text-transform: uppercase;
}

.product_price a {
  color: #000;
}
.price_old {
  color: #ea2e49;
  /* text-decoration: line-through; */
}
.product_rating {
  float: right;
  width: 100px;
  height: 20px;
  overflow: hidden;
  background: url(https://bit.ly/1B4PjyM) top left no-repeat;
  background-position: 0 76%;
}

/*==========  Mobile First Method  ==========*/

/* Custom, iPhone Retina */ 
@media only screen and (min-width : 320px) {
  ul.product_list {
    margin: 0;
  }
  .product_item {
    width: 100%;
    margin: 0;
    overflow: hidden;
  }
  .product_sale {
    position: absolute;
    z-index: 10;
    right: -20px;
     font-size: 1.2em;
    -webkit-transform: rotate(30deg);
    -moz-transform: rotate(30deg);
    transform: rotate(30deg);
  }
  .product_sale p {
    margin: 0;
    color: #fff;
    
    background: #ff0000;
    padding: 3px 25px;
    box-shadow: 0 2px 8px 0 rgba(0, 0, 0, 0.4);
  }
  .product_image {
    height: 150px;
    float: left;
    width: 100px;
  }
  .product_image .product_buttons {
    display: none;
  }
  .product_title h5 {
    margin: auto;
    font-size: 1em;
    font-weight: 500;
    line-height: 1;
  }
  .product_price span {
    font-size: 1.1em;
    line-height: 1;
  }
  .product_desc {
    overflow: hidden;
    float: left;
    line-height: 1;
  }
  .product_desc p {
    margin: 0;
    line-height: 1.3;
    padding: 10px 0;
}
  .product_values .product_buttons {
    position: relative;
    text-align: left;
    float: left;
    margin-top: 7px;
  }
  .product_values .product_buttons button {
    color: #252525;
    background: rgba(255, 255, 255, 1);
    font-size: 1em;
    border-radius: 50%;
    width: 40px;
    height: 40px;
    border: 1px solid #000;
  }
}

/* Extra Small Devices, Phones */ 
@media only screen and (min-width : 480px) {
  ul.product_list {
    margin: 1%;
  }
  .product_item {
    width: 49%;
    margin: 0;
  }
  .product_image {
    height: 300px;
    float: left;
    width: 100%;
    text-align: center;
  }
  .product_image img {
    max-height: 100%;
    display: inline-block;
  }
  .product_title h5 {
    font-size: 1.1em;
    font-weight: 500;
    line-height: 1;
    padding: 10px 0 0;
    text-align: center;
}
  .product_image .product_buttons {
    display: block;
  }
  .product_price {
    float: left;
    text-align: center;
    width: 100%;
  }
  .product_rating {
    width: 100%;
    background-position: center 76%;
    margin-bottom: 5px;
  }
  .product_desc {
    text-align: center;
  }
  .product_values .product_buttons {
    display: none;
  }
}

  .product_item {
    width: 32.5%;
  }
}

/* Small Devices, Tablets */
@media only screen and (min-width : 768px) {

}

/* Medium Devices, Desktops */
@media only screen and (min-width : 992px) {
  .product_item {
    width: 24.25%;
  }
}

/* Large Devices, Wide Screens */
@media only screen and (min-width : 1200px) {
  .product_item {
    width: 19.5%;
  }
}



/*==========  Non-Mobile First Method  ==========*/

/* Large Devices, Wide Screens */
@media only screen and (max-width : 1200px) {

}

/* Medium Devices, Desktops */
@media only screen and (max-width : 992px) {
  
}

/* Small Devices, Tablets */
@media only screen and (max-width : 768px) {

}

/* Extra Small Devices, Phones */ 
@media only screen and (max-width : 480px) {
  .product_title h5 {
    font-weight: bold;
  }
 .product_values {
    float: left;
    width: calc(100% - 100px);
    padding: 0 10px;
  }
  .product_rating {
    margin-right: 10px;
  }
  .product_image {
    height: 150px;
    float: left;
    width: 100px;
  }
  .product_image .product_buttons {
    display: none;
  }
  .product_desc {
    overflow: hidden;
    float: left;
    line-height: 1;
  }
  .product_values .product_buttons {
    position: relative;
    text-align: left;
    float: left;
    margin-top: 7px;
  }
  .product_values .product_buttons button {
    color: #252525;
    background: rgba(255, 255, 255, 1);
    font-size: 1em;
    border-radius: 50%;
    width: 40px;
    height: 40px;
    border: 1px solid #000;
  }  
}

/* Custom, iPhone Retina */ 
@media only screen and (max-width : 320px) {
   .product_sale {
    display: none;
  }
  .product_image {
    height: auto;
    width: 100%;
  }
  .product_image .product_buttons {
    display: block;
  }
  .product_values {
    width: 100%;
    padding: 0;
    margin: 5px 0;
  }
  .product_title h5 {
    margin: auto;
    font-size: 1em;
    line-height: 1;
    font-weight: bold;
  }
  .product_rating {
    width: 100%;
    background-position-x: 5%;
  }
  .product_desc {
    display: none;
  }
  .product_values .product_buttons {
    display: none;
  }
  
  

  
</style>
<body>
<div class="navigation">
  <!-- <a href="https://codepen.io/mmcshinsky/pen/KhxFm">Do i Need this</a> -->
</div>

<div class="product_grid">
  <ul class="product_list list">
  <c:forEach items="${listofprod}" var="prod">
    <li class="product_item">
      <div class="product_sale">
        <p>${prod.categoryName}</p>
      </div>
      <div class="product_image">
        <a href="#"><img alt="" src="resources/images/productImages/${prod.productId}.jpg"></a>
          <div class="product_buttons">
          <!--   <button class="product_heart"><i class="fa fa-heart"></i></button>
            <button class="product_compare"><i class="fa fa-random"></i></button>
            <button class="add_to_cart"><i class="fa fa-shopping-cart"></i></button> -->
            <div class="quick_view">
              <a href="prodInfo?productId=${prod.productId}"><h6>View Product Details</h6></a>
            </div>
          </div>
      </div>
      <div class="product_values">
        <div class="product_title">
          <h5>${prod. productName} </h5>
        </div>
        <div class="product_price">
          <a href="#"><span class="price_old">&#8377;</span> <span class="price_new">${prod.productPrice}</span></a>
           <!-- <span class="product_rating"></span> -->
        </div>
        
      
        <div class="product_desc">
          <p class="truncate">${prod.productDesc}</p>
        </div>
        <!-- <div class="product_buttons">
          <button class="product_heart"><i class="fa fa-heart"></i></button>
          <button class="product_compare"><i class="fa fa-random"></i></button>
          <button class="add_to_cart"><i class="fa fa-shopping-cart"></i></button>
        </div> -->
        
        
      
      </div>
    </li></c:forEach></ul>
            </div>
 

</body>
</html>