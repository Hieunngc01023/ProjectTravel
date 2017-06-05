<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="f"  uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="Book Your Travel - Online Booking HTML Template">
	<meta name="description" content="Book Your Travel - Online Booking HTML Template">
	<meta name="author" content="themeenergy.com">
	
	<title>Book Your Travel - Page</title>
	
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/theme-turqoise.css" id="template-color" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800|Roboto+Slab:400,700&subset=latin,latin-ext,greek-ext,greek,cyrillic,vietnamese,cyrillic-ext">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<script src="https://use.fontawesome.com/e808bf9397.js"></script>
	<link rel="shortcut icon" href="images/favicon.ico" />
	
	
	 <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!--- loading animation -->
	<div class="loading">
		<div class="ball"></div>
		<div class="ball1"></div>
	</div>
	<!--- //loading animation -->
	
		<!--header-->
	<header class="header">
		<div class="wrap">
			<!--logo-->
			<div class="logo"><a href="index.html" title="Book Your Travel"><img src="images/txt/logo.png" alt="Book Your Travel" /></a></div>
			<!--//logo-->
			
			<!--ribbon-->
			<div class="ribbon">
				<nav>
					<ul class="profile-nav">
						<li class="active"><a href="#" title="My Account">Tài Khoản</a></li>
						<li><a href="login.html" title="Login">Đăng Nhập</a></li>
						<li><a href="my_account.html" title="Settings">Cài Đặt</a></li>
					</ul>
					<ul class="lang-nav">
						<li class="active"><a href="#" title="VietName">VietNamese</a></li>
						<li><a href="#" title="English ">English</a></li>
					</ul>
				</nav>
			</div>
			<!--//ribbon-->
			
			<!--search-->
			<div class="search">
				<form id="search-form" method="get" action="search-form">
					<input type="search" placeholder="Tìm Kiếm Tour" name="site_search" id="site_search" /> 
					<input type="submit" id="submit-site-search" value="submit-site-search" name="submit-site-search"/>
				</form>
			</div>
			<!--//search-->
			
			<!--contact-->
			<div class="contact">
				<span>Tư Vấn 24/7</span>
				<span class="number">0989-999-888</span>
			</div>
			<!--//contact-->
		</div>
		
		<!--main navigation-->
		<nav class="main-nav">
			<div class="wrap">
				<ul class="slimmenu" id="">
					<li><a href="hotels.html" title="Hotels">Hotels</a>
					</li>
					<li><a href="flights.html" title="Flights">Chuyến Bay</a></li>
					<li><a href="flight_and_hotels.html" title="Flight + Hotel">Bay + Hotel</a></li>
					<li><a href="cruises.html" title="Cruises">Chuyến Đi</a></li>
					<li><a href="car_rentals.html" title="Car rental">Thuê Xe</a></li>
					 <li><a href="contact.html" title="Contact">Liên Hệ</a></li>
					<li><a href="blog.html" title="Blog">Chia Sẻ</a>
						<ul>
							<li><a href="blog_single.html" title="Single Post">Single Post</a>
						</ul>
					</li>
					<li class="has-mega"><a href="#" title="Pages">Page</a>
						<ul class="mega">
							<li>
								<div class="row">
									<div class="one-fifth">
										<p>COMMON PAGES</p>
										<ul>
											<li><a href="page_left_sidebar.html" title="Page with left sidebar">Page with left sidebar</a></li>
											<li><a href="page_right_sidebar.html" title="Page with right sidebar">Page with right sidebar</a></li>
											<li><a href="page_both_sidebars.html" title="Page with both sidebars">Page with both sidebars</a></li>
											<li><a href="page_no_sidebars.html" title="Page with no sidebars">Page with no sidebars</a></li>
										</ul>
									</div>
									<div class="one-fifth">
										<p>LISTING LAYOUTS</p>
										<ul>
											<li><a href="hotels_2col.html" title="Listing 2 columns">Listing 2 columns</a></li>
											<li><a href="hotels_3col.html" title="Listing 3 columns">Listing 3 columns</a></li>
											<li><a href="hotels.html" title="Listing 4 columns">Listing 4 columns</a></li>
											<li><a href="hotel.html" title="Single listing">Single listing</a></li>
										</ul>
									</div>
									<div class="one-fifth">
										<p>USER PAGES</p>
										<ul>
											<li><a href="login.html" title="Login">Login</a></li>
											<li><a href="register.html" title="Register">Register</a></li>
											<li><a href="my_account.html" title="My Account">My account</a></li>
											<li><a href="error.html" title="Error 404">Error 404</a></li>
										</ul>
									</div>
									<div class="one-fifth">
										<p>SPECIALTY PAGES</p>
										<ul>
											<li><a href="search_results.html" title="Search results hotels">Search results hotels</a></li>
											<li><a href="search_results_flights.html" title="Search results flights">Search results flights</a></li>
											<li><a href="get_inspired.html" title="Get inspired">Get inspired</a></li>
											<li><a href="get_inspired_results.html" title="Get inspired results">Get inspired results</a></li>
										</ul>
									</div>
									<div class="one-fifth">
										<p>&nbsp;</p>
										<ul>
											<li><a href="booking-step1html" title="Booking step 1">Booking step 1</a></li>
											<li><a href="booking-step2.html" title="Booking step 2">Booking step 2</a></li>
											<li><a href="booking-step3.html" title="Booking step 3">Booking step 3</a></li>
											<li><a href="loading.html" title="Loading">Loading</a></li>
										</ul>
									</div>
								</div>
							</li>
						</ul>
					</li>
					
				</ul>
			</div>
		</nav>
		<!--//main navigation-->
	</header>
	<!--//header-->
	
	<!--main-->
	<main class="main">		
		<div class="wrap">
			<!--breadcrumbs-->
			<nav class="breadcrumbs">
				<!--crumbs-->
				<ul>
					<li><a href="index.html" title="Home">Home</a></li> 
					<li>Page with right sidebar</li>                                       
				</ul>
				<!--//crumbs-->
			</nav>
			<!--//breadcrumbs-->
			
			<div class="row">
				<!--three-fourth content-->
				<div class="three-fourth">
			 
					
					<div class="row deals  results">
						<c:set var="tours" value="${setTours}"></c:set>
						<c:if test="${tours.size() == 0 }">
							<h1>Không tìm thấy Tour bạn yêu cầu:</h1>
						</c:if>
						<c:forEach items="${setTours }" var="tour">
							<article class="one-third promo">
								<div class="ribbon-small">- <f:formatNumber value="${(tour.virtualPrice - tour.realPrice)*100/tour.virtualPrice }" minFractionDigits="0" maxFractionDigits="0"></f:formatNumber>%</div>
								<figure><a href="#" title=""><img src="images/uploads/cruise1.jpg" alt="" /></a></figure>
								<div class="details">
									<h3>${tour.title }</h3>
									 <span class="price">Giá :	  <em style="text-decoration: line-through;"> <f:formatNumber value="${tour.virtualPrice }" minFractionDigits="0" maxFractionDigits="0"></f:formatNumber>  VND </em> <em> <f:formatNumber value="${tour.realPrice }" minFractionDigits="0" maxFractionDigits="0" ></f:formatNumber> VND | </em>  </span>
									<div class="description">
										 <span class="price"> 20/5/2017 <em>5 Ngày</em></span>
									</div>
									<a href="DetailTravel.jsp?idTour=${tour.idTourDetail}" title="Book now" class="gradient-button"> Đặt Vé</a>
								</div>
							</article>
						</c:forEach>
					
						<!--deal-->
							<!-- <article class="one-third promo">
								<div class="ribbon-small">- 10%</div>
								<figure><a href="#" title=""><img src="images/uploads/cruise1.jpg" alt="" /></a></figure>
								<div class="details">
									<h3>Royal Caribbean</h3>
									 <span class="price">Giá :	  <em style="text-decoration: line-through;"> $1000   </em> <em>$ 500 | </em>  </span>
									<div class="description">
										 <span class="price"> 20/5/2017 <em>5 Ngày</em></span>
									</div>
									<a href="DetailTravel.html" title="Book now" class="gradient-button"> Đặt Vé</a>
								</div>
							</article>
							//deal
						deal
							<article class="one-third promo">
								<div class="ribbon-small">- 10%</div>
								<figure><a href="#" title=""><img src="images/uploads/cruise1.jpg" alt="" /></a></figure>
								<div class="details">
									<h3>Royal Caribbean</h3>
									 <span class="price">Giá :	  <em style="text-decoration: line-through;"> $1000   </em> <em>$ 500 | </em>  </span>
									<div class="description">
										 <span class="price"> 20/5/2017 <em>5 Ngày</em></span>
									</div>
									<a href="DetailTravel.html" title="Book now" class="gradient-button"> Đặt Vé</a>
								</div>
							</article>
							//deal
							deal
							<article class="one-third promo">
								<div class="ribbon-small">- 10%</div>
								<figure><a href="#" title=""><img src="images/uploads/cruise1.jpg" alt="" /></a></figure>
								<div class="details">
									<h3>Royal Caribbean</h3>
									 <span class="price">Giá :	  <em style="text-decoration: line-through;"> $1000   </em> <em>$ 500 | </em>  </span>
									<div class="description">
										 <span class="price"> 20/5/2017 <em>5 Ngày</em></span>
									</div>
									<a href="DetailTravel.html" title="Book now" class="gradient-button"> Đặt Vé</a>
								</div>
							</article>
							//deal
							deal
							<article class="one-third promo">
								<div class="ribbon-small">- 10%</div>
								<figure><a href="#" title=""><img src="images/uploads/cruise1.jpg" alt="" /></a></figure>
								<div class="details">
									<h3>Royal Caribbean</h3>
									 <span class="price">Giá :	  <em style="text-decoration: line-through;"> $1000   </em> <em>$ 500 | </em>  </span>
									<div class="description">
										 <span class="price"> 20/5/2017 <em>5 Ngày</em></span>
									</div>
									<a href="DetailTravel.html" title="Book now" class="gradient-button"> Đặt Vé</a>
								</div>
							</article>
							//deal
							deal
							<article class="one-third promo">
								<div class="ribbon-small">- 10%</div>
								<figure><a href="#" title=""><img src="images/uploads/cruise1.jpg" alt="" /></a></figure>
								<div class="details">
									<h3>Royal Caribbean</h3>
									 <span class="price">Giá :	  <em style="text-decoration: line-through;"> $1000   </em> <em>$ 500 | </em>  </span>
									<div class="description">
										 <span class="price"> 20/5/2017 <em>5 Ngày</em></span>
									</div>
									<a href="DetailTravel.html" title="Book now" class="gradient-button"> Đặt Vé</a>
								</div>
							</article>
							//deal
							deal
							<article class="one-third promo">
								<div class="ribbon-small">- 10%</div>
								<figure><a href="#" title=""><img src="images/uploads/cruise1.jpg" alt="" /></a></figure>
								<div class="details">
									<h3>Royal Caribbean</h3>
									 <span class="price">Giá :	  <em style="text-decoration: line-through;"> $1000   </em> <em>$ 500 | </em>  </span>
									<div class="description">
										 <span class="price"> 20/5/2017 <em>5 Ngày</em></span>
									</div>
									<a href="DetailTravel.html" title="Book now" class="gradient-button"> Đặt Vé</a>
								</div>
							</article> -->
							<!--//deal-->
							
						<!-- <div class="bottom-nav">
							back up button
							<a href="#" class="scroll-to-top" title="Back up">Back up</a> 
							//back up button
							
							pager
							<div class="pager">
								<span><a href="#">First page</a></span>
								<span><a href="#">&lt;</a></span>
								<span class="current">1</span>
								<span><a href="#">2</a></span>
								<span><a href="#">3</a></span>
								<span><a href="#">4</a></span>
								<span><a href="#">5</a></span>
								<span><a href="#">6</a></span>
								<span><a href="#">7</a></span>
								<span><a href="#">8</a></span>
								<span><a href="#">&gt;</a></span>
								<span><a href="#">Last page</a></span>
							</div>
							//pager
						</div> -->
						<!--//bottom navigation-->
					</div>
				</div>
				<!--//three-fourth content-->
				
				<!--sidebar-->
				<aside class="one-fourth right-sidebar">
						<!--Need Help Booking?-->
					<article class="widget">
						<h4>Bạn Cần Trợ Giúp?</h4>
						<p>Hãy gọi tới số dưới đây , Nhân viên của chúng tôi sẽ cung cấp các thông tin cho bạn nhanh nhất và dịch vu tốt nhất, Cảm ơn bạn đã tới <a href="#">BookTravel</a></p>
						<p class="number" style="color: #858585;font-size: 18px;">0989-999-888</p>
					</article>
					<!--//Need Help Booking?-->
					
					<!--Why Book with us?-->
					<article class="widget">
						<h4>Tại Sao Chọn BookTravel ?</h4>
						<h5>DỊCH VỤ KHÁCH HÀNG TỐT NHẤT</h5>
						<p>Đội ngũ nhân viên tận tâm, chuyên nghiệp</p>
						<h5>THANH TOÁN AN TOÀN VÀ LINH HOẠT</h5>
						<p>Liên kết với các tổ chức tài chính</p>
						<h5>LUÔN CÓ MỨC GIÁ TỐT NHẤT</h5>
						<p>Bảo đảm giá tốt</p>
						<h5>SẢN PHẨM ĐA DẠNG, CHẤT LƯỢNG</h5>
						<p>Đạt chất lượng tốt nhất</p>
						<h5>ĐẶT TOUR DỄ DÀNG VÀ NHANH CHÓNG</h5>
						<p>Đặt tour chỉ với 3 bước</p>
						<h5>HỖ TRỢ 24/7</h5>
						<p>Hotline & Hỗ trợ trực tuyến</p>
					</article>
					<!--//Why Book with us?-->
				</aside>
				<!--//sidebar-->
			</div>
			<!--//main content-->
		</div>
	</main>
	<!--//main-->
	
	<!--footer-->
	<footer class="footer">
		<div class="wrap">
			<div class="row">
				<!--column-->
				<article class="one-fourth">
					<h6>Book Travel</h6>
					<p>Số 8-Tôn Thất Thuyết - Hà Nội </p>
					<p><em>P:</em> Tư Vấn 24/7: 0989-999-888</p>
					<p><em>E:</em> <a href="#" title="booking@mail.com">Angrycat@mail.com</a></p>
				</article>
				<!--//column-->
				<!--column-->
				<article class="one-fourth">
					<h6>Follow us</h6>
					<ul class="social">
							<li><a href="#" title="facebook"><i class="fa fa-fw fa-facebook"></i></a></li>
							<li><a href="#" title="youtube"><i class="fa  fa-fw fa-youtube"></i></a></li>
							<li><a href="#" title="gplus"><i class="fa fa-fw fa-google-plus"></i></a></li>
							<li><a href="#" title="twitter"><i class="fa fa-fw fa-twitter"></i></a></li>
						</ul>
				</article>
				<!--//column-->
				
				<!--column-->
				<article class="one-fourth">
					<h6>Đăng ký Email để nhận thông tin khuyến mãi mới nhất </h6>
					<form id="newsletter" action="newsletter.php" method="post">
						<fieldset>
							<input type="email" id="newsletter_signup" name="newsletter_signup" placeholder="Nhập Email của Bạn" />
							<input type="submit" id="newsletter_submit" name="newsletter_submit" value="Đăng Kí" class="gradient-button" />
						</fieldset>
					</form>
				</article>
				<!--//column-->
				
				<div class="bottom full-width">
					<p class="copy">Copyright 2016 Angry Cat travel . All rights By Lee Anh </p>
					<nav>
						<ul>
							<li><a href="#" title="About us">About us</a></li>
							<li><a href="contact.html" title="Contact">Contact</a></li>
							<li><a href="#" title="Partners">Partners</a></li>
							<li><a href="#" title="Customer service">Customer service</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</footer>
	<!---footer-->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/jquery.uniform.min.js"></script>
	<script type="text/javascript" src="js/jquery.slimmenu.min.js"></script>
	<script type="text/javascript" src="js/scripts.js"></script>
</body>
</html>