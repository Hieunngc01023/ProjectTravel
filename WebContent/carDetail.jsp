<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="f"  uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			<jsp:useBean id="carDAO" class="dao.CarDAO"></jsp:useBean>
			<c:set var="id" value="${param.id }"></c:set>
			<c:set var="car" value="${carDAO.getCarDetails(id) }"></c:set>
			
			<div class="row">
				<!--hotel three-fourth content-->
				<section class="three-fourth">
					<!--gallery-->
					<div class="gallery col-md-10">
						<div class="col-md-10 " >
							<img src="admin/admin-assets/img/${car.imageTitle }" alt="" />
					<!-- 		<ul id="image-gallery" class="cS-hidden">
								<li data-thumb="images/uploads/car24.jpg"> 
									<img src="images/uploads/car24.jpg" alt="" />
								</li>
								<li data-thumb="images/uploads/car13.jpg"> 
								<img src="images/uploads/car13.jpg" alt="" />
								</li>
								<li data-thumb="images/uploads/car24.jpg"> 
									<img src="images/uploads/car24.jpg" alt="" />
								</li>
								<li data-thumb="images/uploads/car5.jpg"> 
									<img src="images/uploads/car5.jpg" alt="" />
								</li>
								<li data-thumb="images/uploads/car7.jpg"> 
									<img src="images/uploads/car7.jpg" alt="" />
								</li>
								<li data-thumb="images/uploads/car13.jpg"> 
									<img src="images/uploads/car13.jpg" alt="" />
								</li>
							</ul> -->
						</div>
						<div class="detail-book col-md-10">
							<div class=" box-content col-md-5 col-md-offset-1"> 
								<p>Mã xe:<b>${car.idCar }</b></p>
								<p>Tên Xe: <b>${car.nameCar } </b></p>
								<p>
									<c:choose>
										<c:when test="${car.gear ==1 }">
											Hộp Số:<b>Số Sàn</b>
										</c:when>
										<c:otherwise>
											Hộp Số:<b>Số Tự Động</b>
										</c:otherwise>
									</c:choose>
									
								</p>
								<p>
									Số chỗ : <b class="price">${car.quanitySeat }</b>
								</p>
								<p>
									<c:choose>
										<c:when test="${car.quantityCar >0 }">
											Trạng Thái  : <b class="price">Còn xe</b>
										</c:when>
										<c:otherwise>
											Trạng Thái  : <b class="price">Hết Xe</b>
										</c:otherwise>
									</c:choose>
									
								</p>
							</div>
							<div class="col-md-6 box-price">
							
								<!-- Nếu chỉ hiển thị 1 giá thì dùng div dưới -->
								<div class="price-book4" style="font-size: 30px; font-weight: bold;color: #be0500; text-align: center; margin-top: 35px;"><span itemprop="price"><f:formatNumber value="${car.price }" maxFractionDigits="0" minFractionDigits="0"></f:formatNumber></span><span> đ</span></div>

								<div class="btn-book">
									<a href="bookCarStep1.jsp?id=${car.idCar }" class="gradient-button ">Thuê Xe</a>
								</div>
							</div>
						</div>
					</div>
					<!--//gallery-->
				
					<!--inner navigation-->
					<nav class="inner-nav">
						<ul>
							<li class="availability"><a href="#availability" title="Availability">Một số hình ảnh</a></li>
							<li class="description"><a href="#description" title="Description">Điều Kiện Thuê</a></li>
							<li class="facilities"><a href="#facilities" title="Facilities">Lưu ý</a></li>
							<li class="location"><a href="#location" title="Location">Liên Hệ</a></li>
						</ul>
					</nav>
					<!--//inner navigation-->
					
					<!--availability-->
					<section id="availability" class="tab-content">
						<article>
							<h2>Một số hình ảnh.</h2>
							<div class="text-wrap">
							${car.content }
								<!-- <img src="images/uploads/car13.jpg" alt="" /><br>
								<img src="images/uploads/car13.jpg" alt="" /><br>
								<img src="images/uploads/car13.jpg" alt="" /><br>
								<img src="images/uploads/car13.jpg" alt="" /><br> -->
							</div>
							
							
						</article>
					</section>
					<!--//availability-->
					
					<!--description-->
					<section id="description" class="tab-content">
						<article>
							<h2>Điều Kiện Thuê Xe</h2>

							<div class="text-wrap">	
								<p>Điều kiện cần và đủ của người thuê xe :</p><br>
								<p>- Giấy tờ : <strong>Hộ Khẩu ; CMND ; GPLX B1-B2</strong></p><br>
								<p>- Bảo đảm : <strong> Xe máy + giấy tờ xe máy chính chủ</strong></p>
							</div>
						</article>
					</section>
					<!--//description-->
					
					<!--facilities-->
					<section id="facilities" class="tab-content">
						<article>
							<h2>Lưu Ý</h2>
							<div class="text-wrap">
								<p>- Giá trên chưa bao gồm: 10% thuế VAT, ăn nghỉ của lái xe.</p><br>
								<p>- Giá đã bao gồm chi phí: xăng (dầu), cầu, phà, bến, bãi, lương lái xe.</p><br>
								<p>Báo giá cho thuê xe có thể thay đổi theo từng thời điểm, để biết thêm thông tin chi tiết xe  xin liên hệ với BookTravel theo số: 0989-999-888
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
	
	
	<script type="text/javascript">
	function initialize() {
		var secheltLoc = new google.maps.LatLng(21.0287935, 105.7800219);

		var myMapOptions = {
			 zoom: 17
			,center: secheltLoc
			,mapTypeId: google.maps.MapTypeId.ROADMAP
		};
		var theMap = new google.maps.Map(document.getElementById("map_canvas"), myMapOptions);


		var marker = new google.maps.Marker({
			map: theMap,
			draggable: true,
			position: new google.maps.LatLng(21.0287935, 105.7800219),
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