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
					<form  action="orderCarAction" method="post" id="form_register" class="static-content ">
						<fieldset>
							<h2><span>01 </span>Thông Tin Khách Hàng </h2>
							<c:choose>
							<c:when test="${sessionScope.email != null  }">
							<jsp:useBean id="user" class="dao.UserDAO" scope="page"></jsp:useBean>
								    <c:set var="user" value="${user.getUserDetail(sessionScope.email) }"></c:set>
								<div class="row ">
								<div class="full-width">
									<div class="f-item one-half">
									
										<label for="fullname">Họ và Tên</label>
										<input type="text" id="fullname" name="fullName"  value=" ${user.fullName}" readonly="readonly" />
										<p class="info" id="fullname_error"></p>
									</div>
									<div class="f-item one-half">
										<label for="phone">Số Điện Thoại</label>
										<input type="number" id="phone" name="phone"  value="${user.phoneNumber }" />
										<p class="info" id="phone_error"></p>
									</div>
									 
								</div>
								<div class="full-width">
									<div class="f-item one-half">
										<label for="email">Email </label>
										<input type="email" id="email" name="email" value="${user.email }" readonly="readonly"/>
										<p class="info" id="email_error"></p>
									</div>
									<div class="f-item one-half">
										<label for="address">Địa Chỉ</label>
										<input type="text" id="address" name="address" placeholder="Nhập số nhà ,đường,phường"  value="${user.address }"/>
										<p class="info" id="address_error"></p>
									</div>
								</div>
							</div>
							</c:when>
							<c:otherwise>
								<div class="row ">
								<div class="full-width">
									<div class="f-item one-half">
									
										<label for="fullname">Họ và Tên</label>
										<input type="text" id="fullname" name="fullName" />
										<p class="info" id="fullname_error"></p>
									</div>
									<div class="f-item one-half">
										<label for="phone">Số Điện Thoại</label>
										<input type="number" id="phone" name="phone" />
										<p class="info" id="phone_error"></p>
									</div>
									 
								</div>
								<div class="full-width">
									<div class="f-item one-half">
										<label for="email">Email </label>
										<input type="email" id="email" name="email" />
										<p class="info" id="email_error"></p>
									</div>
									<div class="f-item one-half">
										<label for="address">Địa Chỉ</label>
										<input type="text" id="address" name="address" placeholder="Nhập số nhà ,đường,phường" />
										<p class="info" id="address_error"></p>
									</div>
								</div>
							</div>
							</c:otherwise>
								
							</c:choose>
							<div class="row">
								<div class="f-item full-width">
									<label>Ghi Chú Yêu Cầu Đặc Biệt:</label>
									<textarea rows="7" cols="7" name="note"></textarea>
								</div>
							</div>
							<h2><span>02 </span>Thông Tin Đặt Xe</h2>
							<div class="row ">
								<div class="full-width">
									<div class="f-item one-fourth">
										<label for="datepicker12">Thời Gian Lấy Xe</label>
										<div class="datepicker-wrap"><input type="text" placeholder="" id="pickUp" name="timePickUp" /></div>
									</div>
									<div class="one-fifth" style="margin-top: -10px;">
										<label for="getCar">Địa Điểm Lấy Xe </label>
										<div class="f-item radio-cash">
											<label for="checkAddress1">Tại BookTravel</label>
											<input type="radio" checked id="checkAddress1" name="placeRecieve" >
										</div>
										<div class="f-item radio-cash">
											<label for="checkAddress2">Tại Nhà Riêng</label>
											<input type="radio" id="checkAddress2" name="placeRecieve">
										</div>
									</div>
									<div class="f-item one-half">
										
										<input  type="text" id="getCar"  placeholder="Nhập số nhà ,đường,phường" readonly name=placeRecieve  value="Số 8-Tôn Thất Thuyết-Mỹ Đình-Hà Nội"/>
										<p style="display: none;" class="info" id="carInfo"></p>
									</div>
								</div>

								<div class="full-width">
									<div class="f-item one-fourth">
										<label for="datepicker12">Thời Gian Trả</label>
										<div class="datepicker-wrap"><input type="text" placeholder="" id="dropOff" name="tiemDropOff" /></div>
									</div>
									<div class="one-fifth" style="margin-top: -10px;">
										<label for="returnCar">Địa Điểm Trả Xe</label>
										<div class="f-item radio-cash">
											<label for="checkAddress3">Tại BookTravel</label>
											<input type="radio" checked id="checkAddress3" name="placeRender">
										</div>
										<div class="f-item radio-cash">
											<label for="checkAddress4">Tại Nhà Riêng</label>
											<input type="radio" id="checkAddress4" name="placeRender">
										</div>
									</div>
									<div class="f-item one-half">
												<input type="text" id="returnCar"  placeholder="Nhập số nhà ,đường,phường" readonly name="placeRender"  value="Số 8-Tôn Thất Thuyết-Mỹ Đình-Hà Nội"/>
												<p style="display: none;" class="info" id="carInfo2"></p>
											</div>
							
								</div>
										<div class="full-width">
											<div class="one-half">
												<input type="checkbox"  onclick="$(this).val(this.checked ? 1 : 0)" id="driver" name="stateDriver">
												<label for="driver">Thuê người lái xe 300,000đ/ngày</label>
											</div>
										</div>
							</div>
							<h2><span>03 </span>Xin Quý Khách Chọn Hình Thức Thanh Toán </h2>
							<div class="row full-width">
								<div class="f-item radio-cash">
									<label>Tiền Mặt</label>
									<input type="radio" id="checkCash1" name="checkCash" value="tienmat">
								</div>
								<div class="f-item radio-cash">
									<label>Chuyển Khoản</label>
									<input type="radio" id="checkCash2" name="checkCash" value="chuyenkhoan">
								</div>
								<div class="f-item radio-cash">
									<label>Thanh Toán Online</label>
									<input type="radio" checked id="checkCash3" name="checkCash"  value="online">
								</div>
								<div class="f-item" id="check-btn1" style="display:none;">
									<label style="font-size: 17px;"><strong>Quý khách vui lòng thanh toán bất kì đại lý nào BookTravel</strong></label>
									 
								</div>
								<div class="f-item" id="check-btn2" style="display:none;">
									<label style="font-size: 17px;"><strong>Phương thức thanh toán chuyển khoản</strong></label>
									<p style="margin-left: 10px">
										<br>
										<b>Chủ tài khoản</b> : Công ty cổ phần Du lịch và Tiếp Thị Giao Thông Vận Tải Việt Nam- BookTravel.<br>
										<b>Ngân hàng</b> : Ngân hàng Ngoại Thương - Chi nhánh Tp. Hà Nội.<br>
										Số tài khoản :<br>
										<b> Tài khoản VNĐ :</b> <font color="#FF0000">0071000012584</font><br>
									<b>Tài khoản USD : </b><font color="#FF0000">0071370089095</font> </p>
									 
								</div>
								<div class="f-item" id="check-btn3" >
									<span id="UcReadFilePayment1_lbContent">
									<label style="font-size: 17px;"><strong>Chọn thanh toán bằng thẻ tín dụng 123Pay</strong></label><br>
										Tất cả giao dịch của quý khách thông qua cổng thanh toán 123Pay được xử lý bảo mật trên nền tảng bảo mật của VeriSign và tiêu chuẩn bảo mật nối tiếng PCI DSS được chứng thực bởi Trustwave, Vietravel không lưu giữ bất kì thông tin nào về thẻ của quý khách tại hệ thống của Vietravel. Do đó, quý khách có thể hoàn toàn an tâm rằng thông tin thẻ của quý khách được bảo đảm an toàn tuyệt đối.<br>
										Hiện tại hệ thống www.travel.com.vn chấp nhận cho Quý khách thanh toán bằng một trong các loại thẻ sau: VISA (Credit hoặc Debit), MasterCard (Credit), JCB (Credit) của các ngân hàng phát hành tại Việt Nam</span>
									 
								</div>
							</div> 
							<div class="row">
								<div class=" full-width">
									 <!-- -->
									 		<jsp:useBean id="carDAO" class="dao.CarDAO"></jsp:useBean>
			<c:set var="id" value="${param.id }"></c:set>
			<c:set var="car" value="${carDAO.getCarDetails(id) }"></c:set>
										<input type="hidden" value="${car.price }" name="priceCar">
										<input type="hidden" value="${car.idCar }" name="idCar">
									 
									<input type="submit" onclick=" return checkdate()"   class="gradient-button" value="Đặt Tour" id="next-step" />
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
			
					
						<h1>${car.nameCar }</h1>
						<dl class="booking-info">
							<dt>Mã Xe</dt>
							<dd>${car.idCar }</dd>
							<dt>Nhà Sản Xuất</dt>
							<dd>${car.brand }</dd>
							<dt>Số Ghế</dt>
							<dd>${car.quanitySeat }</dd>
							<dt>Hộp Số </dt>
							<dd>
								<c:choose>
										<c:when test="${car.gear ==1 }">
											Hộp Số:<b>Số Sàn</b>
										</c:when>
										<c:otherwise>
											Hộp Số:<b>Số Tự Động</b>
										</c:otherwise>
									</c:choose>
									
							</dd>
							<dt>Nhiên Liệu </dt>
							<c:choose>
								<c:when test="${car.fuel ==1}">
									<dd>Xăng</dd>
								</c:when>
								<c:otherwise>
									<dd>Dầu</dd>
								</c:otherwise>
							</c:choose>
							
						</dl>
						<div class="price">
							<p class="total">Giá:  <f:formatNumber value="${car.price }"  maxFractionDigits="0"  minFractionDigits="0"></f:formatNumber> đ/ngày</p>	
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
	
	
	      <script language="javascript">


	      	$(document).ready(function()
	      	{ 	

	      		$("#checkCash1").click(function(){
	      			$("#check-btn1").css('display','block');
	      			$("#check-btn2").css('display','none');
	      			$("#check-btn3").css('display','none');
	      		}); 
	      		$("#checkCash2").click(function(){
	      			$("#check-btn1").css('display','none');
	      			$("#check-btn2").css('display','block');
	      			$("#check-btn3").css('display','none');
	      		}); 
	      		$("#checkCash3").click(function(){
	      			$("#check-btn1").css('display','none');
	      			$("#check-btn2").css('display','none');
	      			$("#check-btn3").css('display','block');
	      		}); 
	      		$("#checkAddress1").click(function( ){
	      			// $("#getCar").slideDown();
	      			$("#carInfo").slideUp();
	      			$("#getCar").val('Số 8-Tôn Thất Thuyết-Mỹ Đình-Hà Nội');
	      			$("#getCar").attr('readonly','readonly');

	      		});
	      		$("#checkAddress2").click(function( ){
	      			// $("#getCar").slideDown();
	      			$("#getCar").val('');
	      			$("#getCar").removeAttr('readonly');
	      			$("#carInfo").slideDown();
	      			$("#carInfo").text("Phí vận chuyển 100,000đ khu vực nội thành.");

	      		});
	      		$("#checkAddress3").click(function( ){
	      			// $("#returnCar").slideDown();
	      			$("#carInfo2").slideUp();
	      			$("#returnCar").val('Số 8-Tôn Thất Thuyết-Mỹ Đình-Hà Nội');
	      			$("#returnCar").attr('readonly','readonly');

	      		});
	      		$("#checkAddress4").click(function( ){
	      			// $("#returnCar").slideDown();
	      			$("#returnCar").val('');
	      			$("#returnCar").removeAttr('readonly');
	      			$("#carInfo2").slideDown();
	      			$("#carInfo2").text("Phí vận chuyển 100,000đ khu vực nội thành.");

	      		});
	      		// $("#pickUp").datepicker({
	      		// 	numberOfMonths: 1,
	      		// 	onSelect: function(selected) {
	      		// 		$("#dropOff").datepicker("option","minDate", selected)
	      		// 	}
	      		// });
	      		// $("#dropOff").datepicker({ 
	      		// 	numberOfMonths: 1,
	      		// 	onSelect: function(selected) {
	      		// 		$("#pickUp").datepicker("option","maxDate", selected)
	      		// 	}
	      		// });  



	      		$('#form_register').submit(function(){
                		// alert ('anc');
                    // BƯỚC 1: Lấy dữ liệu từ form
                    var fullname    = $.trim($('#fullname').val());
                    var email       = $.trim($('#email').val());
                    var phone       = $.trim($('#phone').val());
                    var address     = $.trim($('#address').val());
                    var birthdate     = $.trim($('#date').val());
                    var pickup     = $.trim($('#pickUp').val());
                    var dropoff     = $.trim($('#dropOff').val());
                    var getcar     = $.trim($('#getCar').val());
                    var returncar     = $.trim($('#returnCar').val());

                    // BƯỚC 2: Validate dữ liệu
                    // Biến cờ hiệu
                    var flag = true;


                    // Username
                    if (fullname == '' || username.length < 4){
                    	$('#fullname').attr("placeholder", "Họ Tên Lớn hơn 4 kí tự");

                    	flag = false;
                        // debugger;
                    }
                    else{
                    	$('#fullname_error').text('');
                    }
                     //  Phone 
                    if ( phone.length <= 0  ){
                        $('#phone').attr('placeholder','Bạn phải nhập Số điện thoại ');
                        flag = false;
                    }
                    else{
                        $('#password_error').text('');
                    }
                    // Email
                    if (email.length <=0){
                        $('#email').attr('placeholder','Email không được để trống và phải đúng định dạng');
                        flag = false;
                    }
                    else{
                        $('#email_error').text('');
                    }
                      // address
                    if (address.length <= 0){
                        $('#address').attr('placeholder','Bạn phải nhập địa chỉ');
                        flag = false;   
                    }
                    else{
                        $('#address_error').text('');
                    }
                  	
                         // address
                    if (pickup.length <= 0){
                        $('#pickUp').attr('placeholder','Băt buộc nhập');
                        flag = false;   
                    }
                    else{
                        $('#pickUp').attr('placeholder','');
                    }
                         // address
                    if (dropoff.length <= 0){
                        $('#dropOff').attr('placeholder','Bắt buộc nhập');
                        flag = false;   
                    }
                    else{
                        $('#dropOff').attr('placeholder','');
                    }
                         // address
                    if (getcar.length <= 0){
                        $('#getCar').attr('placeholder','Bạn phải nhập địa chỉ');
                        flag = false;   
                    }
                    else{
                        $('#address_error').attr('placeholder','');
                    }
                         // address
                    if (returncar.length <= 0){
                        $('#returnCar').attr('placeholder','Bạn phải nhập địa chỉ');
                        flag = false;   
                    }
                    else{
                        $('#returnCar').attr('placeholder','');
                    }
                         return flag;
                 });


	      	});
				function checkdate(){
						var pickup = document.getElementById("pickUp").value;
						var dropoff = document.getElementById("dropOff").value;
						var check = true;
						if (Date.parse(pickup) > Date.parse(dropoff)) {
							alert("Xin xác nhận lại thời gian ,thời gian trả xe phải lớn hơn thời gian đi");
							check = false;
						}
						return check;
					}	
					 
        </script>

</body>
</html>