<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Aroma Shop - Product Details</title>
    <link rel="icon" href="<c:url value="/staticResources/static/img/Fevicon.png"/>" type="image/png">
    <link rel="stylesheet" href="<c:url value="/staticResources/static/vendors/bootstrap/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/staticResources/static/vendors/fontawesome/css/all.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/staticResources/static/vendors/themify-icons/themify-icons.css"/>">
    <link rel="stylesheet" href="<c:url value="/staticResources/static/vendors/linericon/style.css"/>">
    <link rel="stylesheet" href="<c:url value="/staticResources/static/vendors/nice-select/nice-select.css"/>">
    <link rel="stylesheet" href="<c:url value="/staticResources/static/vendors/owl-carousel/owl.theme.default.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/staticResources/static/vendors/owl-carousel/owl.carousel.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/staticResources/static/css/style.css"/>">
</head>
<body>

	<!--================ Start Header Menu Area =================-->
	<header class="header_area">
	    <div class="main_menu">
		  <nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">
			    <a class="navbar-brand logo_h" href="<c:url value="/rock/index"/>"><img src="<c:url value="/staticResources/static/img/logo.png"/>" alt=""></a>
			    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				  <span class="icon-bar"></span>
				  <span class="icon-bar"></span>
				  <span class="icon-bar"></span>
			    </button>
			    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
				  <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
					<li class="nav-item"><a class="nav-link" href="<c:url value="/rock/index"/>">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/rock/categories"/>">Categories</a></li>
					<li class="nav-item submenu dropdown"><a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
											     aria-expanded="false">Blog</a>
					    <ul class="dropdown-menu">
						  <li class="nav-item"><a class="nav-link" href="<c:url value="/rock/blog"/>">Blog</a></li>
						  <li class="nav-item"><a class="nav-link" href="<c:url value="/rock/single-blog"/>">Blog Details</a></li>
					    </ul>
					</li>
					<li class="nav-item submenu dropdown">
					    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
						 aria-expanded="false">Pages</a>
					    <ul class="dropdown-menu">
						  <li class="nav-item"><a class="nav-link" href="<c:url value="/rock/login"/>">Login</a></li>
						  <li class="nav-item"><a class="nav-link" href="<c:url value="/rock/register"/>">Register</a></li>
						  <li class="nav-item"><a class="nav-link" href="<c:url value="/rock/tracking-order"/>">Tracking</a></li>
					    </ul>
					</li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/rock/contact"/>">Contact</a></li>
				  </ul>

				  <ul class="nav-shop">
					<li class="nav-item"><button><i class="ti-search"></i></button></li>
					<li class="nav-item"><a href="<c:url value="/rock/cart"/>"><i class="ti-shopping-cart"></i><span class="nav-shop__circle"></span></a></li>
					<li class="nav-item"><a class="button button-header" href="#">Buy Now</a></li>
				  </ul>
			    </div>
			</div>
		  </nav>
	    </div>
	</header>
	<!--================ End Header Menu Area =================-->
	
	<!-- ================ start banner area ================= -->
	<section class="blog-banner-area" id="blog">
	    <div class="container h-100">
		  <div class="blog-banner">
			<div class="text-center">
			    <h1>Shop Single</h1>
			    <nav aria-label="breadcrumb" class="banner-breadcrumb">
				  <ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Shop Single</li>
				  </ol>
			    </nav>
			</div>
		  </div>
	    </div>
	</section>
	<!-- ================ end banner area ================= -->


  	<!--================Single Product Area =================-->
	<div class="product_image_area">
	    <div class="container">
		  <div class="row s_product_inner">
			<div class="col-lg-6">
			    <div class="owl-carousel owl-theme s_Product_carousel">
				  <div class="single-prd-item">
					<c:if test="${childrenProduct != null}">
					    <img class="img-fluid" src="/rock/single-product/displayChildren/<c:out value='${childrenProduct.id}'/>" alt="">
					</c:if>
					<c:if test="${menProduct != null}">
					    <img class="img-fluid" src="/rock/single-product/displayMen/<c:out value='${menProduct.id}'/>" alt="">
					</c:if>
				  </div>
			    </div>
			</div>
			<div class="col-lg-5 offset-lg-1">
			    <div class="s_product_text">
				  <c:if test="${childrenProduct != null}">
					<h3>${childrenProduct.productName}</h3>
					<h2>${childrenProduct.price}$</h2>
					<ul class="list">
					    <li><a class="active" href="#"><span>Category</span> : ${childrenProduct.categoryChildren.subCategoryNames}</a></li>
					    <li><a href="#"><span>Availibility</span> : In Stock</a></li>
					    <li><a href="#"><span>Color</span> : ${childrenProduct.color}</a></li>
					</ul>
				  </c:if>

				  <c:if test="${menProduct != null}">
					<h3>${menProduct.productName}</h3>
					<h2>${menProduct.price}$</h2>
					<ul class="list">
					    <li><a class="active" href="#"><span>Category</span> : ${menProduct.categoryForMen.subCategoryNames}</a></li>
					    <li><a href="#"><span>Availibility</span> : In Stock</a></li>
					    <li><a href="#"><span>Color</span> : ${menProduct.color}</a></li>
					</ul>
				  </c:if>
<%--				  <p>Mill Oil is an innovative oil filled radiator with the most modern technology. If you are looking for--%>
<%--					something that can make your interior look awesome, and at the same time give you the pleasant warm feeling--%>
<%--					during the winter.</p>--%>
				  <div class="product_count">
					<label for="qty">Quantity:</label>
					<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst )) result.value++;return false;"
						  class="increase items-count" type="button"><i class="ti-angle-left"></i></button>
					<input type="text" name="qty" id="sst" size="2" maxlength="12" value="1" title="Quantity:" class="input-text qty">
					<button onclick="var result = document.getElementById('sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 0 ) result.value--;return false;"
						  class="reduced items-count" type="button"><i class="ti-angle-right"></i></button>
					<a class="button primary-btn" href="#">Add to Cart</a>
				  </div>
				  <div class="card_area d-flex align-items-center">
					<a class="icon_btn" href="#"><i class="lnr lnr lnr-diamond"></i></a>
					<a class="icon_btn" href="#"><i class="lnr lnr lnr-heart"></i></a>
				  </div>
			    </div>
			</div>
		  </div>
	    </div>
	</div>
	<!--================End Single Product Area =================-->

	<!--================Product Description Area =================-->
	<section class="product_description_area">
	    <div class="container">
		  <ul class="nav nav-tabs" id="myTab" role="tablist">
			<li class="nav-item">
			    <a class="nav-link" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Описание</a>
			</li>
			<li class="nav-item">
			    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
				 aria-selected="false">Характеристики</a>
			</li>
			<li class="nav-item">
			    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact"
				 aria-selected="false">Комментарии</a>
			</li>
			<li class="nav-item">
			    <a class="nav-link active" id="review-tab" data-toggle="tab" href="#review" role="tab" aria-controls="review"
				 aria-selected="false">Reviews</a>
			</li>
		  </ul>
		  <div class="tab-content" id="myTabContent">
			<c:if test="${childrenProduct != null}">
			    <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
				  <p>${childrenProduct.descriptions}</p>
			    </div>
			</c:if>
			<c:if test="${menProduct != null}">
			    <div class="tab-pane fade" id="home" role="tabpanel" aria-labelledby="home-tab">
				  <p>${menProduct.descriptions}</p>
			    </div>
			</c:if>
		  </div>
	    </div>
	</section>
	<!--================End Product Description Area =================-->

	<!--================ Start related Product area =================-->
	<section class="related-product-area section-margin--small mt-0">
	    <div class="container">
		  <div class="section-intro pb-60px">
			<p>Popular Item in the market</p>
			<h2>Top <span class="section-intro__style">Product</span></h2>
		  </div>
		  <div class="row mt-30">
			<div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
			    <div class="single-search-product-wrapper">
				  <div class="single-search-product d-flex">
					<a href="#"><img src="<c:url value="/staticResources/static/img/product/product-sm-1.png"/>" alt=""></a>
					<div class="desc">
					    <a href="#" class="title">Gray Coffee Cup</a>
					    <div class="price">$170.00</div>
					</div>
				  </div>
				  <div class="single-search-product d-flex">
					<a href="#"><img src="<c:url value="/staticResources/static/img/product/product-sm-2.png"/>" alt=""></a>
					<div class="desc">
					    <a href="#" class="title">Gray Coffee Cup</a>
					    <div class="price">$170.00</div>
					</div>
				  </div>
				  <div class="single-search-product d-flex">
					<a href="#"><img src="<c:url value="/staticResources/static/img/product/product-sm-3.png"/>" alt=""></a>
					<div class="desc">
					    <a href="#" class="title">Gray Coffee Cup</a>
					    <div class="price">$170.00</div>
					</div>
				  </div>
			    </div>
			</div>

			<div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
			    <div class="single-search-product-wrapper">
				  <div class="single-search-product d-flex">
					<a href="#"><img src="<c:url value="/staticResources/static/img/product/product-sm-4.png"/>" alt=""></a>
					<div class="desc">
					    <a href="#" class="title">Gray Coffee Cup</a>
					    <div class="price">$170.00</div>
					</div>
				  </div>
				  <div class="single-search-product d-flex">
					<a href="#"><img src="<c:url value="/staticResources/static/img/product/product-sm-5.png"/>" alt=""></a>
					<div class="desc">
					    <a href="#" class="title">Gray Coffee Cup</a>
					    <div class="price">$170.00</div>
					</div>
				  </div>
				  <div class="single-search-product d-flex">
					<a href="#"><img src="<c:url value="/staticResources/static/img/product/product-sm-6.png"/>" alt=""></a>
					<div class="desc">
					    <a href="#" class="title">Gray Coffee Cup</a>
					    <div class="price">$170.00</div>
					</div>
				  </div>
			    </div>
			</div>

			<div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
			    <div class="single-search-product-wrapper">
				  <div class="single-search-product d-flex">
					<a href="#"><img src="<c:url value="/staticResources/static/img/product/product-sm-7.png"/>" alt=""></a>
					<div class="desc">
					    <a href="#" class="title">Gray Coffee Cup</a>
					    <div class="price">$170.00</div>
					</div>
				  </div>
				  <div class="single-search-product d-flex">
					<a href="#"><img src="<c:url value="/staticResources/static/img/product/product-sm-8.png"/>" alt=""></a>
					<div class="desc">
					    <a href="#" class="title">Gray Coffee Cup</a>
					    <div class="price">$170.00</div>
					</div>
				  </div>
				  <div class="single-search-product d-flex">
					<a href="#"><img src="<c:url value="/staticResources/static/img/product/product-sm-9.png"/>" alt=""></a>
					<div class="desc">
					    <a href="#" class="title">Gray Coffee Cup</a>
					    <div class="price">$170.00</div>
					</div>
				  </div>
			    </div>
			</div>

			<div class="col-sm-6 col-xl-3 mb-4 mb-xl-0">
			    <div class="single-search-product-wrapper">
				  <div class="single-search-product d-flex">
					<a href="#"><img src="<c:url value="/staticResources/static/img/product/product-sm-1.png"/>" alt=""></a>
					<div class="desc">
					    <a href="#" class="title">Gray Coffee Cup</a>
					    <div class="price">$170.00</div>
					</div>
				  </div>
				  <div class="single-search-product d-flex">
					<a href="#"><img src="<c:url value="/staticResources/static/img/product/product-sm-2.png"/>" alt=""></a>
					<div class="desc">
					    <a href="#" class="title">Gray Coffee Cup</a>
					    <div class="price">$170.00</div>
					</div>
				  </div>
				  <div class="single-search-product d-flex">
					<a href="#"><img src="<c:url value="/staticResources/static/img/product/product-sm-3.png"/>" alt=""></a>
					<div class="desc">
					    <a href="#" class="title">Gray Coffee Cup</a>
					    <div class="price">$170.00</div>
					</div>
				  </div>
			    </div>
			</div>
		  </div>
	    </div>
	</section>
	<!--================ end related Product area =================-->  	

  	<!--================ Start footer Area  =================-->
	<footer>
	    <div class="footer-area footer-only">
		  <div class="container">
			<div class="row section_gap">
			    <div class="col-lg-3 col-md-6 col-sm-6">
				  <div class="single-footer-widget tp_widgets ">
					<h4 class="footer_title large_title">Our Mission</h4>
					<p>
					    So seed seed green that winged cattle in. Gathering thing made fly you're no
					    divided deep moved us lan Gathering thing us land years living.
					</p>
					<p>
					    So seed seed green that winged cattle in. Gathering thing made fly you're no divided deep moved
					</p>
				  </div>
			    </div>
			    <div class="offset-lg-1 col-lg-2 col-md-6 col-sm-6">
				  <div class="single-footer-widget tp_widgets">
					<h4 class="footer_title">Quick Links</h4>
					<ul class="list">
					    <li><a href="#">Home</a></li>
					    <li><a href="#">Shop</a></li>
					    <li><a href="#">Blog</a></li>
					    <li><a href="#">Product</a></li>
					    <li><a href="#">Brand</a></li>
					    <li><a href="#">Contact</a></li>
					</ul>
				  </div>
			    </div>
			    <div class="col-lg-2 col-md-6 col-sm-6">
				  <div class="single-footer-widget instafeed">
					<h4 class="footer_title">Gallery</h4>
					<ul class="list instafeed d-flex flex-wrap">
					    <li><img src="<c:url value="/staticResources/static/img/gallery/r1.jpg"/>" alt=""></li>
					    <li><img src="<c:url value="/staticResources/static/img/gallery/r2.jpg"/>" alt=""></li>
					    <li><img src="<c:url value="/staticResources/static/img/gallery/r3.jpg"/>" alt=""></li>
					    <li><img src="<c:url value="/staticResources/static/img/gallery/r5.jpg"/>" alt=""></li>
					    <li><img src="<c:url value="/staticResources/static/img/gallery/r7.jpg"/>" alt=""></li>
					    <li><img src="<c:url value="/staticResources/static/img/gallery/r8.jpg"/>" alt=""></li>
					</ul>
				  </div>
			    </div>
			    <div class="offset-lg-1 col-lg-3 col-md-6 col-sm-6">
				  <div class="single-footer-widget tp_widgets">
					<h4 class="footer_title">Contact Us</h4>
					<div class="ml-40">
					    <p class="sm-head">
						  <span class="fa fa-location-arrow"></span>
						  Head Office
					    </p>
					    <p>123, Main Street, Your City</p>

					    <p class="sm-head">
						  <span class="fa fa-phone"></span>
						  Phone Number
					    </p>
					    <p>
						  +123 456 7890 <br>
						  +123 456 7890
					    </p>

					    <p class="sm-head">
						  <span class="fa fa-envelope"></span>
						  Email
					    </p>
					    <p>
						  free@infoexample.com <br>
						  www.infoexample.com
					    </p>
					</div>
				  </div>
			    </div>
			</div>
		  </div>
	    </div>

	    <div class="footer-bottom">
		  <div class="container">
			<div class="row d-flex">
			    <p class="col-lg-12 footer-text text-center">
				  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
				  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
			</div>
		  </div>
	    </div>
	</footer>
	<!--================ End footer Area  =================-->

	<script src="<c:url value="/staticResources/static/vendors/jquery/jquery-3.2.1.min.js"/>"></script>
	<script src="<c:url value="/staticResources/static/vendors/bootstrap/bootstrap.bundle.min.js"/>"></script>
	<script src="<c:url value="/staticResources/static/vendors/skrollr.min.js"/>"></script>
	<script src="<c:url value="/staticResources/static/vendors/owl-carousel/owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/staticResources/static/vendors/nice-select/jquery.nice-select.min.js"/>"></script>
	<script src="<c:url value="/staticResources/static/vendors/jquery.ajaxchimp.min.js"/>"></script>
	<script src="<c:url value="/staticResources/static/vendors/mail-script.js"/>"></script>
	<script src="<c:url value="/staticResources/static/js/main.js"/>"></script>
</body>
</html>