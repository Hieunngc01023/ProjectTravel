<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		 
			
			<div class="row">
				<!--three-fourth content-->
				<div class="three-fourth">
					<form id="booking" method="post" action="booking" class="static-content booking">
						<fieldset>
							<h2><span>03 </span>Xác Nhận</h2>
							<div class="text-wrap">
								<a href="#" class="gradient-button right print" title="Print booking" onclick="printpage()">In Tour</a>
								<p>Tour của bạn đã được xác nhận , Cảm ơn bạn đã tới BookTravel</p>
							</div>
							
							<h3>Thông tin Khách hàng</h3>
							<div class="text-wrap">
								<div class="output">
								<c:choose>
									<c:when test="${sessionScope.orderCar != null }">
										<p>ID Booking:</p>
									<p>${sessionScope.orderCar.idOrder }</p>
									<p>Họ và Tên: </p>
									<p>${sessionScope.orderCar.fullName }</p>
									<p>E-mail: </p>
									<p>${sessionScope.orderCar.email }</p>
									<p>Address:</p>
									<p>${sessionScope.orderCar.address }</p>
									<p>Phone: </p>
									<p>${sessionScope.orderCar.phone }</p>
									</c:when>
									<c:otherwise>
										<p>ID Booking:</p>
										<p>${idOrder }</p>
										<p>Họ và Tên:</p>
										<p> ${fullName }</p>
									<p>E-mail: </p>
									<p>${email }</p>
									<p>Address:</p>
									<p>${address }</p>
									<p>Phone: </p>
									<p> ${phone }</p>
									</c:otherwise>
								</c:choose>
								</div>
							</div>
						
							<h3>Yêu Cầu Đặt Biệt</h3>
							<div class="text-wrap">
								<p>I would like to book a twin room with a definite sea view please. Thank you and kind regards, John Livingston</p>
							</div>
							<h3>Thông tin Đặt Xe</h3>
							<div class="text-wrap">
								<div class="output">
								<c:choose>
									<c:when test="${sessionScope.orderCar != null }">
									<p>Thời Gian Lấy Xe:</p>
									<p>${ sessionScope.orderCar.timePickUp}</p>
									<p>Địa Điểm Lấy: </p>
									<p>${ sessionScope.orderCar.placeRecieve}</p>
									<p>Thời Gian Trả Xe:</p>
									<p>${ sessionScope.orderCar.tiemDropOff}</p>
									<p>Địa Điểm Trả: </p>
									<p>${ sessionScope.orderCar.placeRender}</p>
									<p>Thuê Người Lái: </p>
									<c:choose>
										<c:when test="${sessionScope.orderCar.stateDriver ==1 }">
											<p>Có</p>
										</c:when>
										<c:otherwise>
											<p>Không</p>
										</c:otherwise>
									</c:choose>							
									</c:when>
									<c:otherwise>
										<p>Thời Gian Lấy Xe:</p>
									<p> ${timePickUp }</p>
									<p>Địa Điểm Lấy: </p>
									<p> ${placeRecieve }</p>
									<p>Thời Gian Trả Xe:</p>
									<p>${tiemDropOff }</p>
									<p>Địa Điểm Trả: </p>
									<p>${placeRender}</p>
									<p>Thuê Người Lái: </p>
									<c:choose>
										<c:when test="${stateDriver ==1 }">
											<p>Có</p>
										</c:when>
										<c:otherwise>
											<p>Không</p>
										</c:otherwise>
									</c:choose>	
									</c:otherwise>
								</c:choose>
								<!-- Số 8-Tôn Thất Thuyết-Mỹ Đình-Hà Nội -->
										 
								</div>
							</div>
							
							<h3>Thanh Toán</h3>
							<div class="text-wrap">
								
								<p><strong class="dark">BookTravel chấp nhận hình thức thanh toán :</strong></p>
								<p>Visa,Thẻ ngân hàng nội địa, Tiền mặt , Chuyển khoản</p>
							</div>
							
							<h3>Không Quên </h3>
							<div class="text-wrap">
								<p>Bạn có thể thay đổi hoặc huỷ đặt vé thông qua phần dịch vụ tài khoản của bạn:
								<a href="my_account.html">Tài khoản của tôi</a></p>
								<p><strong>Chúng tôi mong bạn sẽ có phút giây thư giãn bên </strong><i>chuyến đi BookTravel</i></p>
							</div>
						</fieldset>
					</form>
				</div>
				<!--//three-fourth content-->
				<jsp:useBean id="carDAO" class="dao.CarDAO" scope="page"></jsp:useBean>	
				<c:choose>
				<c:when test="${sessionScope.orderCar != null }">
				    <c:set var="car" value="${carDAO.getCarDetails(sessionScope.orderCar.idCar)}"></c:set>  
				</c:when>
				<c:otherwise>
					<c:set var="car" value="${carDAO.getCarDetails(idCar)}"></c:set>  
				</c:otherwise>
			</c:choose>
					
				<!--right sidebar-->
				<aside class="one-fourth right-sidebar">
					<!--Booking details-->
					<article class="hotel-details booking-details">
						<h1>${car.nameCar }</h1>
						<dl class="booking-info">
							<dt>Mã Xe</dt>
							<dd>${car.idCar }</dd>
							<dt>Nhà Sản Xuất</dt>
							<dd>${car.brand }</dd>
							<dt>Số Ghế</dt>
							<dd>${car.quanitySeat }</dd>
							<dt>Hộp Số </dt>
							<c:choose>
								<c:when test="${car.gear ==1 }">
									<dd> Số Sàn</dd>
								</c:when>
								<c:otherwise>
									<dd> Số Tự Động</dd>
								</c:otherwise>
							</c:choose>
							<dt>Nhiên Liệu </dt>
							<c:choose>
								<c:when test="${car.fuel ==1 }">
									<dd> Xăng </dd>
								</c:when>
								<c:otherwise>
									<dd> Dầu</dd>
								</c:otherwise>
							</c:choose>
						</dl>
						<div class="price">
						<c:choose>
				<c:when test="${sessionScope.orderCar != null }">
					<p class="total">Tổng Tiền:<f:formatNumber value="${sessionScope.orderCar.totalPrice}" minFractionDigits="0" maxFractionDigits="0"></f:formatNumber> đ</p>
				</c:when>
				<c:otherwise>
					<p class="total">Tổng Tiền:<f:formatNumber value="${totalPrice}" minFractionDigits="0" maxFractionDigits="0"></f:formatNumber> đ</p>
				</c:otherwise>
			</c:choose>
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

	
	<script type="text/javascript">
		function printpage()
			{window.print()}
	</script>
</body>
</html>