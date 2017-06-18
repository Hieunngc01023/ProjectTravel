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
	
	<title>Book Your Travel - Page</title>
	
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
					<li><a href="index.html" title="Home">Home</a></li> 
					<li>Page with right sidebar</li>                                       
				</ul>
				<!--//crumbs-->
			</nav>
			<!--//breadcrumbs-->
			
			<div class="row">
				<!--three-fourth content-->
				<div class="three-fourth">
			 
					
					<div class="row deals  results">
						<c:set var="tours" value="${setTours}"></c:set>
						<c:if test="${tours.size() == 0 }">
							<h1>Không tìm thấy Tour bạn yêu cầu:</h1>
						</c:if>
						<c:forEach items="${setTours }" var="tour">
							<article class="one-third promo">
								<div class="ribbon-small">- <f:formatNumber value="${(tour.virtualPrice - tour.realPrice)*100/tour.virtualPrice }" minFractionDigits="0" maxFractionDigits="0"></f:formatNumber>%</div>
								<figure><a href="#" title=""><img src="images/uploads/cruise1.jpg" alt="" /></a></figure>
								<div class="details">
									<h3>${tour.title }</h3>
									 <span class="price">Giá :	  <em style="text-decoration: line-through;"> <f:formatNumber value="${tour.virtualPrice }" minFractionDigits="0" maxFractionDigits="0"></f:formatNumber>  VND </em> <em> <f:formatNumber value="${tour.realPrice }" minFractionDigits="0" maxFractionDigits="0" ></f:formatNumber> VND | </em>  </span>
									<div class="description">
										 <span class="price"> 20/5/2017 <em>5 Ngày</em></span>
									</div>
									<a href="DetailTravel.jsp?idTour=${tour.idTourDetail}" title="Book now" class="gradient-button"> Đặt Vé</a>
								</div>
							</article>
						</c:forEach>
					
						<!--deal-->
							<!-- <article class="one-third promo">
								<div class="ribbon-small">- 10%</div>
								<figure><a href="#" title=""><img src="images/uploads/cruise1.jpg" alt="" /></a></figure>
								<div class="details">
									<h3>Royal Caribbean</h3>
									 <span class="price">Giá :	  <em style="text-decoration: line-through;"> $1000   </em> <em>$ 500 | </em>  </span>
									<div class="description">
										 <span class="price"> 20/5/2017 <em>5 Ngày</em></span>
									</div>
									<a href="DetailTravel.html" title="Book now" class="gradient-button"> Đặt Vé</a>
								</div>
							</article>
							//deal
						deal
							<article class="one-third promo">
								<div class="ribbon-small">- 10%</div>
								<figure><a href="#" title=""><img src="images/uploads/cruise1.jpg" alt="" /></a></figure>
								<div class="details">
									<h3>Royal Caribbean</h3>
									 <span class="price">Giá :	  <em style="text-decoration: line-through;"> $1000   </em> <em>$ 500 | </em>  </span>
									<div class="description">
										 <span class="price"> 20/5/2017 <em>5 Ngày</em></span>
									</div>
									<a href="DetailTravel.html" title="Book now" class="gradient-button"> Đặt Vé</a>
								</div>
							</article>
							//deal
							deal
							<article class="one-third promo">
								<div class="ribbon-small">- 10%</div>
								<figure><a href="#" title=""><img src="images/uploads/cruise1.jpg" alt="" /></a></figure>
								<div class="details">
									<h3>Royal Caribbean</h3>
									 <span class="price">Giá :	  <em style="text-decoration: line-through;"> $1000   </em> <em>$ 500 | </em>  </span>
									<div class="description">
										 <span class="price"> 20/5/2017 <em>5 Ngày</em></span>
									</div>
									<a href="DetailTravel.html" title="Book now" class="gradient-button"> Đặt Vé</a>
								</div>
							</article>
							//deal
							deal
							<article class="one-third promo">
								<div class="ribbon-small">- 10%</div>
								<figure><a href="#" title=""><img src="images/uploads/cruise1.jpg" alt="" /></a></figure>
								<div class="details">
									<h3>Royal Caribbean</h3>
									 <span class="price">Giá :	  <em style="text-decoration: line-through;"> $1000   </em> <em>$ 500 | </em>  </span>
									<div class="description">
										 <span class="price"> 20/5/2017 <em>5 Ngày</em></span>
									</div>
									<a href="DetailTravel.html" title="Book now" class="gradient-button"> Đặt Vé</a>
								</div>
							</article>
							//deal
							deal
							<article class="one-third promo">
								<div class="ribbon-small">- 10%</div>
								<figure><a href="#" title=""><img src="images/uploads/cruise1.jpg" alt="" /></a></figure>
								<div class="details">
									<h3>Royal Caribbean</h3>
									 <span class="price">Giá :	  <em style="text-decoration: line-through;"> $1000   </em> <em>$ 500 | </em>  </span>
									<div class="description">
										 <span class="price"> 20/5/2017 <em>5 Ngày</em></span>
									</div>
									<a href="DetailTravel.html" title="Book now" class="gradient-button"> Đặt Vé</a>
								</div>
							</article>
							//deal
							deal
							<article class="one-third promo">
								<div class="ribbon-small">- 10%</div>
								<figure><a href="#" title=""><img src="images/uploads/cruise1.jpg" alt="" /></a></figure>
								<div class="details">
									<h3>Royal Caribbean</h3>
									 <span class="price">Giá :	  <em style="text-decoration: line-through;"> $1000   </em> <em>$ 500 | </em>  </span>
									<div class="description">
										 <span class="price"> 20/5/2017 <em>5 Ngày</em></span>
									</div>
									<a href="DetailTravel.html" title="Book now" class="gradient-button"> Đặt Vé</a>
								</div>
							</article> -->
							<!--//deal-->
							
						<!-- <div class="bottom-nav">
							back up button
							<a href="#" class="scroll-to-top" title="Back up">Back up</a> 
							//back up button
							
							pager
							<div class="pager">
								<span><a href="#">First page</a></span>
								<span><a href="#">&lt;</a></span>
								<span class="current">1</span>
								<span><a href="#">2</a></span>
								<span><a href="#">3</a></span>
								<span><a href="#">4</a></span>
								<span><a href="#">5</a></span>
								<span><a href="#">6</a></span>
								<span><a href="#">7</a></span>
								<span><a href="#">8</a></span>
								<span><a href="#">&gt;</a></span>
								<span><a href="#">Last page</a></span>
							</div>
							//pager
						</div> -->
						<!--//bottom navigation-->
					</div>
				</div>
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