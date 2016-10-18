<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
      <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
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
.dropdown-toggle {
    background-color: white;
    
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
/* .dropdown-toggle {
    position: relative;
    display: inline-block;
} */

/* Dropdown Content (Hidden by Default) */
.dropdown-menu {
    display: none;
   
    background-color: #f9f9f9;
    min-width: 120px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}

/* Links inside the dropdown */
.dropdown-menu a {
    color: black;
    padding: 6px 8px;
    text-decoration: none;
    display: block;
}

/* Change color of dropdown links on hover */
.dropdown-menu a:hover {background-color: #f1f1f1}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-menu {
    display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown1:hover .dropdown-toggle {
    background-color: #3e8e41;
}
  </style>
</head>
<body style="background-color:;">

  <nav class="navbar navbar-inve">
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
   <li ><a href="Cart1" ><p>CART <span class="glyphicon glyphicon-shopping-cart"></span></p></a></li>
	<li><a href="<c:url value="/perform_logout" />"><p>LOGOUT<span class="glyphicon glyphicon-log-out"></span></p></a></li>
	<li><a href="">WELCOME<sec:authentication property="principal.username"/></a></li>
</sec:authorize>
					  
   </ul>
   
    <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="margin-left:250px;"><img class="image-rounded" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/768px-F_icon.svg.png" width=25px height=25px></span></a>
    <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="margin-left:0px;"><img class="image-rounded" src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Twitter_bird_logo_2012.svg/1259px-Twitter_bird_logo_2012.svg.png" width=25px height=25px></span></a>
    <!-- <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="margin-left:0px;"><img class="image-rounded" src="http://icons.iconarchive.com/icons/danleech/simple/1024/linkedin-icon.png" width=25px height=25px></span></a> -->
   </div>
  </nav>
 <br><br>
  <section id="content">
			<c:url var="addAction" value="adduser"></c:url>
			<form:form action="${addAction}" commandName="user"
				method="post">
<form class="form-horizontal">
 <div class="row centered-form">
        <div class="col-xs-8 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
        	<div class="panel panel-default">
        		<div class="panel-heading">
			    		<h3 class="panel-title" style="text-align:center;">Registration Form</h3>
			 			</div>
			 			<div class="panel-body">
			    		 <form role="form">

<br>
<div class="form-group">
  <label class="col-md-4 control-label" for="username">User name</label>  
  <div class="col-md-6">
  <form:input id="username" name="username" type="text" placeholder="user name" class="form-control input-md" 
  path="username" pattern=".{5,10}" required="true" title="minimum length for username is 5" />
    
  </div>
</div>
<br><br>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="password">Password</label>  
  <div class="col-md-6">
  <form:input id="password" name="password" type="password" placeholder="Password" class="form-control input-md" 
  path="password"  pattern=".{3,8}" required="true" title="minimum length for passsword is 3"/>
    
  </div>
</div>
<br><br>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="confirmpassword">Confirm Password</label>  
  <div class="col-md-6">
  <form:input id="confirmpassword" name="confirmpassword" type="password" placeholder="Confirm Password" class="form-control input-md"
   path="confirmpassword"  pattern=".{3,8}" required="true" title="minimum length for passsword is 3"/>
    
  </div>
</div>

<br><br>
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="email">Email</label>  
  <div class="col-md-6">
  <form:input id="email" name="email" type="text" placeholder="email address" class="form-control input-md" path="email"/>
    
  </div>
</div>
<br><br>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="phone">Phone Number</label>  
  <div class="col-md-6">
  <form:input id="phone" name="phone" type="text" placeholder="Phone Number" class="form-control input-md" 
  path="phone" pattern="^[789]\d{9}$" required="true" title="Enter valid mobile number"/>
    
  </div>
</div>
<br><br>
</div>

<div class="form-group">
<div class="col-xs-8 col-sm-6 col-md-4 col-sm-offset-2 col-md-offset-4">
<input type="submit" value="Register" class="btn btn-info btn-block">
</div>
</div>
<br><br>
<form>
</div>

</div>
</div>
</form>
</form:form>
</section>

  <%-- 
	<div class="container">
	
	
	<c:choose>
				<c:when test="${!empty SuccessMessage}">
					<td colspan="2">
						<div class="alert alert-success fade in">
							<a href="login" class="close" data-dismiss="alert" aria-label="close">&times;</a>${SuccessMessage}
						</div>
					</td>
				</c:when>
			</c:choose>
	
	
	
	<section id="content">
			<c:url var="addAction" value="adduser"></c:url>
			<form:form action="${addAction}" commandName="user"
				method="post">
				<h4>Registration</h4>
				<div>
					<form:input path="userid" type="text" placeholder="USERID"
						 required="true" id="userid" name="userid" />
				</div>
				<div>
					<form:input path="username" type="text" placeholder="Username"
					pattern=".{5,10}" required="true" id="username" name="username"
					title="minimum length for username is 5" />
				</div>
				<div>
					<form:input path="password" type="password" placeholder="Password" pattern=".{3,8}"
						required="true" id="password" name="password" title="minimum length for passsword is 3" />
				</div>
				<div>
					<form:input path="confirmpassword" type="password" placeholder="Confirm Password" pattern=".{3,8}"
						required="true" id="confirmpassword" name="confirmpassword" title="minimum length for passsword is 3" />
				</div>
				<div>
					<form:input path="email" type="email" placeholder="Email"
						required="true" id="username" name="username" />
				</div>
				<div>
					<form:input path="phone" type="text" placeholder="Phone"
						pattern="^[789]\d{9}$" required="true" id="phone"
						name="phone" title="Enter valid mobile number" />
				</div>
				<div>
					<input type="submit" value="Register" /><a href="LOGIN">Sign In</a>
				</div>

			</form:form>
			
		</section>
		
	</div>  --%>
	 <%@include file="Footer.jsp"%>		
</body>
</html>