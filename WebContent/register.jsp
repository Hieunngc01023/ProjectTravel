<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="Book Your Travel - Online Booking HTML Template">
	<meta name="description" content="Book Your Travel - Online Booking HTML Template">
	<meta name="author" content="themeenergy.com">
	
	<title>Book Your Travel - Home</title>
	
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/theme-turqoise.css" id="template-color" />
	<link rel="stylesheet" href="css/lightslider.min.css" />
	<link rel="stylesheet" href="bootstrap/css/bootstrap.css" />
	<link rel="stylesheet" href="css/font-awesome.css" />
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
<body class="body1"> 
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
						<li><a href="login.jsp" title="Login">Đăng Nhập</a></li>
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
					<li><a href="car.jsp" title="Car rental">Thuê Xe</a></li>
					 <li><a href="contact.jsp" title="Contact">Liên Hệ</a></li>
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
	
	<!--slider-->
	<div class="slider">
		<ul id="hero-gallery" class="cS-hidden">
			<li data-thumb="images/uploads/slider.jpg"> 
				<img src="images/uploads/slider4.jpg" alt="" />
			</li>
			<li data-thumb="images/uploads/slider.jpg"> 
				<img src="images/uploads/slider5.jpg" alt="" />
			</li>
			<li data-thumb="images/uploads/slider.jpg"> 
				<img src="images/uploads/slider6.jpg" alt="" />
			</li>	
		</ul>
	</div>
	<!--//slider-->
	
	<!--search-->
	<div class="main-search">
		<div class="wrap">
		
			<form id="main-search" method="post" action="search_results.html">
				<div class="row">
					<!--column-->
					<div class="column radios one-fourth">
						<h5><span>01</span> Chọn Loại Tìm Kiếm ?</h5>
						<div class="row">
							<div class="f-item one-half">
								<input type="radio" name="radio" id="hotel" value="form1" />
								<label for="hotel">Hotel</label>
							</div>
							<div class="f-item one-half">
								<input type="radio" name="radio" id="flight" value="form3" />
								<label for="flight">Chuyến Bay</label>
							</div>
							<div class="f-item one-half">
								<input type="radio" name="radio" id="cruise" value="form4" />
								<label for="cruise">Chuyến Đi</label>
							</div>
							<div class="f-item one-half">
								<input type="radio" name="radio" id="rent_a_car" value="form6" />
								<label for="rent_a_car">Thuê Xe</label>
							</div>
						</div>
					</div>
					<!--//column-->
					
					<div class="three-fourth">
						<!--form hotel-->
						<div class="form row" id="form1">
							<!--column-->
							<div class="column one-third">
								<h5><span>02</span> Chọn Điểm Đến ?</h5>
								<div class="row">
									<div class="f-item full-width">
										<label for="destination1">Chọn Địa Điểm</label>
										<input type="text" placeholder="Thành phố, khu vực, quận huyện" id="destination1" name="destination" />
									</div>
								</div>
							</div>
							<!--//column-->
							
							<!--column-->
							<div class="column  one-third">
								<h5><span>03</span> Chọn Thời Gian ?</h5>
								<div class="row">
									<div class="f-item one-half datepicker">
										<label for="datepicker1">Ngày Nhận Phòng</label>
										<div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker1" name="datepicker1" /></div>
									</div>
									<div class="f-item one-half datepicker">
										<label for="datepicker2">Ngày Trả Phòng</label>
										<div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker2" name="datepicker2" /></div>
									</div>
								</div>
							</div>
							<!--//column-->
						
							<!--column-->
							<div class="column one-third">
								<h5><span>04</span> Những Ai?</h5>
								<div class="row">
									<div class="f-item one-third spinner">
										<label for="spinner1">Phòng</label>
										<input type="text" id="spinner1" placeholder="Số phòng" name="spinner1" />
									</div>
									<div class="f-item one-third spinner">
										<label for="spinner2">Người Lớn</label>
										<input type="text"  id="spinner2" placeholder="Số lượng" name="spinner1" />
									</div>
									<div class="f-item one-third spinner">
										<label for="spinner3">Trẻ Em</label>
										<input type="text" id="spinner3" placeholder="Số lượng" name="spinner1" />
									</div>
								</div>
							</div>
							<!--//column-->
						</div>	
						<!--//form hotel-->

						
						<!--form flight-->
						<div class="form row" id="form3">
							<!--column-->
							<div class="column one-third">
								<h5><span>02</span> Chọn Điểm Đến ?</h5>
								<div class="row">
									<div class="f-item full-width">
										<label for="destination3">Điểm Khởi Hành</label>
										<input type="text" placeholder="Thành phố, khu vực, quận huyện" id="destination3" name="destination" />
									</div>
									<div class="f-item full-width">
										<label for="destination4">Điểm Đến</label>
										<input type="text" placeholder="Thành phố, khu vực, quận huyện" id="destination4" name="destination" />
									</div>
								</div>
							</div>
							<!--//column-->
							
							<!--column-->
							<div class="column one-third">
								<h5><span>03</span> Chọn Thời Gian ?</h5>
								<div class="row">
									<div class="f-item full-width datepicker">
										<label for="datepicker6">Khởi Hành</label>
										<div class="row">
											<div class="f-item one-half">
												<div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker6" name="datepicker6" /></div>
											</div>
											<div class="f-item one-half">
												<select>
													<option>Select time</option>
													<option>Lowest fare</option>
													<option>Morning</option>
													<option>Midday</option>
													<option>Afternoon</option>
													<option>Evening</option>
												</select>
											</div>
										</div>
									</div>
									<div class="f-item full-width datepicker">
										<label for="datepicker7">Thời Gian Đến</label>
										<div class="row">
											<div class="f-item one-half">
												<div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker7" name="datepicker7" /></div>
											</div>
											<div class="f-item one-half">
												<select>
													<option>Select time</option>
													<option>Lowest fare</option>
													<option>Morning</option>
													<option>Midday</option>
													<option>Afternoon</option>
													<option>Evening</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--//column-->
						
							<!--column-->
							<div class="column one-third">
								<h5><span>04</span> Những Ai?</h5>
								<div class="row">
									<div class="f-item one-third spinner">
										<label for="spinner6">Người Lớn</label>
										<input type="text" placeholder="" id="spinner6" name="spinner6" />
									</div>
									<div class="f-item one-third spinner">
										<label for="spinner7">Trẻ Nhỏ</label>
										<input type="text" placeholder="" id="spinner7" name="spinner7" />
									</div>
									<div class="f-item one-third spinner">
										<label for="spinner8">Sơ Sinh</label>
										<input type="text" placeholder="" id="spinner8" name="spinner8" />
									</div>
								</div>
							</div>
							<!--//column-->
						</div>	
						<!--//form flight-->
						
						<!--form cruise-->
						<div class="form row" id="form4">
							<!--column-->
							<div class="column  one-third">
								<h5><span>02</span> Chọn Điểm Đến ?</h5>
								
								<div class="row">
								<div class="f-item full-width">
 										<label>Chọn Điểm Đón</label>
 										<select name="pickUpPlace">
 											<option value="Hà Nội">Hà Nội</option>
 											<option value="Hồ Chí Minh">Hồ Chí Minh</option>											
 										</select>
 									</div>
								
									<div class="f-item full-width">
									
										<label>Chọn Điểm Đến</label>
										<select name = "dropOffPlace">
											<option>Lấy Các điểm điểm Việt nam</option>											
 											<option value="Hà Nội">Hà Nội</option>
 											<option value="Đà Nẵng">Đà Nẵng</option>
 											<option value="Huế">Huế</option>
 											<option value="Hồ Chí Minh">Hồ Chí Minh</option>
 											<option value="Nha Trang">Nha Trang</option>
 											<option value="Ninh Bình">Ninh Bình</option>
 											<option value="Thanh Hoá">Thanh Hoá</option>
 											<option value="Quảng Trị">Quảng Trị</option>
 											<option value="Đà Lạt">Đà Lạt</option>
 											<option value="Phú Quốc">Phú Quốc</option>
 											<option value="Kon Tum">Kon Tum</option>
 											<option value="Băc Ninh">Băc Ninh</option>
 											<option value="Sơn La">Sơn La</option>
 											<option value="Hà Giang">Hà Giang</option>
 											<option value="Lạng Sơn">Lạng Sơn</option>
 											<option value="Hải Phòng">Hải Phòng</option>
 											<option value="Phan Thiết">Phan Thiết</option>
										</select>
									</div>
								</div>
							</div>
							<!--//column-->
							
							<!--column-->
							<div class="column one-third">
								<h5><span>03</span> Thời Gian Đi ?</h5>
								<div class="row">
									<div class="f-item one-half datepicker">
										<label for="datepicker8">Khởi Hành</label>
										<div class="datepicker-wrap">
											<input type="text" placeholder="" id="datepicker8"
												name="datepicker8" />
										</div>
									</div>
									<div class="f-item one-half">
										<label>Số Ngày Đi</label>
										<select name="quantityDate">
											<option value="0" selected="selected">Không</option>
											<option value="1">1-2 </option>
											<option value="5">3-6 Đêm</option>
											<option value="9">7-10 Đêm</option>
											<option value="12">10-14 Đêm</option>
											<option value="14">Over 14 Đêm</option>
										</select>
									</div>
								</div>
							</div>
							<!--//column-->
						
							<!--column-->
							<div class="column one-third">
								<h5><span>04</span> Who?</h5>
								<div class="row">
									<div class="f-item one-third spinner">
										<label for="spinner6">Người Lớn</label>
										<input type="text" placeholder="" id="spinner6" name="spinner6" />
									</div>
									<div class="f-item one-third spinner">
										<label for="spinner7">Trẻ Nhỏ</label>
										<input type="text" placeholder="" id="spinner7" name="spinner7" />
									</div>
									<div class="f-item one-third spinner">
										<label for="spinner8">Sơ Sinh</label>
										<input type="text" placeholder="" id="spinner8" name="spinner8" />
									</div>
								</div>
							</div>
							<!--//column-->
						</div>	
						<!--//form cruise-->	
						<!--form rent a car-->
						<div class="form row" id="form6">
							<!--column-->
							<div class="column one-third">
								<h5><span>02</span> Chọn Điểm Đến ?</h5>
								<div class="row">
									<div class="f-item full-width">
										<label for="destination7">Địa Điểm Lấy Xe</label>
										<input type="text" placeholder="Tôi muốn lấy xe ở ..." id="destination7" name="destination" />
									</div>
									<div class="f-item full-width">
										<label for="destination8">Địa Điểm Trả Xe</label>
										<input type="text" placeholder="Tôi muốn trả xe ở ..." id="destination8" name="destination" />
									</div>
								</div>
							</div>
							<!--//column-->
							
							<!--column-->
							<div class="column one-third">
								<h5><span>03</span> Thời Gian ?</h5>
								<div class="row">
									<div class="f-item full-width datepicker">
										<label for="datepicker11">Thời Gian Lấy Xe</label>
										<div class="row">
											<div class="f-item one-half">
												<div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker11" name="datepicker11" /></div>
											</div>
											<div class="f-item one-half">
												<select>
													<option>00:00</option>
													<option>01:00</option>
													<option>02:00</option>
													<option>03:00</option>
													<option>04:00</option>
													<option>05:00</option>
													<option>06:00</option>
													<option>07:00</option>
													<option>08:00</option>
													<option>09:00</option>
													<option selected>10:00</option>
													<option>11:00</option>
													<option>12:00</option>
													<option>13:00</option>
													<option>14:00</option>
													<option>15:00</option>
													<option>16:00</option>
													<option>17:00</option>
													<option>18:00</option>
													<option>19:00</option>
													<option>20:00</option>
													<option>21:00</option>
													<option>22:00</option>
													<option>23:00</option>
												</select>
											</div>
										</div>
									</div>
									<div class="f-item full-width datepicker">
										<label for="datepicker12">Thời Gian Trả</label>
										<div class="row">
											<div class="f-item one-half">
												<div class="datepicker-wrap"><input type="text" placeholder="" id="datepicker12" name="datepicker12" /></div>
											</div>
											<div class="f-item one-half">
												<select>
													<option>00:00</option>
													<option>01:00</option>
													<option>02:00</option>
													<option>03:00</option>
													<option>04:00</option>
													<option>05:00</option>
													<option>06:00</option>
													<option>07:00</option>
													<option>08:00</option>
													<option>09:00</option>
													<option selected>10:00</option>
													<option>11:00</option>
													<option>12:00</option>
													<option>13:00</option>
													<option>14:00</option>
													<option>15:00</option>
													<option>16:00</option>
													<option>17:00</option>
													<option>18:00</option>
													<option>19:00</option>
													<option>20:00</option>
													<option>21:00</option>
													<option>22:00</option>
													<option>23:00</option>
												</select>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--//column-->
						
							<!--column-->
							<div class="column one-third">
								<h5><span>04</span>  Kiểu Xe ?</h5>
								<div class="row">
									<div class="f-item one-half">
										<label for="spinner2">Loại Xe:</label>
										<select>
											<option> Không có </option>
											<option> Hạnh thường </option>
											<option> Hạng sang </option>
											<Option> Thể Thao </option>
										</select>
									</div>
								</div>
							</div>
							<!--//column-->
						</div>	
						<!--//form rent a car-->
					</div>
					<input type="submit" value="Tìm Kiếm" class="gradient-button search-submit" id="search-submit" name=" "/>
				</div>
			</form>
		</div>
	</div>
	<!--//search-->
	
	<!--main-->
	<main class="main">
		<div class="wrap">
			<div class="row">
				<div class="full-width">
				
					<!--latest offers-->
					<header class="s-title">
						<h2>Các Tour Giảm Giá Sốc</h2>
					</header>
					
					<div class="offers">
						<div class="row">
							
		                <jsp:useBean id="tourDao" class="dao.TourDAO" scope="session"></jsp:useBean>	
						<c:forEach items="${tourDao.getListSockTour()}" var="item">
							<article class="one-fourth promo">
								
								<div class="ribbon-small">- <f:formatNumber value="${(item.virtualPrice - item.realPrice)*100/item.virtualPrice }" minFractionDigits="0" maxFractionDigits="0"></f:formatNumber>%</div>
								<figure><a href="#" title=""><img src="images/uploads/cruise1.jpg" alt="" /></a></figure>
								<div class="details">
									<h3>${item.title}</h3>
									 <span class="price">Giá :	  <em style="text-decoration: line-through;"> <f:formatNumber value="${item.virtualPrice}" minFractionDigits="0" maxFractionDigits="0"></f:formatNumber> VND  </em> <em> <f:formatNumber value="${item.realPrice}" minFractionDigits="0" maxFractionDigits="0"></f:formatNumber>  VND | </em>  </span>
									<div class="description">
										 <span class="price"> ${item.timBegin } <em>${item.quatiDate } Ngày </em></span>
									</div>
									<a href="DetailTravel.jsp?idTour=${item.idTourDetail}" title="Book now" class="gradient-button"> Đặt Vé</a>
								</div>
							</article>
						</c:forEach>

						</div>
					</div>
					<!--//latest offers-->
					
					<header class="s-title">
						<h2>Tour Nổi Tiếng Việt Nam</h2>
					</header>
					
					<!--top destinations-->
					<div class="destinations">
						<div class="row">
						<c:forEach items="${tourDao.getListHotTour()}" var="item">
							<article class="one-fourth">
								<figure><a href="location.html" title=""><img src="images/uploads/slider4.jpg" alt="" /></a></figure>
								<div class="details">
									<a href="DetailTravel.jsp?idTour=${item.idTourDetail}" title="View all" class="gradient-button">View all</a>
									<h4>${item.title}</h4> 
									<div class="ribbon">
										<div class="half col-md-6 ">
												<span class="col-md-6 date-tour">${item.timBegin }</span>
												<span class=" col-md-3 day-tour ">${item.quatiDate } ngày</span>
										</div>
										<div class="half col-md-6">
											<!-- <a href="flights.html" title="View all"> -->
												<span class="col-md-6 price-tour1"><f:formatNumber value="${item.virtualPrice }" minFractionDigits="0" maxFractionDigits="0"></f:formatNumber> đ</span>
												<span class="col-md-6 price-tour2"><f:formatNumber value="${item.realPrice }" minFractionDigits="0" maxFractionDigits="0"></f:formatNumber>đ</span>
											<!-- </a> -->
										</div>
									</div>
								</div>
							</article>
						</c:forEach>
							<!--column-->
							<%-- <article class="one-fourth">
								<figure><a href="location.html" title=""><img src="images/uploads/slider4.jpg" alt="" /></a></figure>
								<div class="details">
									<a href="DetailTravel.html" title="View all" class="gradient-button">View all</a>
									<h4>Động Thiên Đường - Cù Lao Chàm - Hội An</h4> 
									<div class="ribbon">
										<div class="half col-md-6 ">
												<span class="col-md-6 date-tour">20/5/2017</span>
												<span class=" col-md-3 day-tour ">5 ngày</span>
										</div>
										<div class="half col-md-6">
											<!-- <a href="flights.html" title="View all"> -->
												<span class="col-md-6 price-tour1">2,000,000 đ</span>
												<span class="col-md-6 price-tour2">1,000,000 đ</span>
											<!-- </a> -->
										</div>
									</div>
								</div>
							</article>
							<!--//column-->
							<!--column-->
							<article class="one-fourth">
								<figure><a href="location.html" title=""><img src="images/uploads/slider4.jpg" alt="" /></a></figure>
								<div class="details">
									<a href="DetailTravel.html" title="View all" class="gradient-button">View all</a>
									<h4>Động Thiên Đường - Cù Lao Chàm - Hội An</h4> 
									<!-- <span class="count">1529 Hotels</span> -->
									<div class="ribbon">
										<div class="half col-md-6 ">
												<span class="col-md-6 date-tour">20/5/2017</span>
												<span class=" col-md-3 day-tour ">5 ngày</span>
										</div>
										<div class="half col-md-6">
											<!-- <a href="flights.html" title="View all"> -->
												<span class="col-md-6 price-tour1">2,000,000 đ</span>
												<span class="col-md-6 price-tour2">1,000,000 đ</span>
											<!-- </a> -->
										</div>
									</div>
								</div>
							</article>
							<!--//column-->
							<!--column-->
							<article class="one-fourth promo">
							<div class="ribbon-small">- 10%</div>
								<figure><a href="location.html" title=""><img src="images/uploads/slider4.jpg" alt="" /></a></figure>
								<div class="details">
									<a href="DetailTravel.html" title="View all" class="gradient-button">View all</a>
									<h4>Động Thiên Đường - Cù Lao Chàm - Hội An</h4> 
									<!-- <span class="count">1529 Hotels</span> -->
									<div class="ribbon">
										<div class="half col-md-6 ">
												<span class="col-md-6 date-tour">20/5/2017</span>
												<span class=" col-md-3 day-tour ">5 ngày</span>
										</div>
										<div class="half col-md-6">
											<!-- <a href="flights.html" title="View all"> -->
												<span class="col-md-6 price-tour1">2,000,000 đ</span>
												<span class="col-md-6 price-tour2">1,000,000 đ</span>
											<!-- </a> -->
										</div>
									</div>
								</div>
							</article>
							<!--//column-->
							<!--column-->
							<article class="one-fourth">
								<figure><a href="DetailTravel.html" title=""><img src="images/uploads/slider4.jpg" alt="" /></a></figure>
								<div class="details">
									<a href="DetailTravel.html" title="View all" class="gradient-button">View all</a>
									<h4>Động Thiên Đường - Cù Lao Chàm - Hội An</h4> 
									<!-- <span class="count">1529 Hotels</span> -->
									<div class="ribbon">
										<div class="half col-md-6 ">
												<span class="col-md-6 date-tour">20/5/2017</span>
												<span class=" col-md-3 day-tour ">5 ngày</span>
										</div>
										<div class="half col-md-6">
											<!-- <a href="flights.html" title="View all"> -->
												<span class="col-md-6 price-tour1">2,000,000 đ</span>
												<span class="col-md-6 price-tour2">1,000,000 đ</span>
											<!-- </a> -->
										</div>
									</div>
								</div>
							</article>
							<!--//column-->
							<!--column-->
							<article class="one-fourth promo">
								<div class="ribbon-small">- 40%</div>
								<figure><a href="DetailTravel.html" title=""><img src="images/uploads/slider4.jpg" alt="" /></a></figure>
								<div class="details">
									<a href="DetailTravel.html" title="View all" class="gradient-button">View all</a>
									<h4>Động Thiên Đường - Cù Lao Chàm - Hội An</h4> 
									<!-- <span class="count">1529 Hotels</span> -->
									<div class="ribbon">
										<div class="half col-md-6 ">
												<span class="col-md-6 date-tour">20/5/2017</span>
												<span class=" col-md-3 day-tour ">5 ngày</span>
										</div>
										<div class="half col-md-6">
											<!-- <a href="flights.html" title="View all"> -->
												<span class="col-md-6 price-tour1">2,000,000 đ</span>
												<span class="col-md-6 price-tour2">1,000,000 đ</span>
											<!-- </a> -->
										</div>
									</div>
								</div>
							</article>
							<!--//column-->
							<!--column-->
							<article class="one-fourth">
								<figure><a href="location.html" title=""><img src="images/uploads/slider4.jpg" alt="" /></a></figure>
								<div class="details">
									<a href="location.html" title="View all" class="gradient-button">View all</a>
									<h4>Động Thiên Đường - Cù Lao Chàm - Hội An</h4> 
									<!-- <span class="count">1529 Hotels</span> -->
									<div class="ribbon">
										<div class="half col-md-6 ">
												<span class="col-md-6 date-tour">20/5/2017</span>
												<span class=" col-md-3 day-tour ">5 ngày</span>
										</div>
										<div class="half col-md-6">
											<!-- <a href="flights.html" title="View all"> -->
												<span class="col-md-6 price-tour1">2,000,000 đ</span>
												<span class="col-md-6 price-tour2">1,000,000 đ</span>
											<!-- </a> -->
										</div>
									</div>
								</div>
							</article>
							<!--//column-->
							<!--column-->
							<article class="one-fourth">
								<figure><a href="location.html" title=""><img src="images/uploads/slider4.jpg" alt="" /></a></figure>
								<div class="details">
									<a href="location.html" title="View all" class="gradient-button">View all</a>
									<h4>Động Thiên Đường - Cù Lao Chàm - Hội An</h4> 
									<!-- <span class="count">1529 Hotels</span> -->
									<div class="ribbon">
										<div class="half col-md-6 ">
												<span class="col-md-6 date-tour">20/5/2017</span>
												<span class=" col-md-3 day-tour ">5 ngày</span>
										</div>
										<div class="half col-md-6">
											<!-- <a href="flights.html" title="View all"> -->
												<span class="col-md-6 price-tour1">2,000,000 đ</span>
												<span class="col-md-6 price-tour2">1,000,000 đ</span>
											<!-- </a> -->
										</div>
									</div>
								</div>
							</article>
							<!--//column-->
							<!--column-->
							<article class="one-fourth promo">
								<div class="ribbon-small">- 50%</div>
								<figure><a href="location.html" title=""><img src="images/uploads/slider4.jpg" alt="" /></a></figure>
								<div class="details">
									<a href="location.html" title="View all" class="gradient-button">View all</a>
									<h4>Động Thiên Đường - Cù Lao Chàm - Hội An</h4> 
									<!-- <span class="count">1529 Hotels</span> -->
									<div class="ribbon">
										<div class="half col-md-6 ">
												<span class="col-md-6 date-tour">20/5/2017</span>
												<span class=" col-md-3 day-tour ">5 ngày</span>
										</div>
										<div class="half col-md-6">
											<!-- <a href="flights.html" title="View all"> -->
												<span class="col-md-6 price-tour1">2,000,000 đ</span>
												<span class="col-md-6 price-tour2">1,000,000 đ</span>
											<!-- </a> -->
										</div>
									</div>
								</div>
							</article> --%>
							<!--//column-->			 
						</div>
					</div>
					<!--//top destinations-->

					<header class="s-title">
						<h2>Tour Giá Tốt</h2>
					</header>

					<!--top Gia Tot-->
					<div class="destinations">
						<div class="row">
							<!--column-->
							<article class="one-fourth">
								<figure><a href="location.html" title=""><img src="images/uploads/slider4.jpg" alt="" /></a></figure>
								<div class="details">
									<a href="location.html" title="View all" class="gradient-button">View all</a>
									<h4>Amsterdam</h4>
									<span class="count">929 Hotels</span>
									<div class="ribbon">
										<div class="half hotel">
											<a href="hotels.html" title="View all">
												<span class="small">from</span>
												<span class="price">&#36; 70</span>
											</a>
										</div>
										<div class="half flight">
											<a href="flights.html" title="View all">
												<span class="small">from</span>
												<span class="price">&#36; 150</span>
											</a>
										</div>
									</div>
								</div>
							</article>
							<!--//column-->
							<!--column-->
							<article class="one-fourth promo">
								<div class="ribbon-small">- 50%</div>
								<figure><a href="location.html" title=""><img src="images/uploads/slider4.jpg" alt="" /></a></figure>
								<div class="details">
									<a href="location.html" title="View all" class="gradient-button">View all</a>
									<h4>Amsterdam</h4>
									<span class="count">929 Hotels</span>
									<div class="ribbon">
										<div class="half hotel">
											<a href="hotels.html" title="View all">
												<span class="small">from</span>
												<span class="price">&#36; 70</span>
											</a>
										</div>
										<div class="half flight">
											<a href="flights.html" title="View all">
												<span class="small">from</span>
												<span class="price">&#36; 150</span>
											</a>
										</div>
									</div>
								</div>
							</article>
							<!--//column-->
							<!--column-->
							<article class="one-fourth">
								<figure><a href="location.html" title=""><img src="images/uploads/slider4.jpg" alt="" /></a></figure>
								<div class="details">
									<a href="location.html" title="View all" class="gradient-button">View all</a>
									<h4>Amsterdam</h4>
									<span class="count">929 Hotels</span>
									<div class="ribbon">
										<div class="half hotel">
											<a href="hotels.html" title="View all">
												<span class="small">from</span>
												<span class="price">&#36; 70</span>
											</a>
										</div>
										<div class="half flight">
											<a href="flights.html" title="View all">
												<span class="small">from</span>
												<span class="price">&#36; 150</span>
											</a>
										</div>
									</div>
								</div>
							</article>
							<!--//column-->
							<!--column-->
							<article class="one-fourth">
								<figure><a href="location.html" title=""><img src="images/uploads/slider4.jpg" alt="" /></a></figure>
								<div class="details">
									<a href="location.html" title="View all" class="gradient-button">View all</a>
									<h4>Amsterdam</h4>
									<span class="count">929 Hotels</span>
									<div class="ribbon">
										<div class="half hotel">
											<a href="hotels.html" title="View all">
												<span class="small">from</span>
												<span class="price">&#36; 70</span>
											</a>
										</div>
										<div class="half flight">
											<a href="flights.html" title="View all">
												<span class="small">from</span>
												<span class="price">&#36; 150</span>
											</a>
										</div>
									</div>
								</div>
							</article>
							<!--//column-->
						</div>
					</div>
					<!-- // Top gia tot
					 -->
					 <header class="s-title">
						<h2>Vì Sao Chọn AngryCat Travel</h2>
					</header>
					<div class="">
						<div class="row">
								<div class="col-md-12 effect_fadeInUp hid visible animated fadeInUp listwhy">
									<ul class="">
										<li class="col-md-4">
											<div class="col-md-1 col-md-offset-1"><i class="fa fa-color fa-3x fa-thumbs-o-up "></i></div>
											<div class="col-md-10">
												<h5>DỊCH VỤ KHÁCH HÀNG TỐT NHẤT</h5>
												<span>Đội ngũ nhân viên tận tâm, chuyên nghiệp</span>
											</div>
										</li>

										<li class="col-md-4">
									
											<div class="col-md-1 col-md-offset-1"><i class="fa fa-color fa-3x fa-credit-card" aria-hidden="true"></i></div>
											<div class="col-md-10">
												<h5>THANH TOÁN AN TOÀN VÀ LINH HOẠT</h5>
												<span>Liên kết với các tổ chức tài chính</span>
											</div>
										</li>
										<li class="col-md-4">
											
											<div class="col-md-1 col-md-offset-1"><i class="fa fa-color fa-3x fa-gift" aria-hidden="true"></i></div>
											<div class="col-md-10">
												<h5>LUÔN CÓ MỨC GIÁ TỐT NHẤT</h5>
												<span>Bảo đảm giá tốt</span>
											</div>
										</li>
										<li class="col-md-4">
											
											<div class="col-md-1 col-md-offset-1"><i class="fa fa-color fa-3x fa-briefcase" aria-hidden="true"></i></div>
											<div class="col-md-10">
												<h5>SẢN PHẨM ĐA DẠNG, CHẤT LƯỢNG</h5>
												<span>Đạt chất lượng tốt nhất</span>
											</div>
										</li>

										<li class="col-md-4">
											
											<div class="col-md-1 col-md-offset-1"><i class="fa fa-color fa-3x fa-desktop" aria-hidden="true"></i></div>
											<div class="col-md-10">
												<h5>ĐẶT TOUR DỄ DÀNG VÀ NHANH CHÓNG</h5>
												<span>Đặt tour chỉ với 3 bước</span>
											</div>
										</li>
										<li class="col-md-4">
											
											<div class="col-md-1 col-md-offset-1"><i class="fa fa-color fa-3x fa-phone-square" aria-hidden="true"></i></div>
											<div class="col-md-10">
												<h5>HỖ TRỢ 24/7</h5>
												<span>Hotline &amp; Hỗ trợ trực tuyến</span>
											</div>
										</li>
									</ul>
								</div>
						</div>
					</div>

				
			
					<!--info boxes-->
				
					<!--//info boxes-->
				</div>
			</div>
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
	<div class="lightbox" style="display:block;">
		<div class="lb-wrap">
			<a href="#" class="close">x</a>
			<div class="lb-content">
				<form class="row" method="post" action="registerAction">
					<h3>Đăng Kí</h3>
					<c:if test="${stateRegister != null }">
						<h4> ${stateRegister }</h4>
					</c:if>
					<div class="f-item full-width">
						<label for="f_name">Họ và Tên</label>
						<input type="text" id="ns_name" name="fullname" />
					</div>
					<div class="f-item full-width">
						<label for="email">E-mail </label>
						<input type="email" id="email" name="email" />
					</div>
					<div class="f-item full-width">
						<label for="password">Mật Khẩu</label>
						<input type="password" id="password" name="password" />
					</div>
					<div class="f-item checkbox full-width">
						<input type="checkbox" id="newsletter_s" name="newsletter" />
						<label for="newsletter_s">Gửi tôi thông tin những chuyến đi mới và tour giảm giá</label>
					</div>
					<div class="f-item checkbox full-width">
						<input type="submit" id="register" name="register" value="Đăng Kí" class="gradient-button" />
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/jquery.uniform.min.js"></script>
	<script type="text/javascript" src="js/jquery.slimmenu.min.js"></script>
	<script type="text/javascript" src="js/lightslider.min.js"></script>
	<script type="text/javascript" src="js/scripts.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<!-- <script type="text/javascript" src="bootstrap/js/jquery.min.js"></script> -->
	<script type="text/javascript">	
		(function( $ ) {
			$(document).ready(function(){
				$('.form').hide();
				$('#form1').show();
				$('.f-item:nth-child(1)').addClass('active');
				$('.f-item:nth-child(1) span').addClass('checked');		

				$('#hero-gallery').lightSlider({
					gallery:true,
					item:1,
					pager:false,
					gallery:false,
					slideMargin: 0,
					speed:2000,
					pause:6000,
					mode: 'fade',
					auto:true,
					loop:true,
					onSliderLoad: function() {
						$('#hero-gallery').removeClass('cS-hidden');
					}  
				});			
			});
		})(jQuery);
	</script>
	<script type="text/javascript">	
 		$(document).ready(function(){
 				$("#cruise").click(function(){
             		 $('form').attr('action', 'serchTourAction');
             	}); 
             	$("#hotel").click(function(){
             		 $('form').attr('action', 'search-tour.html');
             	}); 
             	$("#rentcar").click(function(){
             		 $('form').attr('action', 'search-tour.html');
             	}); 
             	$("#flight").click(function(){
             		 $('form').attr('action', 'search-tour.html');
             	}); 
 		});
 	</script>
</body>
</html>