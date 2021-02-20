<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Aroma Shop - Home</title>
  <link rel="icon" href="<c:url value="/staticResources/static/img/Fevicon.png"/>" type="image/png">
  <link rel="stylesheet" href="<c:url value="/staticResources/static/vendors/bootstrap/bootstrap.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/staticResources/static/vendors/fontawesome/css/all.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/staticResources/static/vendors/themify-icons/themify-icons.css"/>">
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

    <main class="site-main">

    	<!--================ Hero banner start =================-->
	  <section class="hero-banner">
		<div class="container">
		      <div class="row no-gutters align-items-center pt-60px">
			    <div class="col-5 d-none d-sm-block">
				  <div class="hero-banner__img">
					<img class="img-fluid" src="<c:url value="/staticResources/static/img/home/hero-banner.png"/>" alt="">
				  </div>
			    </div>
			    <div class="col-sm-7 col-lg-6 offset-lg-1 pl-4 pl-md-5 pl-lg-0">
				  <div class="hero-banner__content">
					<h4>Shop is fun</h4>
					<h1>Browse Our Premium Product</h1>
					<p>Us which over of signs divide dominion deep fill bring they're meat beho upon own earth without morning over third. Their male dry. They are great appear whose land fly grass.</p>
					<a class="button button-hero" href="#">Browse Now</a>
				  </div>
			    </div>
		      </div>
		</div>
	  </section>
    	<!--================ Hero banner start =================-->



    	<!-- ================ trending product section start ================= -->
	  <section class="section-margin calc-60px">
		<div class="container">

		      <div class="section-intro pb-60px">
			    <p>Popular Item in the market</p>
			    <h2>Trending <span class="section-intro__style">Product</span></h2>
		      </div>

		      <div class="row">
			    <c:forEach var="childrenList" items="${childrenProductsList}" varStatus="status">
				  <div class="col-md-6 col-lg-4 col-xl-3">
					<div class="card text-center card-product">
					      <div class="card-product__img">
						    <img class="card-img" src="/rock/index/display/<c:out value='${childrenList.id}'/>" alt="">
						    <ul class="card-product__imgOverlay">
							  <li><button><i class="ti-search"></i></button></li>
							  <li><button><i class="ti-shopping-cart"></i></button></li>
							  <li><button><i class="ti-heart"></i></button></li>
						    </ul>
					      </div>
					      <div class="card-body">
						    <p>${childrenList.categoryChildren.subCategoryNames}</p>
						    <h4 class="card-product__title"><a href="<c:url value="/rock/single-product/children?productId=${childrenList.id}"/>">${childrenList.productName}</a></h4>
						    <p class="card-product__price">${childrenList.price}$</p>
					      </div>
					</div>
				  </div>
			    </c:forEach>
		      </div>
		</div>
	  </section>
    	<!-- ================ trending product section end ================= -->


    	<!-- ================ offer section start ================= -->
	  <section class="offer" id="parallax-1" data-anchor-target="#parallax-1" data-300-top="background-position: 20px 30px" data-top-bottom="background-position: 0 20px">
		<div class="container">
		      <div class="row">
			    <div class="col-xl-5">
				  <div class="offer__content text-center">
					<h3>Up To 50% Off</h3>
					<h4>Winter Sale</h4>
					<p>Him she'd let them sixth saw light</p>
					<a class="button button--active mt-3 mt-xl-4" href="#">Shop Now</a>
				  </div>
			    </div>
		      </div>
		</div>
	  </section>
    	<!-- ================ offer section end ================= -->

    	<!-- ================ Best Selling item  carousel ================= -->
	  <section class="section-margin calc-60px">
		<div class="container">
		      <div class="section-intro pb-60px">
			    <p>Popular Item in the market</p>
			    <h2>Best <span class="section-intro__style">Sellers</span></h2>
		      </div>
		      <div class="owl-carousel owl-theme" id="bestSellerCarousel">
			    <div class="card text-center card-product">
				  <div class="card-product__img">
					<img class="img-fluid" src="<c:url value="/staticResources/static/img/product/product1.png"/>" alt="">
					<ul class="card-product__imgOverlay">
					      <li><button><i class="ti-search"></i></button></li>
					      <li><button><i class="ti-shopping-cart"></i></button></li>
					      <li><button><i class="ti-heart"></i></button></li>
					</ul>
				  </div>
				  <div class="card-body">
					<p>Accessories</p>
					<h4 class="card-product__title"><a href="<c:url value="/rock/single-product"/>">Quartz Belt Watch</a></h4>
					<p class="card-product__price">$150.00</p>
				  </div>
			    </div>

			    <div class="card text-center card-product">
				  <div class="card-product__img">
					<img class="img-fluid" src="<c:url value="/staticResources/static/img/product/product2.png"/>" alt="">
					<ul class="card-product__imgOverlay">
					      <li><button><i class="ti-search"></i></button></li>
					      <li><button><i class="ti-shopping-cart"></i></button></li>
					      <li><button><i class="ti-heart"></i></button></li>
					</ul>
				  </div>
				  <div class="card-body">
					<p>Beauty</p>
					<h4 class="card-product__title"><a href="<c:url value="/rock/single-product"/>">Women Freshwash</a></h4>
					<p class="card-product__price">$150.00</p>
				  </div>
			    </div>

			    <div class="card text-center card-product">
				  <div class="card-product__img">
					<img class="img-fluid" src="<c:url value="/staticResources/static/img/product/product3.png"/>" alt="">
					<ul class="card-product__imgOverlay">
					      <li><button><i class="ti-search"></i></button></li>
					      <li><button><i class="ti-shopping-cart"></i></button></li>
					      <li><button><i class="ti-heart"></i></button></li>
					</ul>
				  </div>
				  <div class="card-body">
					<p>Decor</p>
					<h4 class="card-product__title"><a href="<c:url value="/rock/single-product"/>">Room Flash Light</a></h4>
					<p class="card-product__price">$150.00</p>
				  </div>
			    </div>

			    <div class="card text-center card-product">
				  <div class="card-product__img">
					<img class="img-fluid" src="<c:url value="/staticResources/static/img/product/product4.png"/>" alt="">
					<ul class="card-product__imgOverlay">
					      <li><button><i class="ti-search"></i></button></li>
					      <li><button><i class="ti-shopping-cart"></i></button></li>
					      <li><button><i class="ti-heart"></i></button></li>
					</ul>
				  </div>
				  <div class="card-body">
					<p>Decor</p>
					<h4 class="card-product__title"><a href="<c:url value="/rock/single-product"/>">Room Flash Light</a></h4>
					<p class="card-product__price">$150.00</p>
				  </div>
			    </div>

			    <div class="card text-center card-product">
				  <div class="card-product__img">
					<img class="img-fluid" src="<c:url value="/staticResources/static/img/product/product1.png"/>" alt="">
					<ul class="card-product__imgOverlay">
					      <li><button><i class="ti-search"></i></button></li>
					      <li><button><i class="ti-shopping-cart"></i></button></li>
					      <li><button><i class="ti-heart"></i></button></li>
					</ul>
				  </div>
				  <div class="card-body">
					<p>Accessories</p>
					<h4 class="card-product__title"><a href="<c:url value="/rock/single-product"/>">Quartz Belt Watch</a></h4>
					<p class="card-product__price">$150.00</p>
				  </div>
			    </div>

			    <div class="card text-center card-product">
				  <div class="card-product__img">
					<img class="img-fluid" src="<c:url value="/staticResources/static/img/product/product2.png"/>" alt="">
					<ul class="card-product__imgOverlay">
					      <li><button><i class="ti-search"></i></button></li>
					      <li><button><i class="ti-shopping-cart"></i></button></li>
					      <li><button><i class="ti-heart"></i></button></li>
					</ul>
				  </div>
				  <div class="card-body">
					<p>Beauty</p>
					<h4 class="card-product__title"><a href="<c:url value="/rock/single-product"/>">Women Freshwash</a></h4>
					<p class="card-product__price">$150.00</p>
				  </div>
			    </div>

			    <div class="card text-center card-product">
				  <div class="card-product__img">
					<img class="img-fluid" src="<c:url value="/staticResources/static/img/product/product3.png"/>" alt="">
					<ul class="card-product__imgOverlay">
					      <li><button><i class="ti-search"></i></button></li>
					      <li><button><i class="ti-shopping-cart"></i></button></li>
					      <li><button><i class="ti-heart"></i></button></li>
					</ul>
				  </div>
				  <div class="card-body">
					<p>Decor</p>
					<h4 class="card-product__title"><a href="<c:url value="/rock/single-product"/>">Room Flash Light</a></h4>
					<p class="card-product__price">$150.00</p>
				  </div>
			    </div>

			    <div class="card text-center card-product">
				  <div class="card-product__img">
					<img class="img-fluid" src="<c:url value="/staticResources/static/img/product/product4.png"/>" alt="">
					<ul class="card-product__imgOverlay">
					      <li><button><i class="ti-search"></i></button></li>
					      <li><button><i class="ti-shopping-cart"></i></button></li>
					      <li><button><i class="ti-heart"></i></button></li>
					</ul>
				  </div>
				  <div class="card-body">
					<p>Decor</p>
					<h4 class="card-product__title"><a href="<c:url value="/rock/single-product"/>">Room Flash Light</a></h4>
					<p class="card-product__price">$150.00</p>
				  </div>
			    </div>
		      </div>
		</div>
	  </section>
    	<!-- ================ Best Selling item  carousel end ================= -->

    	<!-- ================ Blog section start ================= -->
	  <section class="blog">
		<div class="container">
		    <div class="section-intro pb-60px">
			  <p>Popular Item in the market</p>
			  <h2>Latest <span class="section-intro__style">News</span></h2>
		    </div>

		    <div class="row">
			  <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
				<div class="card card-blog">
				    <div class="card-blog__img">
					  <img class="card-img rounded-0" src="<c:url value="/staticResources/static/img/blog/blog1.png"/>" alt="">
				    </div>
				    <div class="card-body">
					  <ul class="card-blog__info">
						<li><a href="#">By Admin</a></li>
						<li><a href="#"><i class="ti-comments-smiley"></i> 2 Comments</a></li>
					  </ul>
					  <h4 class="card-blog__title"><a href="single-blog.jsp">The Richland Center Shooping News and weekly shooper</a></h4>
					  <p>Let one fifth i bring fly to divided face for bearing divide unto seed. Winged divided light Forth.</p>
					  <a class="card-blog__link" href="#">Read More <i class="ti-arrow-right"></i></a>
				    </div>
				</div>
			  </div>

			  <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
				<div class="card card-blog">
				    <div class="card-blog__img">
					  <img class="card-img rounded-0" src="<c:url value="/staticResources/static/img/blog/blog2.png"/>" alt="">
				    </div>
				    <div class="card-body">
					  <ul class="card-blog__info">
						<li><a href="#">By Admin</a></li>
						<li><a href="#"><i class="ti-comments-smiley"></i> 2 Comments</a></li>
					  </ul>
					  <h4 class="card-blog__title"><a href="single-blog.jsp">The Shopping News also offers top-quality printing services</a></h4>
					  <p>Let one fifth i bring fly to divided face for bearing divide unto seed. Winged divided light Forth.</p>
					  <a class="card-blog__link" href="#">Read More <i class="ti-arrow-right"></i></a>
				    </div>
				</div>
			  </div>

			  <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
				<div class="card card-blog">
				    <div class="card-blog__img">
					  <img class="card-img rounded-0" src="<c:url value="/staticResources/static/img/blog/blog3.png"/>" alt="">
				    </div>
				    <div class="card-body">
					  <ul class="card-blog__info">
						<li><a href="#">By Admin</a></li>
						<li><a href="#"><i class="ti-comments-smiley"></i> 2 Comments</a></li>
					  </ul>
					  <h4 class="card-blog__title"><a href="<c:url value="/rock/single-blog"/>">Professional design staff and efficient equipment you’ll find we offer</a></h4>
					  <p>Let one fifth i bring fly to divided face for bearing divide unto seed. Winged divided light Forth.</p>
					  <a class="card-blog__link" href="#">Read More <i class="ti-arrow-right"></i></a>
				    </div>
				</div>
			  </div>
		    </div>
		</div>
	  </section>
    	<!-- ================ Blog section end ================= -->

    	<!-- ================ Subscribe section start ================= -->
	  <section class="subscribe-position">
		<div class="container">
		    <div class="subscribe text-center">
			  <h3 class="subscribe__title">Get Update From Anywhere</h3>
			  <p>Bearing Void gathering light light his eavening unto dont afraid</p>
			  <div id="mc_embed_signup">
				<form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe-form form-inline mt-5 pt-1">
				    <div class="form-group ml-sm-auto">
					  <input class="form-control mb-1" type="email" name="EMAIL" placeholder="Enter your email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '" >
					  <div class="info"></div>
				    </div>
				    <button class="button button-subscribe mr-auto mb-1" type="submit">Subscribe Now</button>
				    <div style="position: absolute; left: -5000px;">
					  <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
				    </div>

				</form>
			  </div>

		    </div>
		</div>
	  </section>
    	<!-- ================ Subscribe section end ================= -->

    </main>


    <!--================ Start footer Area  =================-->
    <footer class="footer">
	  <div class="footer-area">
		<div class="container">
		    <div class="row section_gap">
			  <div class="col-lg-3 col-md-6 col-sm-6">
				<div class="single-footer-widget tp_widgets">
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
					  <li><a href="<c:url value="/rock/index"/>">Home</a></li>
					  <li><a href="#">Shop</a></li>
					  <li><a href="<c:url value="/rock/blog"/>">Blog</a></li>
					  <li><a href="#">Product</a></li>
					  <li><a href="#">Brand</a></li>
					  <li><a href="<c:url value="/rock/contact"/>">Contact</a></li>
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