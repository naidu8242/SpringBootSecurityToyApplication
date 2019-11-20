<!DOCTYPE html>
<html lang="zxx">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <head>
      <title>Toys Shop an Ecommerce Category Bootstrap Responsive Web Template | Home :: w3layouts</title>
      <!--meta tags -->
      
      <script>
         addEventListener("load", function () {
         	setTimeout(hideURLbar, 0);
         }, false);
         
         function hideURLbar() {
         	window.scrollTo(0, 1);
         }
      </script>
		      <!--//meta tags ends here-->
      <!--booststrap-->
      <link href="/resources/css/bootstrap.min.css" rel="stylesheet" type="text/css" >
      <link href="/resources/css/jquery-ui1.css" rel="stylesheet" type="text/css" >
      <link href="/resources/css/easy-responsive-tabs.css" rel="stylesheet" type="text/css" >
      
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="/resources/css/fontawesome-all.min.css" rel="stylesheet" type="text/css" >
      <!-- //font-awesome icons -->
      <!-- For Clients slider -->
      <link rel="stylesheet" href="/resources/css/flexslider.css" type="text/css"  />
      <link href="/resources/css/bootstrap.css" rel="stylesheet" />
      <!--flexs slider-->
      <link href="css/JiSlider.css" rel="stylesheet">
      <!--Shoping cart-->
      <link rel="stylesheet" href="/resources/css/shop.css" type="text/css" />
      <!--//Shoping cart-->
      <!--stylesheets-->
      <link href="/resources/css/style.css" rel='stylesheet' type='text/css' >
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
      

	<link href="/resources/css/login-register.css" rel="stylesheet" type='text/css' />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="/resources/css/font-awesome.min.css">
    <link href="/resources/css/login-styles.css" rel="stylesheet" type="text/css">
	<script src="/resources/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="/resources/js/bootstrap.js" type="text/javascript"></script>
	<script src="/resources/js/login-register.js" type="text/javascript"></script>
	<script src="/resources/js/slead-common.js" type="text/javascript"></script>
	
   </head>
   <body>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<div class="header-bar">
            <div class="container-fluid">
               <div class="hedder-up row">
                  <div class="col-lg-3 col-md-3 logo-head">
                     <h1><a class="navbar-brand" href="index.html">Toys-Shop</a></h1>
                  </div>
                  <div class="col-lg-5 col-md-6 search-right">
                     <form class="form-inline my-lg-0">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search">
                        <button class="btn" type="submit">Search</button>
                     </form>
                  </div>
                  
                  
                  
                  <div class="col-lg-4 col-md-3 right-side-cart clearfix">
                  <div class="login pull-left">
	                      <c:if test="${!empty employee.name}">
	                        <div class="pull-left userName"><span class="dotdotName">${employee.name} </span><i class="fa fa-chevron-up pull-right"></i></div>
	                        <div class="loginInner">
	                           <ul>
	                              <li><a href="profile.html"><i class="fa fa-user"></i>My Profile </a></li>
	                              <li><a href="javascript:void(0)"><i class="fa fa-file"></i>Orders </a></li>
	                              <li><a href="javascript:void(0)"><i class="fa fa-heart"></i>Wishlist</a></li>
	                              <li><a href="javascript:void(0)"><i class="fa fa-tag"></i>Coupons </a></li>
	                              <li><a href="javascript:void(0)"><i class="fa fa-bell"></i>Notifications </a></li>
	                              <li><a href="http://localhost:8081/logout"><i class="fa fa-power-off"></i>Logout </a></li>
	                           </ul>
	                        </div>
	                     </c:if>
	                     <c:if test="${empty employee.name}">
	                    	 <a class="btn btn-default" data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();">Login &amp; Signup</a>
	                     </c:if>
                     </div>
                     <div class="cart-icons iconStyle">
                        <ul>
                           <li>
                              <span class="far fa-heart"></span>
                           </li>
                           <li>
                              <button type="button" data-toggle="modal" data-target="#exampleModal"> <span class="far fa-user"></span></button>
                           </li>
                          
                           <li class="toyscart toyscart2 cart cart box_1">
                              <form action="#" method="post" class="last">
                                 <input type="hidden" name="cmd" value="_cart">
                                 <input type="hidden" name="display" value="1">
                                 <button class="top_toys_cart" type="submit" name="submit" value="">
                                 <span class="fas fa-cart-arrow-down"></span>
                                 </button>
                              </form>
                           </li>
                        </ul>
                     </div>
                  </div>
                  
               </div>
            </div>
            <nav class="navbar navbar-expand-lg navbar-light">
               <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
               </button>
               <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                  <ul class="navbar-nav ">
                     <li class="nav-item ${homeActive}">
                        <a class="nav-link" href="${pageContext.request.contextPath}/toysHome">Home <span class="sr-only">(current)</span></a>
                     </li>
                     <li class="nav-item ${aboutActive}">
                        <a href="${pageContext.request.contextPath}/about" class="nav-link">About</a>
                     </li>
                     <li class="nav-item ${serviceActive}">
                        <a href="${pageContext.request.contextPath}/service" class="nav-link">Service</a>
                     </li>
                     <li class="nav-item ${shopActive}">
                        <a href="${pageContext.request.contextPath}/shop" class="nav-link">Shop Now</a>
                     </li>
                     <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Pages
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                           <a class="nav-link" href="${pageContext.request.contextPath}/icon">404 Page</a>
                           <a class="nav-link " href="${pageContext.request.contextPath}/typography">Typography</a>
                        </div>
                     </li>
                     <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Product
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                           <a class="nav-link"  href="${pageContext.request.contextPath}/product">Kids Toys</a>
                           <a class="nav-link " href="${pageContext.request.contextPath}/product">Dolls</a>
                           <a class="nav-link " href="${pageContext.request.contextPath}/product">Key Toys</a>
                           <a class="nav-link " href="${pageContext.request.contextPath}/product">Boys Toys</a>
                        </div>
                     </li>
                     <li class="nav-item ${contactActive}">
                        <a href="${pageContext.request.contextPath}/contact" class="nav-link">Contact</a>
                     </li>
                  </ul>
               </div>
            </nav>
         </div>
   
    
    
    
    