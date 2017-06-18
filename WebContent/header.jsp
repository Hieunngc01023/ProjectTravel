<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <header class="header">
		<div class="wrap">
			<!--logo-->
			<div class="logo"><a href="index.jsp" title="Book Your Travel"><img src="images/uploads/logo.png" alt="Book Your Travel" /></a></div>
			<!--//logo-->
			
			<!--ribbon-->
			<div class="ribbon">
				<nav>
					<ul class="profile-nav">
					
					
						<c:choose>
							<c:when test="${sessionScope.email != null }">
								 <li class="active"><a href="myAccount.jsp" title="Settings">Tài Khoản</a></li>
						          <li class="active"><a href="logOut.jsp" title="register">Đăng Xuất</a></li> 
							</c:when>
							<c:otherwise>
								<li  class="active"><a href="login.jsp" title="Login">Đăng Nhập</a></li>
							</c:otherwise>
						</c:choose>
						
					
						<!-- <li class="active"><a href="#" title="My Account">Tài Khoản</a></li>
						<li><a href="login.jsp" title="Login">Đăng Nhập</a></li>
						<li><a href="my_account.html" title="Settings">Cài Đặt</a></li> -->
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
				<ul class="slimmenu" id="nav">
					<!-- <li><a href="hotels.html" title="Hotels">Hotels</a>
					</li> -->
					<li><a href="http://flightbooking.vn/" title="Flights">Chuyến Bay</a></li>
					<li><a href="http://hotel.vietnamtourism.com.vn/Home" title="Hotel">Hotel</a></li>
					<li><a href="index.jsp" title="Cruises">Chuyến Đi</a></li>
					<li><a href="car.jsp" title="Car rental">Thuê Xe</a></li>
					 <li><a href="contact.jsp" title="Contact">Liên Hệ</a></li>
					<li><a href="blog.jsp" title="Blog">Blog</a>
						
					</li>
					
					
				</ul>
			</div>
		</nav>
		<!--//main navigation-->
	</header>