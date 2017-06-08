<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="f"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="Book Your Travel - Online Booking HTML Template">
	<meta name="description" content="Book Your Travel - Online Booking HTML Template">
	<meta name="author" content="themeenergy.com">
	
	<title>Book Your Travel - TourDetail</title>
	
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/theme-turqoise.css" id="template-color" />
	<link rel="stylesheet" href="css/lightslider.min.css" />
	<link rel="stylesheet" href="css/lightgallery.min.css" />
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
<body onload="initialize()">
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
					<li><a href="#" title="Home">Home</a></li>
					<li><a href="#" title="Hotels">Hotels</a></li>
					<li><a href="#" title="United Kingdom">United Kingdom</a></li>
					<li><a href="#" title="London">London</a></li>  
					<li>Search results</li>                                       
				</ul>
				<!--//crumbs-->
			</nav>
			<!--//breadcrumbs-->
			<jsp:useBean id="carDAO" class="dao.CarDAO"></jsp:useBean>
			<c:set var="id" value="${param.id }"></c:set>
			<c:set var="car" value="${carDAO.getCarDetails(id) }"></c:set>
			
			<div class="row">
				<!--hotel three-fourth content-->
				<section class="three-fourth">
					<!--gallery-->
					<div class="gallery col-md-10">
						<div class="col-md-10 " >
							<img src="images/uploads/car13.jpg" alt="" />
					<!-- 		<ul id="image-gallery" class="cS-hidden">
								<li data-thumb="images/uploads/car24.jpg"> 
									<img src="images/uploads/car24.jpg" alt="" />
								</li>
								<li data-thumb="images/uploads/car13.jpg"> 
								<img src="images/uploads/car13.jpg" alt="" />
								</li>
								<li data-thumb="images/uploads/car24.jpg"> 
									<img src="images/uploads/car24.jpg" alt="" />
								</li>
								<li data-thumb="images/uploads/car5.jpg"> 
									<img src="images/uploads/car5.jpg" alt="" />
								</li>
								<li data-thumb="images/uploads/car7.jpg"> 
									<img src="images/uploads/car7.jpg" alt="" />
								</li>
								<li data-thumb="images/uploads/car13.jpg"> 
									<img src="images/uploads/car13.jpg" alt="" />
								</li>
							</ul> -->
						</div>
						<div class="detail-book col-md-10">
							<div class=" box-content col-md-5 col-md-offset-1"> 
								<p>Mã xe:<b>${car.idCar }</b></p>
								<p>Tên Xe: <b>${car.nameCar } </b></p>
								<p>
									<c:choose>
										<c:when test="${car.gear ==1 }">
											Hộp Số:<b>Số Sàn</b>
										</c:when>
										<c:otherwise>
											Hộp Số:<b>Số Tự Động</b>
										</c:otherwise>
									</c:choose>
									
								</p>
								<p>
									Số chỗ : <b class="price">${car.quanitySeat }</b>
								</p>
								<p>
									<c:choose>
										<c:when test="${car.quantityCar >0 }">
											Trạng Thái  : <b class="price">Còn xe</b>
										</c:when>
										<c:otherwise>
											Trạng Thái  : <b class="price">Hết Xe</b>
										</c:otherwise>
									</c:choose>
									
								</p>
							</div>
							<div class="col-md-6 box-price">
							
								<!-- Nếu chỉ hiển thị 1 giá thì dùng div dưới -->
								<div class="price-book4" style="font-size: 30px; font-weight: bold;color: #be0500; text-align: center; margin-top: 35px;"><span itemprop="price"><f:formatNumber value="${car.price }" maxFractionDigits="0" minFractionDigits="0"></f:formatNumber></span><span> đ</span></div>

								<div class="btn-book">
									<a href="bookCarStep1.jsp?id=${car.idCar }" class="gradient-button ">Thuê Xe</a>
								</div>
							</div>
						</div>
					</div>
					<!--//gallery-->
				
					<!--inner navigation-->
					<nav class="inner-nav">
						<ul>
							<li class="availability"><a href="#availability" title="Availability">Một số hình ảnh</a></li>
							<li class="description"><a href="#description" title="Description">Điều Kiện Thuê</a></li>
							<li class="facilities"><a href="#facilities" title="Facilities">Lưu ý</a></li>
							<li class="location"><a href="#location" title="Location">Liên Hệ</a></li>
						</ul>
					</nav>
					<!--//inner navigation-->
					
					<!--availability-->
					<section id="availability" class="tab-content">
						<article>
							<h2>Chương Trình Tour</h2>
							<div class="text-wrap">
								<img src="images/uploads/car13.jpg" alt="" /><br>
								<img src="images/uploads/car13.jpg" alt="" /><br>
								<img src="images/uploads/car13.jpg" alt="" /><br>
								<img src="images/uploads/car13.jpg" alt="" /><br>
							</div>
							
							
						</article>
					</section>
					<!--//availability-->
					
					<!--description-->
					<section id="description" class="tab-content">
						<article>
							<h2>Điều Kiện Thuê Xe</h2>

							<div class="text-wrap">	
								<p>Điều kiện cần và đủ của người thuê xe :</p><br>
								<p>- Giấy tờ : <strong>Hộ Khẩu ; CMND ; GPLX B1-B2</strong></p><br>
								<p>- Bảo đảm : <strong> Xe máy + giấy tờ xe máy chính chủ</strong></p>
							</div>
						</article>
					</section>
					<!--//description-->
					
					<!--facilities-->
					<section id="facilities" class="tab-content">
						<article>
							<h2>Lưu Ý</h2>
							<div class="text-wrap">
								<p>- Giá trên chưa bao gồm: 10% thuế VAT, ăn nghỉ của lái xe.</p><br>
								<p>- Giá đã bao gồm chi phí: xăng (dầu), cầu, phà, bến, bãi, lương lái xe.</p><br>
								<p>Báo giá cho thuê xe có thể thay đổi theo từng thời điểm, để biết thêm thông tin chi tiết xe  xin liên hệ với BookTravel theo số: 0989-999-888
								</p>
							</div>
						</article>
					</section>
					<!--//facilities-->
					
					<!--location-->
					<section id="location" class="tab-content">
						<article>
							<!--map-->
								<div class="gmap" id="map_canvas"></div>
							<!--//map-->
						</article>
					</section>
					<!--//location-->
					
					<!--reviews-->
					<section id="reviews" class="tab-content">
						<article>
							<h2>Chưa Update Nội Dung</h2>
							
						</article>
					</section>
					<!--//reviews-->
					
					<!--things to do-->
					<section id="things-to-do" class="tab-content">
						<article>
							<h2>Chưa Update Nội Dung</h2>
							
						</article>
					</section>
					<!--//things to do-->
						 
					
				 
				</section>
				<!--//hotel content-->

				
				
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
			<!--//row-->
		 
		 
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
	<script src="http://maps.googleapis.com/maps/api/js?v=3&amp;sensor=false"></script>
	<script type="text/javascript"  src="js/infobox.js"></script>
	<script type="text/javascript" src="js/jquery.uniform.min.js"></script>
	<script type="text/javascript" src="js/jquery.slimmenu.min.js"></script>
	<script type="text/javascript" src="js/lightslider.min.js"></script>
	<script type="text/javascript" src="js/lightgallery-all.min.js"></script>
	<script type="text/javascript" src="js/scripts.js"></script>
	<script type="text/javascript">
	function initialize() {
		var secheltLoc = new google.maps.LatLng(21.0287935, 105.7800219);

		var myMapOptions = {
			 zoom: 17
			,center: secheltLoc
			,mapTypeId: google.maps.MapTypeId.ROADMAP
		};
		var theMap = new google.maps.Map(document.getElementById("map_canvas"), myMapOptions);


		var marker = new google.maps.Marker({
			map: theMap,
			draggable: true,
			position: new google.maps.LatLng(21.0287935, 105.7800219),
			visible: true
		});

		var boxText = document.createElement("div");
		boxText.innerHTML = "<strong>Book Travel</strong> Hotline:0989-999-888 <br>Số 8 Tôn-Thât-Thuyết HN";

		var myOptions = {
			 content: boxText
			,disableAutoPan: false
			,maxWidth: 0
			,pixelOffset: new google.maps.Size(-140, 0)
			,zIndex: null
			,closeBoxURL: ""
			,infoBoxClearance: new google.maps.Size(1, 1)
			,isHidden: false
			,pane: "floatPane"
			,enableEventPropagation: false
		};

		google.maps.event.addListener(marker, "click", function (e) {
			ib.open(theMap, this);
		});

		var ib = new InfoBox(myOptions);
		ib.open(theMap, marker);
	}
	</script>
	
	<script type="text/javascript">
    	 $(document).ready(function() {
            $('#image-gallery').lightSlider({
                gallery:true,
                item:1,
                thumbItem:6,
                slideMargin: 0,
                speed:500,
                auto:true,
                loop:true,
                onSliderLoad: function() {
                    $('#image-gallery').removeClass('cS-hidden');
                }  
            });
			
			$('#gallery1,#gallery2,#gallery3,#gallery4').lightGallery({
				download:false
			});
		});
    </script>
	</body>
</html>