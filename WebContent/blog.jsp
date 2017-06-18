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
	
	<title>Book Your Travel - Blog</title>
	
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
					<li>Blog</li>                                       
				</ul>
				<!--//crumbs-->
			</nav>
			<!--//breadcrumbs-->
			
			<div class="row">
				<!--three-fourth content-->
				<div class="three-fourth">
					<!--post-->
						<jsp:useBean id="blogDAO" class="dao.BlogDAO" scope="page"></jsp:useBean>
						<c:choose>
							<c:when test="${blogDAO.getListBlog().size() >0 }">
								<c:forEach items="${blogDAO.getListBlog() }" var="blog">
								
									<article class="static-content post">
						<header class="entry-header">
							<h2><a href="blogDetail.jsp?id=${blog.idBlog }">${blog.title }</a></h2>
							<p class="entry-meta">
								<span class="date">Ngày: ${blog.timeCreated }</span>
								<jsp:useBean id="cmtBlogDAO" class="dao.CommentBlogDAO"></jsp:useBean> 
								<span class="comments"><a href="#">${cmtBlogDAO.getTotalComment(blog.idBlog) } Bình luận</a></span>
							</p>
						</header>
						<div class="entry-featured"><a href="#"><figure><img src="admin/admin-assets/img/${blog.imageTitle}" alt="" /></figure></a></div>
						<div class="entry-content">
							<%-- <p>${blog.content }</p> --%>
							<a href="blogDetail.jsp?id=${blog.idBlog }" class="gradient-button">Đọc Tiếp</a>
						</div>
					</article>

						</c:forEach>
								
							</c:when>
							<c:otherwise>
								<h3>Không có nội dung</h3>
							</c:otherwise>
						</c:choose>
					
					<!-- <article class="static-content post">
						<header class="entry-header">
							<h2><a href="blog_single.html">Fringilla Mollis Tellus Porta Euismod Nullam</a></h2>
							<p class="entry-meta">
								<span class="date">Ngày: 12/06/2017</span> 
								<span class="comments"><a href="#">4 Bình luận</a></span>
							</p>
						</header>
						<div class="entry-featured"><a href="#"><figure><img src="images/uploads/cruise1.jpg" alt="" /></figure></a></div>
						<div class="entry-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
							<a href="blog_single.html" class="gradient-button">Đọc Tiếp</a>
						</div>
					</article>
					//post
						post
					<article class="static-content post">
						<header class="entry-header">
							<h2><a href="blog_single.html">Fringilla Mollis Tellus Porta Euismod Nullam</a></h2>
							<p class="entry-meta">
								<span class="date">Date: February 10, 2016</span> 
								<span class="comments"><a href="#">4 Comments</a></span>
							</p>
						</header>
						<div class="entry-featured"><a href="#"><figure><img src="images/uploads/cruise4.jpg" alt="" /></figure></a></div>
						<div class="entry-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
							<a href="blog_single.html" class="gradient-button">Đọc Tiếp</a>
						</div>
					</article>
					//post
						post
					<article class="static-content post">
						<header class="entry-header">
							<h2><a href="blog_single.html">Fringilla Mollis Tellus Porta Euismod Nullam</a></h2>
							<p class="entry-meta">
								<span class="date">Date: February 10, 2016</span> 
								<span class="comments"><a href="#">4 Comments</a></span>
							</p>
						</header>
						<div class="entry-featured"><a href="#"><figure><img src="images/uploads/cruise3.jpg" alt="" /></figure></a></div>
						<div class="entry-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
							<a href="blog_single.html" class="gradient-button">Đọc Tiếp</a>
						</div>
					</article>
					//post
						post
					<article class="static-content post">
						<header class="entry-header">
							<h2><a href="blog_single.html">Fringilla Mollis Tellus Porta Euismod Nullam</a></h2>
							<p class="entry-meta">
								<span class="date">Date: February 10, 2016</span> 
								<span class="comments"><a href="#">4 Comments</a></span>
							</p>
						</header>
						<div class="entry-featured"><a href="#"><figure><img src="images/uploads/cruise2.jpg" alt="" /></figure></a></div>
						<div class="entry-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
							<a href="blog_single.html" class="gradient-button">Đọc Tiếp</a>
						</div>
					</article> -->
					<!--//post-->
					
				 
					
					<!--bottom navigation-->
					<div class="bottom-nav">
						<!--back up button-->
						<a href="#" class="scroll-to-top" title="Back up">Lên Trên</a> 
						<!--//back up button-->
						
						<!--pager-->
						
						<!--//pager-->
					</div>
					<!--//bottom navigation-->
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
	<!---footer-->
	
	
</body>
</html>