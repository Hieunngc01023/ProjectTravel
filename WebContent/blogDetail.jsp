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
	
	<title>Book Your Travel - Blog post</title>
	
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
			<c:set var="id" value="${param.id }"></c:set>			
			<jsp:useBean id="blogDAO" class="dao.BlogDAO" scope="page"></jsp:useBean>
			<c:choose>
				<c:when test="${idBlog >0 }">
					<c:set var="blog" value="${blogDAO.getDetailBlog(idBlog) }"></c:set>
					<c:set var="id" value="${idBlog }"></c:set>
				</c:when>
				<c:otherwise>
					<c:set var="blog" value="${blogDAO.getDetailBlog(id) }"></c:set>
				</c:otherwise>
			</c:choose>
			
			<div class="row">
				<!--three-fourth content-->
				<div class="three-fourth">
					
				
				
					<!--post-->
				<article class="static-content post">
						<header class="entry-header">
							<h1>${blog.title }</h1>
							<p class="entry-meta">
							<jsp:useBean id="cmtBlog" class="dao.CommentBlogDAO"></jsp:useBean>
							
								<span class="date">Ngày: ${blog.timeCreated }</span> 
								<span class="comments"><a href="#">${cmtBlog.getTotalComment(blog.idBlog) } Bình Luận</a></span>
							</p>
						</header>
					<%-- 	<div class="entry-featured"><figure><img src="images/uploads/cruise3.jpg" alt="" /></figure></div> --%>
						<div class="entry-content">
							<p> ${blog.content }</p>
						</div>
					</article> 
					<!--//post-->
					
						<!--comments-->
						
					<div class="comments">
						<h2> ${ cmtBlog.getTotalComment(id) } comments</h2>	
						<!--single comment-->
						<c:forEach items="${cmtBlog.getListComments(id) }" var="comment">
							<c:if test="${cmtBlog.getListComments(id).size() >0 }">															
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
							<c:if test="${cmtBlog.getListSubComment(id).size() > 0 }">
								<c:forEach items="${cmtBlog.getListSubComment(comment.idComment)}" var="sub">
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
						
		
						<!--//single comment-->
						
						
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
										<form class="row" id= "form" action="commentBlogAction" method="post">
							<input type="hidden" name="typeComment" id="typeComment" value="main">
							<input type="hidden" name="idMain" value ="" id="idMain">
							<input type="hidden" name="idBlog" value="${blog.idBlog }">
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
									<form class="row" id= "form" action="commentBlogAction" method="post">
							<input type="hidden" name="typeComment" id="typeComment" value="main">
							<input type="hidden" name="idMain" value ="" id="idMain">
							<input type="hidden" name="idBlog" value="${blog.idBlog }">
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
						
						
					</div>
					<!--//comments-->
					
					<!--bottom navigation-->
					<div class="bottom-nav">
						<!--back up button-->
						<a href="#" class="scroll-to-top" title="Back up">Lên Trên</a> 
						<!--//back up button-->
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
</body>
</html>