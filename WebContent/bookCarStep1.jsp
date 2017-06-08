<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
					<li>Best ipsum hotel</li>                                       
				</ul>
				<!--//crumbs-->
			</nav>
			<!--//breadcrumbs-->
			
			<div class="row">
				<!--three-fourth content-->
				<div class="three-fourth">
					<form  action="booking-step2.html" method="post" id="form_register" class="static-content ">
						<fieldset>
							<h2><span>01 </span>Thông Tin Khách Hàng </h2>
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
							<div class="row">
								<div class="f-item full-width">
									<label>Ghi Chú Yêu Cầu Đặc Biệt:</label>
									<textarea rows="7" cols="7"></textarea>
								</div>
							</div>
							<h2><span>02 </span>Thông Tin Đặt Xe</h2>
							<div class="row ">
								<div class="full-width">
									<div class="f-item one-fourth">
										<label for="datepicker12">Thời Gian Lấy Xe</label>
										<div class="datepicker-wrap"><input type="text" placeholder="" id="pickUp" name="pickUp" /></div>
									</div>
									<div class="one-fifth" style="margin-top: -10px;">
										<label for="getCar">Địa Điểm Lấy Xe </label>
										<div class="f-item radio-cash">
											<label for="checkAddress1">Tại BookTravel</label>
											<input type="radio" checked id="checkAddress1" name="checkAddress">
										</div>
										<div class="f-item radio-cash">
											<label for="checkAddress2">Tại Nhà Riêng</label>
											<input type="radio" id="checkAddress2" name="checkAddress">
										</div>
									</div>
									<div class="f-item one-half">
										
										<input  type="text" id="getCar"  placeholder="Nhập số nhà ,đường,phường" readonly name="getCar"  value="Số 8-Tôn Thất Thuyết-Mỹ Đình-Hà Nội"/>
										<p style="display: none;" class="info" id="carInfo"></p>
									</div>
								</div>

								<div class="full-width">
									<div class="f-item one-fourth">
										<label for="datepicker12">Thời Gian Trả</label>
										<div class="datepicker-wrap"><input type="text" placeholder="" id="dropOff" name="dropOff" /></div>
									</div>
									<div class="one-fifth" style="margin-top: -10px;">
										<label for="returnCar">Địa Điểm Trả Xe</label>
										<div class="f-item radio-cash">
											<label for="checkAddress3">Tại BookTravel</label>
											<input type="radio" checked id="checkAddress3" name="checkAddress1">
										</div>
										<div class="f-item radio-cash">
											<label for="checkAddress4">Tại Nhà Riêng</label>
											<input type="radio" id="checkAddress4" name="checkAddress1">
										</div>
									</div>
									<div class="f-item one-half">
										
										<input type="text" id="returnCar"  placeholder="Nhập số nhà ,đường,phường" readonly name="returnCar"  value="Số 8-Tôn Thất Thuyết-Mỹ Đình-Hà Nội"/>
										<p style="display: none;" class="info" id="carInfo2"></p>
									</div>
								</div>

							</div>
							<h2><span>03 </span>Xin Quý Khách Chọn Hình Thức Thanh Toán </h2>
							<div class="row full-width">
								<div class="f-item radio-cash">
									<label>Tiền Mặt</label>
									<input type="radio" id="checkCash1" name="checkCash">
								</div>
								<div class="f-item radio-cash">
									<label>Chuyển Khoản</label>
									<input type="radio" id="checkCash2" name="checkCash">
								</div>
								<div class="f-item radio-cash">
									<label>Thanh Toán Online</label>
									<input type="radio" checked id="checkCash3" name="checkCash">
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
						<h1>Toyota Camry</h1>
						<dl class="booking-info">
							<dt>Mã Xe</dt>
							<dd>NDSGN389-008-310517VJ-P</dd>
							<dt>Nhà Sản Xuất</dt>
							<dd>Toyota</dd>
							<dt>Số Ghế</dt>
							<dd>4</dd>
							<dt>Hộp Số </dt>
							<dd>Số sàn</dd>
							<dt>Nhiên Liệu </dt>
							<dd>Xăng</dd>
						</dl>
						<div class="price">
							<p class="total">Giá:  1,000,000/ngày</p>	
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