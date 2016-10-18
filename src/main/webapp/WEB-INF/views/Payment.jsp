<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
      <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Payment</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
 
footer {
    
    margin-top: 50px;
    
} 
body {
width:100%;
}

body {
    font-family:Arial;
    font-size: 14px;
    background:#ddd;
}


  </style>

</head>
<body  style="background-color:">


 
  
     <nav class="navbar navbar-in">
  <div class="container-fluid">
  <div class="navbar-header">
      <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="font-family:arial;color:indigo;">ShoppingCart</span></a>
      <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="margin-left:0px;"><img class="image-rounded" src="http://www.avalisa.com/images/detailed/7/avalisa-canvas-wall-art-navy-dog-face.jpg" width=25px height=25px></span></a>
</div> 
     <ul class="nav navbar-nav nav-tabs" style="margin-left:210px;">
       <li class="dropdown" >
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Category
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <c:forEach items="${allCategory}" var="category">
				<a href="navproduct/${category.id }"><c:out value="${category.name}" /></a>
							<br>
						
					</c:forEach>
        </ul>
      </li>
      
    
      <li><a href="HOME">HOME</a></li>
       <sec:authorize access="!isAuthenticated()">
      <li><a href="REGISTER">REGISTER</a></li>
      <li><a href="LOGIN">LOGIN</a></li>
      </sec:authorize>
	  <li><a href="ABOUTUS">ABOUT US</a></li>
	  <li><a href="CONTACTUS">CONTACT US</a></li>
   <sec:authorize access="isAuthenticated()">
   <li ><a href="viewcart" ><p>CART <span class="glyphicon glyphicon-shopping-cart"></span></p></a></li>
	<li><a href="<c:url value="/perform_logout" />"><p>LOGOUT<span class="glyphicon glyphicon-log-out"></span></p></a></li>
	<li><a href="">WELCOME<sec:authentication property="principal.username"/></a></li>
</sec:authorize>
					  
   </ul>
   
    <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="margin-left:70px;"><img class="image-rounded" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/768px-F_icon.svg.png" width=25px height=25px></span></a>
    <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="margin-left:0px;"><img class="image-rounded" src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Twitter_bird_logo_2012.svg/1259px-Twitter_bird_logo_2012.svg.png" width=25px height=25px></span></a>
    <!-- <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="margin-left:0px;"><img class="image-rounded" src="http://icons.iconarchive.com/icons/danleech/simple/1024/linkedin-icon.png" width=25px height=25px></span></a> -->
   </div>
  </nav>



<div class="container">
  <div class="row col-xs-4"></div>
  <div class="col-xs-4">
     <!-- CREDIT CARD FORM STARTS HERE -->
    <div class="panel panel-primary">
     <div class="panel-heading">
      <div class="row">
       <h3 class="panel-title " style="padding-left: 20px">Payment Details</h3>
       
      </div>
     </div>
     <div class="panel-body">
      <form action="pay" method="post">
       <div class="row">
        <div class="col-xs-12">
         <div class="form-group">
          <label for="cardNumber">Card Number</label>
          <div class="form-group">
           <input type="text" class="form-control input-sm" name="cardNumber"
            placeholder="Valid Card Number" pattern="^[123456789]\d{15}$"
            title="Enter valid 16 digit number"
            required /> 
          </div>
         </div>
        </div>
       </div>
       <div class="row">
        <div class="col-xs-7 col-md-7">
         <div class="form-group">
          <label for="cardExpiry"><span class="hidden-xs">Expiration</span><span
           class="visible-xs-inline">EXP</span> DATE</label> <input type="tel"
           class="form-control input-sm" name="cardExpiry" placeholder="MM / YY"
            required />
         </div>
        </div>
        <div class="col-xs-5 col-md-5 pull-right">
         <div class="form-group">
          <label for="cardCVC">CVV Code</label> <input type="text" pattern="^[123456789]\d{2}$"  size="3"
           class="form-control input-sm" name="cardCVC" placeholder="CVV"
           required />
         </div>
        </div>
       </div>
       <div class="row">
        <div class="col-xs-12">
         <div class="form-group">
          <label for="couponCode">Coupon Code</label> <input type="text"
           class="form-control input-sm" name="couponCode" />
         </div>
        </div>
       </div>
       
       <div class="row">
        <div class="col-xs-12">
        
         <button class="btn btn-success btn-sm btn-block" type="submit">Make Payment</button>  
        
        </div>
       </div>
      </form>
     </div>
    </div>
    <!-- CREDIT CARD FORM ENDS HERE -->
</div>
     
</div> 
 <%@include file="Footer.jsp"%>	
</body>
</html>