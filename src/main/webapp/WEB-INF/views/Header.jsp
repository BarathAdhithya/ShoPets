<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
body{
padding-top:0px;
}
</style>

<body style="background-color:">

  </div>
  <nav class="navbar navbar-inve">
  <div class="container-fluid"> 
  <div class="navbar-header">
      <a class="navbar-brand" href="HOME"><span style="font-family:arial;color:indigo;">ShoppingCart</span></a>
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
   <li ><a href="Cart" ><p>CART <span class="glyphicon glyphicon-shopping-cart"></span></p></a></li>
	<li><a href="<c:url value="/perform_logout" />"><p>LOGOUT<span class="glyphicon glyphicon-log-out"></span></p></a></li>
	<li><a href="">WELCOME<sec:authentication property="principal.username"/></a></li>
</sec:authorize>
					  
   </ul>
    <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="margin-left:250px;"><img class="image-rounded" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/768px-F_icon.svg.png" width=25px height=25px></span></a>
    <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="margin-left:0px;"><img class="image-rounded" src="https://upload.wikimedia.org/wikipedia/en/thumb/9/9f/Twitter_bird_logo_2012.svg/1259px-Twitter_bird_logo_2012.svg.png" width=25px height=25px></span></a>
    <!-- <a class="navbar-brand" href="http://localhost:8080/ShoppingCart"><span style="margin-left:0px;"><img class="image-rounded" src="http://icons.iconarchive.com/icons/danleech/simple/1024/linkedin-icon.png" width=25px height=25px></span></a> -->
   </div>
  </nav>
  <c:choose>
<c:when test="${UserClickedlogin}">
<c:import url="/WEB-INF/views/LOGIN.jsp"></c:import>
</c:when>
</c:choose> 
<c:choose>
<c:when test="${UserClickedregister}">
<c:import url="/WEB-INF/views/REGISTER.jsp"></c:import>
</c:when>
</c:choose>
  
 <!--  <div class="container-fluid"  align="center"> 
    <ul class="nav nav-pills nav-justified" style="width:60%" >
    <li class="active"><a href="#">Home</a></li>
    <li><a href="#">Menu 1</a></li>
    <li><a href="#">Menu 2</a></li>
    <li><a href="#">Menu 3</a></li>
  </ul>
  </div> -->

</body>
</html>
