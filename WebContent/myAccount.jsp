<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="Book Your Travel - Online Booking HTML Template">
	<meta name="description" content="Book Your Travel - Online Booking HTML Template">
	<meta name="author" content="themeenergy.com">
	
	<title>Book Your Travel - My account</title>
	
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
<body class="myaccount">
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
					<li><a href="#" title="Home">Trang Chủ</a></li>
					<li><a href="#" title="My Account">Tài Khoản</a></li>                                    
				</ul>
				<!--//crumbs-->
			</nav>
			<!--//breadcrumbs-->

			<div class="row">
				<!--three-fourth content-->
				<section class="three-fourth">
				
					<h1>Tài Khoản</h1>
					
					<!--inner navigation-->
					<nav class="inner-nav">
						<ul>
							<li><a href="#MyBookings" title="My Bookings">Thông Tin Đặt Hàng</a></li>
							<!-- <li><a href="#MyReviews" title="My Reviews">My Reviews</a></li> -->
							<li><a href="#MySettings" title="Settings">Thông Tin Cá Nhân</a></li>
						</ul>
					</nav>
					<!--//inner navigation-->
						<jsp:useBean id="orderHistor" class="dao.HistoryUserDAO"></jsp:useBean>
					<!--My Bookings-->
					<section id="MyBookings" class="tab-content">
						<!--booking-->
						<c:if test="${orderHistor.getListtourHistor(sessionScope.email).size() == 0 and orderHistor.getListOrderCarHistory(sessionScope.email).size() ==0 }">
							<h1 style="margin-left: 100px">Chưa từng đặt hàng:</h1>
						</c:if>
						
						<c:if test="${orderHistor.getListtourHistor(sessionScope.email).size() >0 }">
						<c:forEach items="${orderHistor.getListtourHistor(sessionScope.email) }" var="order">
								<article class="bookings">
							<h2><a href="#">${order.title }</a></h2>
							<div class="b-info">
								<table>
									<tr>
										<th>ID Order</th>
										<td>${order.idOrder }</td>
									</tr>
									<tr>
										<th>Thời Gian</th>
										<td> ${order.quantityDate } ngày</td>
									</tr>
									<tr>
										<th>Khởi Hành</th>
										<td>${order.timeBegin }</td>
									</tr>
									<tr>
										<th>Nơi Đón</th>
										<td>${order.placePickup }</td>
									</tr>
									<tr>
										<th>Số người</th>
										<td>${order.quantityOrder }</td>
									</tr>
									<tr>
										<th>Tổng Giá:</th>
										<td><strong><f:formatNumber value="${order.totalPrice }" maxFractionDigits="0" minFractionDigits="0"></f:formatNumber> đ</strong></td>
									</tr>
								</table>
							</div>
							
						</article>
						</c:forEach>
							
						</c:if>
						
						
						<!--//booking-->
						<c:if test="${orderHistor.getListOrderCarHistory(sessionScope.email).size() >0 }">
						
							<c:forEach items="${orderHistor.getListOrderCarHistory(sessionScope.email) }" var="order">
								<article class="bookings">
							<h2><a href="#">${order.nameCar }</a></h2>
							<div class="b-info">
								<table>
									<tr>
										<th>ID Order</th>
										<td>${order.idOrder }</td>
									</tr>
									<!-- <tr>
										<th>Số Ghê</th>
										<td>4</td>
									</tr> -->
									<tr>
										<th>Thời Gian Lấy Xe</th>
										<td>${order.timePickUp }</td>
									</tr>
									<tr>
										<th>Địa Điểm Lấy Xe</th>
										<td>${order.placeRecieve }</td>
									</tr>
									<tr>
										<th>Thời Gian Trả Xe</th>
										<td>${order.tiemDropOff }</td>
									</tr>
									<tr>
										<th>Địa Điểm Trả Xe</th>
										<td>${order.placeRender }</td>
									</tr>
									<tr>
										<th>Thuê Lái Xe</th>
										<c:choose>
											<c:when test="${order.stateDriver == 1 }">
												<td>Có</td>
											</c:when>
											<c:otherwise>
												<td>Không</td>
											</c:otherwise>
										</c:choose>
										
									</tr>
									<tr>
										<th>Total Price:</th>
										<td><strong> <f:formatNumber value="${order.totalPrice }" maxFractionDigits="0" minFractionDigits="0"></f:formatNumber> đ</strong></td>
									</tr>
								</table>
							</div>
							
							 
						</article>
							
							</c:forEach>
						</c:if>
						
						<!--booking-->
						
						<!--//booking-->
						 
					</section>
					<!--//My Bookings-->
					
					
					 
					
					<!--MySettings-->
				<c:set var="user" value="${orderHistor.getUser(sessionScope.email) }"></c:set>
					<section id="MySettings" class="tab-content">
						<article class="mysettings">
							<h2>Thông Tin Cá Nhân</h2>
							<table>
								<tr>
									<th>Họ và Tên:</th>
									<td>${user.fullName }
										<!--edit fields-->
										<div class="edit_field" id="field1">
											<label for="new_name">Nhập Tên Mới:</label>
											<form action="updateNameAction" method="post">
											<input type="hidden" name="idUser" value="${user.id }">
											<input type="text" id="new_name" name="fullname"/>
											<input type="submit" value="Lưu" class="gradient-button" id="submit1"/>
											</form>
											<a href="#">Huỷ</a>
										</div>
										<!--//edit fields-->
									</td>
									<td><a href="#field1" class="gradient-button edit">Sửa</a></td>
								</tr>
								<tr>
									<th>Phone:</th>
									<c:choose>
										<c:when test="${user.phoneNumber == 0 }">
											<td>
										</c:when>
										<c:otherwise>
											<td>${user.phoneNumber }
										</c:otherwise>
									</c:choose>
									
										<!--edit fields-->
										<div class="edit_field" id="field2">
											<label for="new_phone">Nhập số mới:</label>
											<form action="updatePhoneAction" method="post">
											<input type="hidden" name="idUser" value="${user.id }">
											<input type="text" id="new_phone" name="phone"/>
											<input type="submit" value="Lưu" class="gradient-button" id="submit2"/>
											</form>
											<a href="#">Huỷ</a>
										</div>
										<!--//edit fields-->
									</td>
									<td><a href="#field2" class="gradient-button edit">Sửa</a></td>
								</tr>
								<tr>
									<th>E-mail : </th>
									<td>${user.email }
										<!--edit fields-->
										<div class="edit_field" id="field3">
											<label for="new_email">Nhập Email Mới:</label>
											<input type="text" id="new_email" readonly="readonly"/>
											<!-- <input type="submit" value="Lưu" class="gradient-button" id="submit3"/> -->
											<a href="#">Huỷ</a>
										</div>
										<!--//edit fields-->
									</td>
									<td><a href="#field3" class="gradient-button edit">Sửa</a></td> 
								</tr>
								<tr>
									<th>Mật Khẩu: </th>
									<td>${user.password }
										<!--edit fields-->
										<div class="edit_field" id="field4">
											<label for="new_password">Nhập mật khẩu mới:</label>
											<form action="updatePasswordAction" method="post">
											<input type="hidden" name="idUser" value="${user.id }">
											<input type="password" id="new_password" name="password"/>											
											<input type="submit" value="Lưu" class="gradient-button" id="submit4"/>
											</form>
											<a href="#">Huỷ</a>
										</div>
										<!--//edit fields-->
									</td>
									<td><a href="#field4" class="gradient-button edit">Sửa</a></td>
								</tr>
								<tr>
									<th>Địa Chỉ:</th>
									<td>${user.address }
										<!--edit fields-->
										<div class="edit_field" id="field5">
											<label for="new_address">Nhập địa chỉ mới:</label>
											<form action="updateAddressAction" method="post">
											<input type="hidden" name="idUser" value="${user.id }">
											<input type="text" id="new_address" name="address"/>
											<input type="submit" value="Lưu" class="gradient-button" id="submit5"/>
											</form>
											<a href="#">Huỷ</a>
										</div>
										<!--//edit fields-->
									</td>
									<td><a href="#field5" class="gradient-button edit">Sửa</a></td>
								</tr>
							</table>

						</article>
					</section>
					<!--//MySettings-->
				</section>
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
					<p><em>E:</em> <a href="#" title="booking@mail.com">booktravel@mail.com</a></p>
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