<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
					<li><a href="#" title="Hotels">Tour</a></li>
					<li><a href="#" title="United Kingdom">Chi tiết tour</a></li>
					<li><a href="#" title="London">Mua</a></li>  
				</ul>
				<!--//crumbs-->
			</nav>
			<!--//breadcrumbs-->
			
			<div class="row">
				<!--three-fourth content-->
				<div class="three-fourth">	
							<c:choose>
								<c:when test="${sessionScope.email != null }">
									<jsp:useBean id="user" class="dao.UserDAO" scope="page"></jsp:useBean>
								    <c:set var="user" value="${user.getUserDetail(sessionScope.email) }"></c:set>
									<form  action="orderAction" method="post" id="form_register" class="static-content ">
						            <fieldset>
						            <h2><span>01 </span>Thông Tin Khách Hàng </h2>
							<div class="row full-width">
								<div class="f-item one-half">
									<label for="fullname">Họ và Tên</label>
									<input type="text" id="fullname" name="fullName" value=" ${user.fullName}" readonly="readonly" />
									 <p class="info" id="fullname_error"></p>
								</div>
								<div class="f-item one-fourth">
									<label for="phone">Số Điện Thoại</label>
									<input type="number" id="phone" name="phone" value="${user.phoneNumber }"/>
									<p class="info" id="phone_error"></p>
								</div>
								<div class="f-item one-fifth">
									<label for="member">Số Người</label>
									<input type="number" id="member" required min="1" name="member" />
								</div>
							</div>
							
							<div class="row">
								<div class="f-item one-half">
									<label for="email">Email </label>
									<input type="email" id="email" name="email" value = "${user.email }" readonly="readonly" />
									<p class="info" id="email_error"></p>
								</div>
								<div class="f-item one-half">
									<label for="address">Địa Chỉ</label>
									<input type="text" id="address" name="address" placeholder="Phường,Quận,Khu vực" required value="${user.address }" />
									<p class="info" id="address_error"></p>
								</div>
								 
							</div>
							<div class="row">
								<div class="f-item full-width">
									<label>Ghi Chú Yêu Cầu Đặc Biệt:</label>
									<textarea rows="7" cols="7" name="note"></textarea>
								</div>
							</div>
							<h2><span>02 </span>Xin Quý Khách Chọn Hình Thức Thanh Toán </h2>
							<div class="row full-width">
								<div class="f-item radio-cash">
									<label>Tiền Mặt</label>
									<input type="radio" id="checkCash1" name="checkCash" value="tienmat">
								</div>
								<div class="f-item radio-cash">
									<label>Chuyển Khoản</label>
									<input type="radio" id="checkCash2" name="checkCash" value="chuyenkhoan" checked="checked">
								</div>
								<div class="f-item radio-cash">
									<label>Thanh Toán Online</label>
									<input type="radio" id="checkCash3" name="checkCash" value="online">
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
								<div class="f-item" id="check-btn3" style="display:none;">
									<span id="UcReadFilePayment1_lbContent">
									<label style="font-size: 17px;"><strong>Chọn thanh toán bằng thẻ tín dụng 123Pay</strong></label><br>
										Tất cả giao dịch của quý khách thông qua cổng thanh toán 123Pay được xử lý bảo mật trên nền tảng bảo mật của VeriSign và tiêu chuẩn bảo mật nối tiếng PCI DSS được chứng thực bởi Trustwave, Vietravel không lưu giữ bất kì thông tin nào về thẻ của quý khách tại hệ thống của Vietravel. Do đó, quý khách có thể hoàn toàn an tâm rằng thông tin thẻ của quý khách được bảo đảm an toàn tuyệt đối.<br>
										Hiện tại hệ thống www.travel.com.vn chấp nhận cho Quý khách thanh toán bằng một trong các loại thẻ sau: VISA (Credit hoặc Debit), MasterCard (Credit), JCB (Credit) của các ngân hàng phát hành tại Việt Nam</span>
									 
								</div>
							</div> 
							<jsp:useBean id="tourDAO" class="dao.TourDAO" scope="page"></jsp:useBean>
				<c:set var="id" value="${param.id}"></c:set>
				<c:set var="tour" value="${tourDAO.getTourDetail(id)}"></c:set>
							<div class="row">
								<div class=" full-width">
								<input type="hidden" value="${tour.idTourDetail}" name="idTourDetail">
										<input type="submit" class="gradient-button" value="Đặt Tour" id="next-step" />
								</div>
							</div>
						</fieldset>
					</form>
								</c:when>
								<c:otherwise>
									<form  action="orderAction" method="post" id="form_register" class="static-content ">
						                <fieldset>
						                <h2><span>01 </span>Thông Tin Khách Hàng </h2>
							<div class="row full-width">
								<div class="f-item one-half">
									<label for="fullname">Họ và Tên</label>
									<input type="text" id="fullname" name="fullName"  />
									 <p class="info" id="fullname_error"></p>
								</div>
								<div class="f-item one-fourth">
									<label for="phone">Số Điện Thoại</label>
									<input type="number" id="phone" name="phone" />
									<p class="info" id="phone_error"></p>
								</div>
								<div class="f-item one-fifth">
									<label for="member">Số Người</label>
									<input type="number" id="member" name="member" />
								</div>
							</div>
							
							<div class="row">
								<div class="f-item one-half">
									<label for="email">Email </label>
									<input type="email" id="email" name="email" />
									<p class="info" id="email_error"></p>
								</div>
								<div class="f-item one-half">
									<label for="address">Địa Chỉ</label>
									<input type="text" id="address" name="address" placeholder="Phường,Quận,Khu vực" />
									<p class="info" id="address_error"></p>
								</div>
								 
							</div>
							<div class="row">
								<div class="f-item full-width">
									<label>Ghi Chú Yêu Cầu Đặc Biệt:</label>
									<textarea rows="7" cols="7" name="note"></textarea>
								</div>
							</div>
							<h2><span>02 </span>Xin Quý Khách Chọn Hình Thức Thanh Toán </h2>
							<div class="row full-width">
								<div class="f-item radio-cash">
									<label>Tiền Mặt</label>
									<input type="radio" id="checkCash1" name="checkCash" value="tienmat">
								</div>
								<div class="f-item radio-cash">
									<label>Chuyển Khoản</label>
									<input type="radio" id="checkCash2" name="checkCash" value="chuyenkhoan" checked="checked">
								</div>
								<div class="f-item radio-cash">
									<label>Thanh Toán Online</label>
									<input type="radio" id="checkCash3" name="checkCash" value="online">
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
								<div class="f-item" id="check-btn3" style="display:none;">
									<span id="UcReadFilePayment1_lbContent">
									<label style="font-size: 17px;"><strong>Chọn thanh toán bằng thẻ tín dụng 123Pay</strong></label><br>
										Tất cả giao dịch của quý khách thông qua cổng thanh toán 123Pay được xử lý bảo mật trên nền tảng bảo mật của VeriSign và tiêu chuẩn bảo mật nối tiếng PCI DSS được chứng thực bởi Trustwave, Vietravel không lưu giữ bất kì thông tin nào về thẻ của quý khách tại hệ thống của Vietravel. Do đó, quý khách có thể hoàn toàn an tâm rằng thông tin thẻ của quý khách được bảo đảm an toàn tuyệt đối.<br>
										Hiện tại hệ thống www.travel.com.vn chấp nhận cho Quý khách thanh toán bằng một trong các loại thẻ sau: VISA (Credit hoặc Debit), MasterCard (Credit), JCB (Credit) của các ngân hàng phát hành tại Việt Nam</span>
									 
								</div>
							</div> 
							<jsp:useBean id="tourDAO1" class="dao.TourDAO" scope="page"></jsp:useBean>
				<c:set var="id" value="${param.id}"></c:set>
				<c:set var="tour" value="${tourDAO1.getTourDetail(id)}"></c:set>
							<div class="row">
								<div class=" full-width">
								<input type="hidden" value="${tour.idTourDetail}" name="idTourDetail">
										<input type="submit" class="gradient-button" value="Đặt Tour" id="next-step" />
									
								</div>
							</div>
						</fieldset>
					</form>
								</c:otherwise>
							</c:choose>


			</div>
				<!--//three-fourth content-->
				
				<!--right sidebar-->
				
				<aside class="one-fourth right-sidebar">
					<!--Booking details-->
				
					
					
					<article class="hotel-details booking-details">
						<h1>${tour.title }</h1>
						<dl class="booking-info">
							<dt>Mã Tour</dt>
							<dd>${tour.idTourDetail }</dd>
							<dt>Thời Gian</dt>
							<dd>${tour.quatiDate } Ngày</dd>
							<dt>Khởi Hành</dt>
							<dd>${tour.timBegin }</dd>
							<dt>Nơi Đón</dt>
							<dd>${tour.pickupPlace }</dd>
							<dt>Số Chỗ Còn Nhận</dt>
							<dd>${tour.seatAvailable }</dd>
						</dl>
						<div class="price">
							<p class="total"><f:formatNumber value="${tour.realPrice }" minFractionDigits="0" maxFractionDigits="0"></f:formatNumber></p>
							
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
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/jquery.uniform.min.js"></script>
	<script type="text/javascript" src="js/jquery.slimmenu.min.js"></script>
	<script type="text/javascript" src="js/scripts.js"></script>
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


                $('#form_register').submit(function(){
                		// alert ('anc');
                    // BƯỚC 1: Lấy dữ liệu từ form
                    var fullname    = $.trim($('#fullname').val());
                    var email       = $.trim($('#email').val());
                    var phone       = $.trim($('#phone').val());
                    var address     = $.trim($('#address').val());

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

                    return flag;
                });
            });
        </script>

</body>
</html>