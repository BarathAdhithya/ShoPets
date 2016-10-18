
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Admin page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
 
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width:100%;
	  height:400px;
      margin: auto;
  }
  
footer {
    
    margin-top: 50px;
    
} 
body {
width:100%;
}
  .center-pills{ 
  display: inline-block; 
  }

  </style>

</head>
<body  style="background-color:">


 
  
  <nav class="navbar navbar-inve">
  <div class="container-fluid"> 
   <div class="navbar-header">
      <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="font-family:arial;color:indigo;">ShoppingCart</span></a>
      <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="margin-left:0px;"><img class="image-rounded" src="http://www.avalisa.com/images/detailed/7/avalisa-canvas-wall-art-navy-dog-face.jpg" width=25px height=25px></span></a>
</div>
  
      <ul class="nav navbar-nav nav-tabs" style="margin-left:350px;">
      
      <li><a href="Admin">HOME</a></li>
      <!-- <li><a href="REGISTER">REGISTER</a></li>
      <li><a href="LOGIN">LOGIN</a></li>
	  <li><a href="ABOUTUS">ABOUT US</a></li>
	  <li><a href="CONTACTUS">CONTACT US</a></li> -->
	  <li><a href="perform_logout">LOGOUT</a></li>
    </ul>
    <div class="navbar-header" style="margin-left:300px">
     <a class="navbar-brand" style="font-size:15px;" ><span class="glyphicon glyphicon-user"></span> WELCOME ADMIN </a>
    </div>
   </div>
  </nav>
 <!--  <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
  <ul class="nav nav-tabs col-lg-12">
    <li class="active"><a href="Product">Product</a></li>
    <li><a href="Category">Category</a></li>
     <li><a href="Supplier">Supplier</a></li>
  </ul>
   <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="margin-left:90px;"><img class="image-rounded" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/768px-F_icon.svg.png" width=25px height=25px></span></a>
    <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="margin-left:0px;"><img class="image-rounded" src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Twitter_bird_logo_2012.svg/1259px-Twitter_bird_logo_2012.svg.png" width=25px height=25px></span></a>
  </div> --> 
  
  
  <div class="container">
          <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
          <ul class="nav nav-pills nav-justified" style="margin-left:-55px">
     <li><a href="Product">Product</a></li>
     <li><a href="Category">Category</a></li>
     <li><a href="Supplier">Supplier</a></li>
  </ul>
</div>
</div>

<br>
<c:choose>
<c:when test="${userclickedproduct}">
<c:import url="/WEB-INF/views/Product.jsp"/>
</c:when>
</c:choose>
  <c:choose>
<c:when test="${userclickedsupplier}">
<c:import url="/WEB-INF/views/Supplier.jsp"/>
</c:when>
</c:choose>
<c:choose>
<c:when test="${userclickedcategory}">
<c:import url="/WEB-INF/views/Category.jsp"/>
</c:when>
</c:choose>
<c:choose>
<c:when test="${userclickedhome}">
<c:import url="/WEB-INF/views/HOME.jsp"/>
</c:when>
</c:choose>
   
  
 <%@include file="Footer.jsp"%> 
 
</body>
</html>