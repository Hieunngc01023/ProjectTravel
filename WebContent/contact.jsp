<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="Book Your Travel - Online Booking HTML Template">
	<meta name="description" content="Book Your Travel - Online Booking HTML Template">
	<meta name="author" content="themeenergy.com">
	
	<title>Book Your Travel - Contact</title>
	
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
					<li><a href="#" title="Home">Trang Chủ</a></li> 
					<li>Liên Hệ</li>                                       
				</ul>
				<!--//crumbs-->
			</nav>
			<!--//breadcrumbs-->
			<c:if test="${popUp != null }">
				<h1>${popUp }</h1>
			</c:if>
			
			<div class="row">
				<!--three-fourth content-->
				<div class="three-fourth">
					<h1>Liên Hệ Chúng Tôi</h1>
					<!--map-->
					<div class="map-wrap">
						<!-- <div class="gmap" id="map_canvas"> -->
						<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2997.1546231404263!2d105.78002185399022!3d21.028793536524397!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135abbfa96f309f%3A0x7917af0f83effe1b!2zxJDhuqFpIGjhu41jIEZQVA!5e0!3m2!1svi!2s!4v1496630872922" width="600" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
						<!-- </div> -->
					</div>
					<!--//map-->
				</div>	
				<!--three-fourth content-->
				
				<!--sidebar-->
				<aside class="one-fourth right-sidebar lower">
					<!--contact form-->
					<article class="widget">
						<h4>Gửi Phản Hồi Theo Form Dưới Đây</h4>
						<form method="post" action="contactAction">
							<fieldset>
								<div id="message"></div>
								<div class="row">
									<div class="f-item full-width">
										<label for="name">Họ Tên</label>
										<input type="text" id="name" name="name" value="" />
									</div>
									<div class="f-item full-width">
										<label for="email">Email</label>
										<input type="email" id="email" name="email" value="" />
									</div>
									<div class="f-item full-width">
										<label for="comments">Nội Dung</label>
										<textarea id="comments" rows="10" cols="10" name="comments"></textarea>
									</div>
									<div class="f-item full-width">
										<input type="submit" value="Gửi" id="submit" name="submit" class="gradient-button" />
									</div>
								</div>
							</fieldset>
						</form>
					</article>
					<!--//contact form-->
					
					<!--contact info-->
					<article class="widget">
						<h4>Hoặc Liên Hệ Hotline</h4>
						<p class="number">0989-999-888</p>
						<p class="email"><a href="#">booktravel@mail.com</a></p>
					</article>
					<!--//contact info-->
				</aside>
				<!--//sidebar-->
			</div>
			<!--//main content-->
		</div>
	</main>
	<!--//main-->
	
	<!--footer-->
	<%@ include file="footer.jsp" %>
	<!---footer-->
	
	
	
	<script type="text/javascript">

	function initialize() {
		var secheltLoc = new google.maps.LatLng(21.0287183, 105.7795214);

		var myMapOptions = {
			 zoom: 15
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
		boxText.innerHTML = "<strong>Book Travel</strong><br>Số 8 - Tôn Thất Thuyết <br>Hà Nội";

		var myOptions = {
			 content: boxText
			,disableAutoPan: false
			,maxWidth: 0
			,pixelOffset: new google.maps.Size(111, 0)
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
</body>
</html>