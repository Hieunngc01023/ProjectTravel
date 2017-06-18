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
	<%@ include file="header.jsp" %>
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
	<%@ include file="footer.jsp" %>
</body>
</html>