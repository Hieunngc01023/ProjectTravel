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
	
	<title>Book Your Travel - Booking</title>
	
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
	<%@ include file="header.jsp" %>
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
					<li>Best ipsum hotel</li>                                       
				</ul>
				<!--//crumbs-->
			</nav>
			<!--//breadcrumbs-->
			
			<div class="row">
				<!--three-fourth content-->
				<div class="three-fourth">
					<form id="booking" method="post" action="orderAction" class="static-content booking">
						<fieldset>
							<h2><span>02 </span>Thanh Toán</h2>
							<div class="row">
								<div class="f-item one-half">
									<label>Loại Thẻ</label>
									<select>
										<option selected>Chọn Loại Thẻ</option>
										<option>Thẻ Nội Địa</option>
										<option>Visa</option>
									</select>
								</div>
								<div class="f-item one-half">
									<label for="card_number">Số Thẻ</label>
									<input type="number" placeholder="Nhập mã thẻ mặt trước thẻ" id="card_number" name="card_number" />
								</div>
							</div>
							
							<div class="row">
								<div class="f-item one-third">
									<label for="card_holder">Tên Của Thẻ</label>
									<input type="text" id="card_holder" placeholder="Nhập tên thẻ" name="card_holder" />
								</div>
								<div class="f-item one-third datepicker">
									<label for="expiration_date">Ngày Hạn </label>
									<div class="datepicker-wrap"><input type="text" id="expiration_date" name="expiration_date" /></div>
								</div>
								<div class="f-item one-third">
									<label for="cv2_number">Số  CV2 </label>
									<input type="number" id="cv2_number" placeholder="Nhập 3 số cuối sau thẻ" name="cv2_number" />
								</div>
							</div>

							<div class="row">
								<div class="f-item full-width checkbox">
									<input type="checkbox" name="check" id="check" value="ch1" />
									<label>Tôi đã đọc và đồng ý <a href="#">Điều Kiện Đặt Tour</a>.</label>
								</div>
							</div>
							
							<div class="row">
								<div class="full-width">
								<%-- 	<input type="hidden" name= "order" value=" ${sessionScope.order }"/> --%>
									<input type="hidden" name="checkCash" value="onlineReturn"/>
									<input type="submit" class="gradient-button" value="Chuyển khoản" id="next-step" />
								</div>
							</div>
						</fieldset>
					</form>
				</div>
				<!--//three-fourth content-->
				
				<!--right sidebar-->
				<aside class="one-fourth right-sidebar">
					<!--Booking details-->
						<article class="hotel-details booking-details">
						<jsp:useBean id="tourDAO" class="dao.TourDAO"></jsp:useBean>
						<c:set var="tourDetail"  value="${tourDAO.getTourDetail(sessionScope.order.idTourDetail) }"></c:set>
					
						<h1>${tourDetail.title }</h1>
						<dl class="booking-info">
							<dt>Mã Tour</dt>
							<dd>${tourDetail.idTour }</dd>
							<dt>Thời Gian</dt>
							<dd>${tourDetail.quatiDate } Ngày</dd>
							<dt>Khởi Hành</dt>
							<dd>${tourDetail.timBegin }</dd>
							<dt>Nơi Đón</dt>
							<dd>${tourDetail.pickupPlace }</dd>
							<dt>Số Chỗ Còn Nhận</dt>
							<dd>${tourDetail.seatAvailable }</dd>
						</dl>
						<div class="price">
							<p class="total"><f:formatNumber value="${sessionScope.order.totalPrice }" minFractionDigits="0" maxFractionDigits="0"></f:formatNumber></p>
							
						</div>
					</article>
					<!--//Booking details-->
					
					<!--Need Help Booking?-->
					<article class="widget">
						<h4>Bạn Cần Trợ Giúp?</h4>
						<p>Hãy gọi tới số dưới đây , Nhân viên của chúng tôi sẽ cung cấp các thông tin cho bạn nhanh nhất và dịch vu tốt nhất, Cảm ơn bạn đã tới <a href="#">BookTravel</a></p>
						<p class="number" style="color: #858585;font-size: 18px;">0989-999-888</p>
					</article>
					<!--//Need Help Booking?-->
				</aside>
				<!--//right sidebar-->
			</div>
			<!--//main content-->
		</div>
	</main>
	<!--//main-->
	
	<!--footer-->
	<%@ include file="footer.jsp" %>
	<!---footer-->

	
</body>
</html>