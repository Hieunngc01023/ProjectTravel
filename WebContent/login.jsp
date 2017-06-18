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
	<%@ include file="header.jsp" %>
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
		<%@ include file="searchindex.jsp" %>
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
						<c:forEach items="${tourDao.getListHotTour()}" var="item">
							<article class="one-fourth promo">
								
								<div class="ribbon-small">- <f:formatNumber value="${(item.virtualPrice - item.realPrice)*100/item.virtualPrice }" minFractionDigits="0" maxFractionDigits="0"></f:formatNumber>%</div>
								<figure><a href="#" title=""><img src="admin/admin-assets/img/${item.imageTitle }" alt="" /></a></figure>
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
						<h2>Tour Trong Nước</h2>
					</header>
					
					<!--top destinations-->
					<div class="destinations">
						<div class="row">
						<c:forEach items="${tourDao.getListNormalTour()}" var="item">
							<article class="one-fourth">
								<figure><a href="location.html" title=""><img src="admin/admin-assets/img/${item.imageTitle }" alt="" /></a></figure>
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
							
							<!--//column-->			 
						</div>
					</div>
					<!--//top destinations-->

					

					<!--top Gia Tot-->
					
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
		<%@ include file="footer.jsp" %>
	<!---footer-->
	 <div class="lightbox" style="display:block;">
		<div class="lb-wrap">
			<a href="#" class="close">x</a>
			<div class="lb-content">
				<form class="row" method="post" action="loginAction"  id="formLogin">
					<h3>Đăng Nhập</h3>
					<c:if test="${stateLogin != null }">
						<h4>${stateLogin }</h4>
					</c:if>
					<div class="f-item full-width">
						<label for="email">Email</label>
						<input type="email" id="email" placeholder="Nhập Email của Bạn" name="email" />
					</div>
					<div class="f-item full-width">
						<label for="password">Mật Khẩu</label>
						<input type="password" id="password" placeholder="Nhập Mật khẩu của Bạn" name="password" />
					</div>
					<div class="f-item checkbox full-width">
						<input type="checkbox" id="remember_me" name="checkbox" />
						<label for="remember_me">Nhớ Mật khẩu</label>
					</div>
					<div class="f-item full-width">
						<p>
						<a href="register.jsp" title="Sign up">Đăng kí.</a>
						</p>
						<input type="submit" id="login" name="login" value="Đăng Nhập" class="gradient-button" />
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<!-- Java scrip -->
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
             		 $('form').attr('action', '#');
             	}); 
             	$("#rentcar").click(function(){
             		 $('form').attr('action', 'searchCarAction');
             	}); 
             	$("#flight").click(function(){
             		 $('form').attr('action', '#');
             	}); 
 		});
 	</script>
</body>
</html>