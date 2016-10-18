<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
      <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
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
body {
	/* background: #DCDDDF url(http://cssdeck.com/uploads/media/items/7/7AF2Qzt.png); */
	color: #000;
	font: 14px Arial;
	margin: 0 auto;
	padding: 0;
	position: relative;
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body  style="background-color:white">


 
  
     <nav class="navbar navbar-inver">
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
	<div id="cart">
		<div class="container">
			<div class="row">
				<div class="col-xs-2"></div>
				<div class="col-xs-8">
					<div class="panel panel-primary ">
						<div class="panel-heading">
							<div class="panel-title">
								<div class="row">
									<div class="col-xs-6">
										<h5 style="color: white">
											<span class="glyphicon glyphicon-shopping-cart">Cart</span>
											</h5>
									</div>
									<div class="col-xs-3"></div>
								</div>
							</div>
						</div>
						<div class="panel-body">

							<div class="row">
								<div class="col-xs-5">
									<label class="form-control input-sm">Product Details</label>
								</div>
								
								<div class="col-xs-2 text-right">
									<label class="form-control input-sm"> Total Price</label>
								</div>

								<div class="col-xs-4">
									<div class="col-xs-6">
										<label class="form-control input-sm">Quantity</label>
									</div>
									<div class="col-xs-6">
										<label class="form-control input-sm">Update</label>
									</div>
								</div>
								<div class="col-xs-1">
									<a href="#" class="form-control input-sm"><span
										class="glyphicon glyphicon-trash"> </span></a>
								</div>
							</div>
							<hr>
							<%-- <c:if test="${!empty EmptyCart}">
								<div
									style="display: table-cell; vertical-align: middle; text-align: center">
									<img width="50%" alt="Empty Cart"
										src="<c:url value="/resources/images/emptycart.jpg"></c:url>">
								</div>
							</c:if> --%>
							<c:if test="${!empty CartList}">
								<c:forEach items="${CartList}" var="cart">
									<div class="row" >
										<div class="col-xs-5">
										<div class="col-xs-6">
										<a href="IndividualItem/${cart.productid}">
											<img height="72px" width="72px"  alt="${cart.productid}"
											src="<c:url value="/resources/images/Product/${cart.productid}.jpg"></c:url>">
											</a>
										</div>
										<div class="col-xs-6" style="padding-top: 22px" >
											<label  class="form-control input-sm">${cart.productname}</label>
										</div>
										</div>
										<%-- <div class="col-xs-2">
								<input type="text" class="form-control input-sm" value="${cart.quantity}">
						</div> --%>
										<div class="col-xs-2 text-right" style="padding-top: 22px">
											<label class="form-control input-sm">${cart.price}</label>
										</div>

										<div class="col-xs-4" style="padding-top: 22px">
											<form action="editorder/${cart.id}">
												<div class="col-xs-6">
													<input type="text" class="form-control input-sm"
														value="${cart.quantity}" name="quantity">
												</div>
												<div class="col-xs-6" >
													<button type="submit"
														class="btn btn-default btn-sm btn-block">Update
														cart</button>
												</div>

											</form>
										</div>
										<div class="col-xs-1" style="padding-top: 22px">
											<a href="delete/${cart.id}" class="form-control input-sm"><span
												class="glyphicon glyphicon-trash"> </span></a>
										</div>
									</div>
									<hr>
								</c:forEach>
							</c:if>
						</div>
						<div class="panel-footer">
							<div class="row text-center">
								<div class="col-xs-3">
									<a href="HOME" class="btn btn-primary btn-sm btn-block">Continue
										Shopping</a>
								</div>
								<c:if test="${empty EmptyCart}">
								<div class="col-xs-6">
									<h4 class="text-right">Total : Rs ${CartPrice}</h4>
								</div>
								<form action="placeorder">
								
									<div class="col-xs-3">
										<button type="submit" class="btn btn-success btn-block">
											Checkout</button>
									</div>
									
								</form>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--  -->
	
</body>
</html>