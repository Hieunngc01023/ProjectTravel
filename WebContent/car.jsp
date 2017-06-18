<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="f"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="Book Your Travel - Online Booking HTML Template">
	<meta name="description" content="Book Your Travel - Online Booking HTML Template">
	<meta name="author" content="themeenergy.com">
	
	<title>Book Your Travel - Car rental</title>
	
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/theme-turqoise.css" id="template-color" />
	<link rel="stylesheet" href="css/lightslider.min.css" />
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
				
					<!--deals-->
					<jsp:useBean id="carDao" class="dao.CarDAO" scope="page"></jsp:useBean>
					
					<div class="deals cars">
						<div class="row">
							<!--deal-->
							
							<c:if test="${carDao.getListCars().size() >0 }">
							
								<c:forEach items="${carDao.getListCars() }" var="car">
									<article class="one-fourth">
								<figure><a href="#" title=""><img src="admin/admin-assets/img/${car.imageTitle }" alt="" /></a></figure>
								<div class="details">
									<h3>${car.nameCar }</h3> 
									
									<c:choose>
										<c:when test="${car.gear == 1 }">
											<span class="price price-more">Số sàn  <em style="color:red;"><f:formatNumber value="${car.price }" maxFractionDigits="0" minFractionDigits="0"></f:formatNumber> đ</em> </span>
										</c:when>
										<c:otherwise>
											<span class="price price-more">Số tự động  <em style="color:red;"><f:formatNumber value="${car.price }" maxFractionDigits="0" minFractionDigits="0"></f:formatNumber> đ</em> </span>
										</c:otherwise>
									</c:choose>
									
									<a href="carDetail.jsp?id=${car.idCar }" title="Book now" class="gradient-button">Chi Tiết</a>
								</div>
							</article>
								</c:forEach>
							</c:if>
							
							<%-- 
							<article class="one-fourth">
								<figure><a href="#" title=""><img src="images/uploads/car13.jpg" alt="" /></a></figure>
								<div class="details">
									<h3>Toyouta Camry</h3> 
									<span class="price price-more">Số sàn  <em style="color:red;">500.000đ</em> </span>
									<a href="car_detail.html" title="Book now" class="gradient-button">Chi Tiết</a>
								</div>
							</article> --%>
							
							<!--//deal-->
							 
						</div>
					</div>	
					<!--//deals-->
				</div>
			</div>
		</div>
	</main>
	<!--//main-->
	
	 	<!--footer-->
		<%@ include file="footer.jsp" %>
	<!---footer-->
	
	
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
