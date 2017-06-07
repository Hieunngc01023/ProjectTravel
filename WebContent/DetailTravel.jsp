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
					 <li><a href="contact.jsp" title="Contact">Liên Hệ</a></li>
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
			<jsp:useBean id="tourDAO" class="dao.TourDAO" scope="page"></jsp:useBean>
			<div class="row">
				<!--hotel three-fourth content-->
				<section class="three-fourth">
					<!--gallery-->
					<div class="gallery col-md-10">
						<div class="col-md-10 " >
							<img src="images/uploads/cruise1.jpg" alt="" />
						</div>
						<div class="detail-book col-md-10">
							<div class=" box-content col-md-5 col-md-offset-1"> 
							<c:set var="id" value="${param.idTour}"></c:set>
							<c:out value=""></c:out>
						<c:choose>
							<c:when test="${idTourDetail != null }">
								<c:set var="tour" value="${tourDAO.getTourDetail(idTourDetail)}"></c:set>
							</c:when>
							<c:otherwise>
								<c:set var="tour" value="${tourDAO.getTourDetail(id)}"></c:set>  
							</c:otherwise>
						</c:choose>
						
								<p>Mã tour:<b>${tour.idTourDetail}</b></p>
								<p>Thời gian: <b>${tour.quatiDate} Ngày</b></p>
								<p>
									Khởi hành:<b>${tour.timBegin}</b>
								</p>
								<p>Nơi khởi hành: <b>${tour.pickupPlace }</b></p>
								<p>
									Số chỗ còn nhận: <b class="price">${tour.seatAvailable}</b>
								</p>
							</div>
							<div class="col-md-6 box-price">
								<div class="price-book1">${tour.virtualPrice }</div>
								<div class="price-book2"><span itemprop="price">${tour.realPrice} </span><span> đ</span></div>

								<div class="btn-book">
									<a href="bookingstepOne.jsp?id=${tour.idTourDetail}" class="gradient-button ">ĐẶT NGAY</a>
								</div>
							</div>
						</div>
					</div>
					<!--//gallery-->
				
					<!--inner navigation-->
					<nav class="inner-nav">
						<ul>
							<li class="availability"><a href="#availability" title="Availability">Chương trình Tour</a></li>
							<li class="description"><a href="#description" title="Description">Chi tiết Tour</a></li>
							<li class="facilities"><a href="#facilities" title="Facilities">Lưu ý</a></li>
							<li class="location"><a href="#location" title="Location">Liên Hệ</a></li>
							<li class="reviews"><a href="#reviews" title="Reviews">Ngày Khác</a></li>
							<li class="things-to-do"><a href="#things-to-do" title="Things to do">Thông Tin</a></li>
						</ul>
					</nav>
					<!--//inner navigation-->
					
					<!--availability-->
					<section id="availability" class="tab-content">
						<article>
							<h2>Chương Trình Tour</h2>
							<div class="text-wrap">
								<p>Ngày 1 : TP. HỒ CHÍ MINH - BẮC KINH (Ăn trưa, tối)

									Trưởng đòan Công ty Vietravel đón Quý khách tại cổng hẹn ở phi trường Tân Sơn Nhất đáp chuyến bay đi Bắc Kinh. Quý khách ăn sáng nhẹ trên máy bay. Đến Bắc Kinh, xe và hướng dẫn viên địa phương sẽ đón đoàn đưa đi ăn trưa. Buổi chiều, Quý khách tham quan Tử Cấm Thành - là cung điện của các triều đại từ giữa nhà Minh đến cuối nhà Thanh Trung Quốc, có diện tích 720.000 m2 gồm 800 cung và 8.886 phòng, được UNESCO công nhận là Di sản thế giới, tham quan Quảng Trường Thiên An Môn - là quảng trường rộng nhất thế giới, có thể chứa một lúc 1 triệu người. . Sau đó, Quý khách ghé mua sắm kỳ hươu tại Đông Tiện Môn -  tìm hiểu về Kỳ Hưu, một thần thú đem lại may mắn cho người dân Trung Quốc Thưởng thức chương trình biểu diễn xiếc đặc sắc. Ăn tối với món vịt quay Bắc Kinh nổi tiếng và trở về khách sạn nghỉ ngơi. Nhận phòng tại khách sạn  tiêu chuẩn 3 sao.</p><br>

									<p>Ngày 2 : BẮC KINH (Ăn ba bữa)

									Sau khi ăn sáng tại khách sạn, Quý khách tham quan Vạn Lý Trường Thành - một trong những kỳ quan của thế giới, là công trình nhân tạo với mục đích phục vụ cho quân sự có một không hai trên thế giới. Quý khách tiếp tục tham quan Thập Tam Lăng - đây là quần thể lăng mộ của 13 đời vua nhà Minh (1368-1644), được UNESCO công nhận là Di sản văn hóa thế giới vào năm 2003. Sau đó, Quý khách ghé thăm cửa hàng đá cẩm thạch và hiệu thuốc Bắc nổi tiếng Đồng Nhân Đường. Sau bữa tối, Quý khách tự do mua sắm tại phố Vương Phủ Tỉnh. Về lại khách sạn nghỉ ngơi.
									</p><br>
									<p>
									Ngày 3 : BẮC KINH - THƯỢNG HẢI (Ăn ba bữa)

									Ăn sáng tại khách sạn. Quý khách ghé thăm cửa hàng ngọc trai, tham quan Di Hòa Viên - từng là nơi nghỉ dưỡng của Hoàng Gia, có kiến trúc độc đáo đậm nét Trung Hoa với hồ nước, vườn hoa, những cành liễu rũ bên bờ hồ thơ mộng, được UNESCO công nhận là di sản thế giới. Sau bữa tối, Quý khách khởi hành ra sân bay đáp chuyến bay đến Thượng Hải. Đến nơi, Quý khách nhận phòng khách sạn nghỉ ngơi.
									</p><br>
									<p>
									Ngày 4 : THƯỢNG HẢI (Ăn ba bữa)

									Sau khi ăn sáng tại khách sạn, Đoàn tham quan chùa Ngọc Phật, ghé thăm cửa hàng dao, tham quan Bến Thượng Hải. Sau đó, Quý khách tự do mua sắm tại phố Nam Kinh. Ăn tối tại nhà hàng địa phương và trở về khách sạn nghỉ ngơi.
									</p><br>
									<p>
									Ngày 5 : THƯỢNG HẢI - TÔ CHÂU (Ăn ba bữa)

									Sau khi ăn sáng, Quý khách khởi hành đi Tô Châu bằng xe máy lạnh. Quý khách tham quan  Hàn Sơn Tự  - một trong những ngôi chùa cổ của Trung Quốc với bức bích họa nổi tiếng “Hàn Sơn – Thập Đắc” được khắc trên đá của danh họa đời Thanh. Tiếp tục tham quan Sư Tử Lâm - Tuyệt tác kiến trúc viên lâm Tô Châu, là một trong 4 lâm viên đẹp nhất Tô Châu. Trong Sư Tử Lâm, người ta xây dựng nhiều hang động nhân tạo rất kỳ ảo chẳng khác nào những mê cung. Sau đó, Quý khách tham quan xưởng sản xuất tơ lụa nổi tiếng của Tô Châu, cửa hàng ấm tử sa. Ăn tối, nhận phòng tại khách sạn  tiêu chuẩn 3 sao.

									</p>
							</div>
							
							
						</article>
					</section>
					<!--//availability-->
					
					<!--description-->
					<section id="description" class="tab-content">
						<article>
							<h2>Thông Tin Ngày Đi</h2>

							<div class="text-wrap">	
								<p>
									Ngày Đi:<b>${tour.timBegin }</b>
								</p>
								<p>
									Ngày Về:<b>${tour.timeEnd }</b>
								</p>
							</div>
							
							<h2>Giá Tour Cơ Bản</h2>
							<div class="text-wrap">	
								<table>
									<thead>
										<tr>
											<th></th>
											<th>Giá từ 1 đên 5 người</th>
											<th>Giá từ 6 đên 14 người</th>
											<th>Giá từ 15 trở lên</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>Giá Tour Cơ bản</td>
											<td><f:formatNumber value="${tour.realPrice }" minFractionDigits="0" maxFractionDigits="0"></f:formatNumber></td>	
											
											<c:choose>
												<c:when test="${tour.sale1 > 0 }">
													<f:formatNumber var="sale1" value="${tour.realPrice -(tour.realPrice*tour.sale1/100)}"></f:formatNumber>
												</c:when>
												<c:otherwise>
													<c:set var="sale1" value="Không hổ trợ"></c:set>
												</c:otherwise>
											</c:choose>
											<td> ${sale1}</td>
											
												<c:choose>
												<c:when test="${tour.sale2 > 0 }">
													<f:formatNumber var="sale2" value="${tour.realPrice -(tour.realPrice*tour.sale2/100) }"></f:formatNumber>
												</c:when>
												<c:otherwise>
													<c:set var="sale2" value="Không hổ trợ"></c:set>
												</c:otherwise>
											</c:choose>
											<td> ${sale2}</td>	
										</tr>
										<tr>
											<td>Phí Xăng dầu & Bảo hiểm</td>
											<td>0đ</td>	
											<td>0đ</td>	
											<td>0đ</td>	
										</tr>
										<tr>
											<td>Lệ Phí Sân Bay</td>
											<td>0đ</td>	
											<td>0đ</td>	
											<td>0đ</td>	
										</tr>
									</tbody>
								</table>
							</div>
							
						</article>
					</section>
					<!--//description-->
					
					<!--facilities-->
					<section id="facilities" class="tab-content">
						<article>
							<h2>Lưu Ý</h2>
							<div class="text-wrap">

								<h3>Điều Kiện Thanh Toán:</h3> 
									<p>
									- Khi đăng ký đặt cọc 50% số tiền tour <br>	
									- Số tiền còn lại thanh toán hết trước ngày khởi hành 7-10 ngày (áp dụng tour ngày thường), trước ngày khởi hành 20-25 ngày (áp dụng tour lễ tết) 
								</p><br>
								
									<h3>Các Điều Kiện Khi Đăng Ký Tour: </h3>
									<p>
										- Khi đăng ký tour Quý khách vui lòng mang theo CMND/Passport bản chính hoặc cung cấp tên chính xác đầy đủ, đúng từng ký tự trên CMND/ Passport (Hộ chiếu)/Giấy khai sinh (trẻ em dưới 14 tuổi) theo thứ tự: Họ/tên lót/tên. Quý khách khi đăng ký cung cấp tên theo giấy tờ tùy thân nào, khi đi tour phải mang theo giấy tờ tùy thân đó theo quy định hãng hàng không 
										<br>

										- Quy định giấy tờ tùy thân khi đi tour: Đối với Khách Quốc tịch Việt Nam: Khi đi tour Trẻ em từ 14 tuổi trở lên và người lớn cần đem theo CMND/Passport (Hộ chiếu) bản chính còn hạn sử dụng, hình ảnh rõ (CMND có thời hạn sử dụng không quá 15 năm, tính từ ngày cấp, hình ảnh rõ)/ Giấy khai sinh bản chính (trẻ em dưới 14 tuổi), trẻ em trên 14 tuổi bắt buộc phải có CMND hoặc Passport làm thủ tục lên máy bay. Đối với khách Nước ngoài/Việt Kiều: Khi đi tour phải mang theo đầy đủ Passport (Hộ Chiếu) bản chính còn hạn sử dụng hoặc thẻ xanh kèm theo Visa và giấy tái xuất nhập Việt Nam, làm thủ tục lên máy bay theo qui định hàng không.  
										<br>

										- Trong trường hợp Quý khách cung cấp tên sai, đến trễ giờ bay, vui lòng chịu phí đổi vé hoặc mua lại vé mới theo quy định của Hãng Hàng Không (nếu chuyến bay còn chỗ). 
										<br>

										- Trong trường hợp Quý khách bay hãng hàng không Vietjet và Jetstar, vé không hoàn, không dời, đổi, huỷ, sai tên mất 100% theo qui định hãng hàng không. Giá vé máy bay trẻ em bằng 100% người lớn. 
										<br>

										- Trong trường hợp Quý khách bay hãng hàng không Vietnam Airlines. Vé máy bay khuyến mãi không hoàn, không đổi, hủy, sai tên mất 100%. Vé Vietnam Airlines  không bay chặng đi, tự động hủy chặng về. Giá vé máy bay trẻ em bằng 75% vé người lớn. 
										<br>

										- Do các chuyến bay phụ thuộc vào các hãng Hàng Không (Vietnam Airlines, Vietjet, Jetstar,..) nên trong một số trường hợp giá vé, chuyến bay, giờ bay có thể thay đổi mà không được báo trước. Tùy vào tình hình thực tế, Chương trình và điểm tham quan có thể linh động thay đổi thứ tự các điểm phù hợp điều kiện giờ bay và thời tiết thực tế. Vietravel sẽ không chịu 

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
					
					
					<!-- comment -->
				
				
				
				
					
					<div class="comments">
						<jsp:useBean id="commentDAO" class="dao.CommentDAO" scope="page"></jsp:useBean>
						<h2>${commentDAO.getTotalComment(tour.idTour) } comments</h2>	
						<!--single comment-->
						<c:forEach items="${commentDAO.getListComments(tour.idTour) }" var="comment">
							<c:if test="${commentDAO.getListComments(tour.idTour).size() >0 }">															
								<div class="comment depth-0">
							<div class="third">
								<figure><img alt="avatar" src="images/uploads/avatar.jpg" /></figure>
								<address>
									<span>${comment.nameUser }</span><br />
									${comment.dateComment }
								</address>
							</div>
							<div class="comment-content">${comment.content }</div>
							<a href="#form" class="reply" onclick="callfunction(${comment.idComment}, 'sub')">Reply</a>
						</div>
							<c:if test="${commentDAO.getListSubComment(comment.idComment).size() > 0 }">
								<c:forEach items="${commentDAO.getListSubComment(comment.idComment)}" var="sub">
									<div class="comment depth-1">
							<div class="third">
								<figure><img alt="avatar" src="images/uploads/avatar.jpg" /></figure>
								<address>
									<span> ${sub.nameUser }</span><br />
									 ${sub.dateComment}
								</address>
							</div>
							<div class="comment-content">${sub.content }</div>
						</div>

							</c:forEach>
								
							</c:if>
								
							</c:if>
						</c:forEach>
						
						
						
						<script type="text/javascript">
								function callfunction(a, b){
									document.getElementById("typeComment").value = b;
									document.getElementById("idMain").value = a;
								}
							</script>
						
						
						<!--post comment form-->
						<article class="post-comment static-content">
							<h3>Để Lại Bình Luận</h3>
							<form class="row" id= "form" action="commentAction">
							<input type="hidden" name="typeComment" id="typeComment" value="main">
							<input type="hidden" name="idMain" value ="" id="idMain">
							<input type="hidden" name="idTour" value="${tour.idTour }">
							<input type="hidden" name= "idTourDetail" value="${tour.idTourDetail }">
								<div class="f-item full-width">
									<label for="name">Họ và Tên</label>
									<input type="text" placeholder="Phải Nhập Họ Tên" id="name" name="name"/>
								</div>
								<div class="f-item full-width">
									<label for="eadress">E-mail</label>
									<input type="email" placeholder="Phải nhập Email" id="email" name="email"/>
								</div>
								<div class="f-item full-width">
									<label for="comment">Nội Dung</label>
									<textarea id="comment" rows="10" cols="10" name="content"></textarea>
								</div>
								<div class="f-item full-width">
									<input type="submit" value="Gửi Bình Luận" class="gradient-button"  />
								</div>
							</form>
						</article>
						<!--//post comment form-->
					</div>
					<!--//comments-->
					
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
		var secheltLoc = new google.maps.LatLng(21.0287183, 105.7795214);

		var myMapOptions = {
			 zoom: 17
			,center: secheltLoc
			,mapTypeId: google.maps.MapTypeId.ROADMAP
		};
		var theMap = new google.maps.Map(document.getElementById("map_canvas"), myMapOptions);


		var marker = new google.maps.Marker({
			map: theMap,
			draggable: true,
			position: new google.maps.LatLng(21.0287183, 105.7795214),
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