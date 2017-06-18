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
					<li>Search results</li>                                       
				</ul>
				<!--//crumbs-->
			</nav>
			<!--//breadcrumbs-->
			<jsp:useBean id="tourDAO" class="dao.TourDAO" scope="page"></jsp:useBean>
			<c:set var="id" value="${param.idTour}"></c:set>
						<c:choose>
							<c:when test="${idTourDetail != null }">
								<c:set var="tour" value="${tourDAO.getTourDetail(idTourDetail)}"></c:set>
							</c:when>
							<c:otherwise>
								<c:set var="tour" value="${tourDAO.getTourDetail(id)}"></c:set>  
							</c:otherwise>
						</c:choose>
			<div class="row">
				<!--hotel three-fourth content-->
				<section class="three-fourth">
					<!--gallery-->
					<div class="gallery col-md-10">
						<div class="col-md-10 " >
							<img src="admin/admin-assets/img/${tour.imageTitle }" alt="" />
						</div>
						<div class="detail-book col-md-10">
							<div class=" box-content col-md-5 col-md-offset-1"> 
							
							
							
						
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
								${tour.content }
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
							
							<c:choose>
								<c:when test="${sessionScope.email != null }">
								<jsp:useBean id="user" class="dao.UserDAO" scope="page"></jsp:useBean>
								    <c:set var="user" value="${user.getUserDetail(sessionScope.email) }"></c:set>
										<form class="row" id= "form" action="commentAction" method="post">
							<input type="hidden" name="typeComment" id="typeComment" value="main">
							<input type="hidden" name="idMain" value ="" id="idMain">
							<input type="hidden" name="idTour" value="${tour.idTour }">
							<input type="hidden" name= "idTourDetail" value="${tour.idTourDetail }">
								<div class="f-item full-width">
									<label for="name">Họ và Tên</label>
									<input type="text" placeholder="Phải Nhập Họ Tên" id="name" name="name" value="${user.fullName }" readonly="readonly"/>
								</div>
								<div class="f-item full-width">
									<label for="eadress">E-mail</label>
									<input type="email" placeholder="Phải nhập Email" id="email" name="email" value="${user.email }" readonly="readonly"/>
								</div>
								<div class="f-item full-width">
									<label for="comment">Nội Dung</label>
									<textarea id="comment" rows="10" cols="10" name="content"></textarea>
								</div>
								<div class="f-item full-width">
									<input type="submit" value="Gửi Bình Luận" class="gradient-button"  />
								</div>
							</form>
								</c:when>
								<c:otherwise>
									<form class="row" id= "form" action="commentAction" method="post">
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
								</c:otherwise>
							</c:choose>
			
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
	<%@ include file="footer.jsp" %>
	<!---footer-->
	
	
	</body>
</html>