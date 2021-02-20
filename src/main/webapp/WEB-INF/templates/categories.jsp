<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Aroma Shop - Category</title>
  <link rel="icon" href="<c:url value="/resource/static/img/Fevicon.png"/>" type="image/png">
  <link rel="stylesheet" href="<c:url value="/resource/static/vendors/bootstrap/bootstrap.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resource/static/vendors/fontawesome/css/all.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resource/static/vendors/themify-icons/themify-icons.css"/>">
  <link rel="stylesheet" href="<c:url value="/resource/static/vendors/linericon/style.css"/>">
  <link rel="stylesheet" href="<c:url value="/resource/static/vendors/owl-carousel/owl.theme.default.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resource/static/vendors/owl-carousel/owl.carousel.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resource/static/vendors/nice-select/nice-select.css"/>">
  <link rel="stylesheet" href="<c:url value="/resource/static/vendors/nouislider/nouislider.min.css"/>">
  <link rel="stylesheet" href="<c:url value="/resource/static/css/style.css"/>">
</head>
<body>
      <!--================ Start Header Menu Area =================-->
      <header class="header_area">
        <div class="main_menu">
          <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">
              <a class="navbar-brand logo_h" href="<c:url value="/rock/index"/>"><img src="<c:url value="/resource/static/img/logo.png"/>" alt=""></a>
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
      <section class="blog-banner-area" id="category">
        <div class="container h-100">
          <div class="blog-banner">
            <div class="text-center">
              <h1>Shop Category</h1>
              <nav aria-label="breadcrumb" class="banner-breadcrumb">
                <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a th:href="@{/rock/index}">Home</a></li>
                  <li class="breadcrumb-item active" aria-current="page">Shop Category</li>
                </ol>
              </nav>
            </div>
          </div>
        </div>
      </section>
      <!-- ================ end banner area ================= -->

      <!--================ Hero Carousel start =================-->
      <section class="section-margin mt-0" style="padding-top: 80px;">
        <div class="owl-carousel owl-theme hero-carousel">
          <div class="hero-carousel__slide">
            <img src="<c:url value="/resource/static/img/for_ch.jpg"/>" alt="" class="img-fluid">
            <a href="<c:url value="/rock/category/children"/>" class="hero-carousel__slideOverlay">
              <h3>Для детей</h3>
            </a>
          </div>
          <div class="hero-carousel__slide">
            <img src="<c:url value="/resource/static/img/formen.jpg"/>" alt="" class="img-fluid">
            <a href="<c:url value="/rock/category/men"/>" class="hero-carousel__slideOverlay">
              <h3>Для мужчин</h3>
            </a>
          </div>
          <div class="hero-carousel__slide">
            <img src="<c:url value="/resource/static/img/home/hero-slide3.png"/>" alt="" class="img-fluid">
            <a href="#" class="hero-carousel__slideOverlay">
              <h3>Wireless Headphone</h3>
              <p>Accessories Item</p>
            </a>
          </div>
        </div>
      </section>
      <!--================ Hero Carousel end =================-->

      <!-- ================ Subscribe section start ================= -->
<%--      <section class="subscribe-position">--%>
<%--        <div class="container">--%>
<%--          <div class="subscribe text-center">--%>
<%--            <h3 class="subscribe__title">Get Update From Anywhere</h3>--%>
<%--            <p>Bearing Void gathering light light his eavening unto dont afraid</p>--%>
<%--            <div id="mc_embed_signup">--%>
<%--              <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe-form form-inline mt-5 pt-1">--%>
<%--                <div class="form-group ml-sm-auto">--%>
<%--                  <input class="form-control mb-1" type="email" name="EMAIL" placeholder="Enter your email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '" >--%>
<%--                  <div class="info"></div>--%>
<%--                </div>--%>
<%--                <button class="button button-subscribe mr-auto mb-1" type="submit">Subscribe Now</button>--%>
<%--                <div style="position: absolute; left: -5000px;">--%>
<%--                  <input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">--%>
<%--                </div>--%>
<%--              </form>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
<%--      </section>--%>
      <!-- ================ Subscribe section end ================= -->


      <!--================ Start footer Area  =================-->
      <footer>
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
                    <li><img src="<c:url value="/resource/static/img/gallery/r1.jpg"/>" alt=""></li>
                    <li><img src="<c:url value="/resource/static/img/gallery/r2.jpg"/>" alt=""></li>
                    <li><img src="<c:url value="/resource/static/img/gallery/r3.jpg"/>" alt=""></li>
                    <li><img src="<c:url value="/resource/static/img/gallery/r5.jpg"/>" alt=""></li>
                    <li><img src="<c:url value="/resource/static/img/gallery/r7.jpg"/>" alt=""></li>
                    <li><img src="<c:url value="/resource/static/img/gallery/r8.jpg"/>" alt=""></li>
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



      <script src="<c:url value="/resource/static/vendors/jquery/jquery-3.2.1.min.js"/>"></script>
      <script src="<c:url value="/resource/static/vendors/bootstrap/bootstrap.bundle.min.js"/>"></script>
      <script src="<c:url value="/resource/static/vendors/skrollr.min.js"/>"></script>
      <script src="<c:url value="/resource/static/vendors/owl-carousel/owl.carousel.min.js"/>"></script>
      <script src="<c:url value="/resource/static/vendors/nice-select/jquery.nice-select.min.js"/>"></script>
      <script src="<c:url value="/resource/static/vendors/nouislider/nouislider.min.js"/>"></script>
      <script src="<c:url value="/resource/static/vendors/jquery.ajaxchimp.min.js"/>"></script>
      <script src="<c:url value="/resource/static/vendors/mail-script.js"/>"></script>
      <script src="<c:url value="/resource/static/js/main.js"/>"></script>
      <script src="<c:url value="/resource/static/js/popper.min.js"/>"></script>
      <script src="<c:url value="/resource/static/js/jquery.easing.1.3.js"/>"></script>
      <script src="<c:url value="/resource/static/js/jquery.waypoints.min.js"/>"></script>
      <script src="<c:url value="/resource/static/js/jquery.flexslider-min.js"/>"></script>
      <script src="<c:url value="/resource/static/js/jquery.magnific-popup.min.js"/>"></script>
      <script src="<c:url value="/resource/static/js/magnific-popup-options.js"/>"></script>
      <script src="<c:url value="/resource/static/js/bootstrap-datepicker.js"/>"></script>
      <script src="<c:url value="/resource/static/js/jquery.stellar.min.js"/>"></script>
</body>
</html>