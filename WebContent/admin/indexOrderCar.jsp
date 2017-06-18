<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>BookTravel | Dashboard</title>
<%@ include file="fileCss.jsp"%>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
	<div class="wrapper">

		<header class="main-header"> <!-- Logo --> <a
			href="index2.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
			<span class="logo-mini"><b>A</b>LT</span> <!-- logo for regular state and mobile devices -->
			<span class="logo-lg"><b>Admin</b>LTE</span>
		</a> <!-- Header Navbar: style can be found in header.less --> <nav
			class="navbar navbar-static-top"> <!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a>

		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav">
				<!-- Messages: style can be found in dropdown.less-->
				<li class="dropdown messages-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-envelope-o"></i> <span class="label label-success">4</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">You have 4 messages</li>
						<li>
							<!-- inner menu: contains the actual data -->
							<ul class="menu">
								<li>
									<!-- start message --> <a href="#">
										<div class="pull-left">
											<img src="admin-assets/img/user2-160x160.jpg"
												class="img-circle" alt="User Image">
										</div>
										<h4>
											Support Team <small><i class="fa fa-clock-o"></i> 5
												mins</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a>
								</li>
								<!-- end message -->
								<li><a href="#">
										<div class="pull-left">
											<img src="admin-assets/img/user3-128x128.jpg"
												class="img-circle" alt="User Image">
										</div>
										<h4>
											AdminLTE Design Team <small><i class="fa fa-clock-o"></i>
												2 hours</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a></li>
								<li><a href="#">
										<div class="pull-left">
											<img src="admin-assets/img/user4-128x128.jpg"
												class="img-circle" alt="User Image">
										</div>
										<h4>
											Developers <small><i class="fa fa-clock-o"></i> Today</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a></li>
								<li><a href="#">
										<div class="pull-left">
											<img src="admin-assets/img/user3-128x128.jpg"
												class="img-circle" alt="User Image">
										</div>
										<h4>
											Sales Department <small><i class="fa fa-clock-o"></i>
												Yesterday</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a></li>
								<li><a href="#">
										<div class="pull-left">
											<img src="admin-assets/img/user4-128x128.jpg"
												class="img-circle" alt="User Image">
										</div>
										<h4>
											Reviewers <small><i class="fa fa-clock-o"></i> 2 days</small>
										</h4>
										<p>Why not buy a new awesome theme?</p>
								</a></li>
							</ul>
						</li>
						<li class="footer"><a href="#">See All Messages</a></li>
					</ul></li>
				<!-- Notifications: style can be found in dropdown.less -->
				<li class="dropdown notifications-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-bell-o"></i> <span class="label label-warning">10</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">You have 10 notifications</li>
						<li>
							<!-- inner menu: contains the actual data -->
							<ul class="menu">
								<li><a href="#"> <i class="fa fa-users text-aqua"></i>
										5 new members joined today
								</a></li>
								<li><a href="#"> <i class="fa fa-warning text-yellow"></i>
										Very long description here that may not fit into the page and
										may cause design problems
								</a></li>
								<li><a href="#"> <i class="fa fa-users text-red"></i> 5
										new members joined
								</a></li>
								<li><a href="#"> <i
										class="fa fa-shopping-cart text-green"></i> 25 sales made
								</a></li>
								<li><a href="#"> <i class="fa fa-user text-red"></i>
										You changed your username
								</a></li>
							</ul>
						</li>
						<li class="footer"><a href="#">View all</a></li>
					</ul></li>
				<!-- Tasks: style can be found in dropdown.less -->
				<li class="dropdown tasks-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-flag-o"></i> <span class="label label-danger">9</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">You have 9 tasks</li>
						<li>
							<!-- inner menu: contains the actual data -->
							<ul class="menu">
								<li>
									<!-- Task item --> <a href="#">
										<h3>
											Design some buttons <small class="pull-right">20%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-aqua"
												style="width: 20%" role="progressbar" aria-valuenow="20"
												aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">20% Complete</span>
											</div>
										</div>
								</a>
								</li>
								<!-- end task item -->
								<li>
									<!-- Task item --> <a href="#">
										<h3>
											Create a nice theme <small class="pull-right">40%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-green"
												style="width: 40%" role="progressbar" aria-valuenow="20"
												aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">40% Complete</span>
											</div>
										</div>
								</a>
								</li>
								<!-- end task item -->
								<li>
									<!-- Task item --> <a href="#">
										<h3>
											Some task I need to do <small class="pull-right">60%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-red" style="width: 60%"
												role="progressbar" aria-valuenow="20" aria-valuemin="0"
												aria-valuemax="100">
												<span class="sr-only">60% Complete</span>
											</div>
										</div>
								</a>
								</li>
								<!-- end task item -->
								<li>
									<!-- Task item --> <a href="#">
										<h3>
											Make beautiful transitions <small class="pull-right">80%</small>
										</h3>
										<div class="progress xs">
											<div class="progress-bar progress-bar-yellow"
												style="width: 80%" role="progressbar" aria-valuenow="20"
												aria-valuemin="0" aria-valuemax="100">
												<span class="sr-only">80% Complete</span>
											</div>
										</div>
								</a>
								</li>
								<!-- end task item -->
							</ul>
						</li>
						<li class="footer"><a href="#">View all tasks</a></li>
					</ul></li>
				<!-- User Account: style can be found in dropdown.less -->
				<li class="dropdown user user-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <img
						src="admin-assets/img/user2-160x160.jpg" class="user-image"
						alt="User Image"> <span class="hidden-xs">Alexander
							Pierce</span>
				</a>
					<ul class="dropdown-menu">
						<!-- User image -->
						<li class="user-header"><img
							src="admin-assets/img/user2-160x160.jpg" class="img-circle"
							alt="User Image">

							<p>
								Alexander Pierce - Web Developer <small>Member since
									Nov. 2012</small>
							</p></li>
						<!-- Menu Body -->
						<li class="user-body">
							<div class="row">
								<div class="col-xs-4 text-center">
									<a href="#">Followers</a>
								</div>
								<div class="col-xs-4 text-center">
									<a href="#">Sales</a>
								</div>
								<div class="col-xs-4 text-center">
									<a href="#">Friends</a>
								</div>
							</div> <!-- /.row -->
						</li>
						<!-- Menu Footer-->
						<li class="user-footer">
							<div class="pull-left">
								<a href="#" class="btn btn-default btn-flat">Profile</a>
							</div>
							<div class="pull-right">
								<a href="#" class="btn btn-default btn-flat">Sign out</a>
							</div>
						</li>
					</ul></li>
				<!-- Control Sidebar Toggle Button -->
				<li><a href="#" data-toggle="control-sidebar"><i
						class="fa fa-gears"></i></a></li>
			</ul>
		</div>
		</nav> </header>
		<!-- Left side column. contains the logo and sidebar -->
		<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
		<section class="sidebar"> <!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="admin-assets/img/user2-160x160.jpg" class="img-circle"
					alt="User Image">
			</div>
			<div class="pull-left info">
				<p>Alexander Pierce</p>
				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>
		<!-- search form -->
		<form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control"
					placeholder="Search..."> <span class="input-group-btn">
					<button type="submit" name="search" id="search-btn"
						class="btn btn-flat">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div>
		</form>
		<!-- /.search form --> <!-- sidebar menu: : style can be found in sidebar.less -->
		<%@ include file="header.jsp"%> </section> <!-- /.sidebar -->
		</aside>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
			<h1>
				Tour <small>table</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Dashboard</li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content">
			<div class="box-body table-responsive no-padding">
				<div class="row">
					<form action="getListOrderCarbyStateAdmin" method="get">
						<div class="col-md-3 form-group">
							<select class="form-control" name="stateGetMoney">
								<option value="3">Tất Cả Trạng Thái</option>
								<option value="1">Thanh Toán</option>
								<option value="0">Chưa Thanh Toán</option>
								<option value="2">Hủy Bỏ</option>
							</select>
						</div>
						<div class="col-md-5 form-group">
							<div class="col-md-10 relative">
								<input type="text" name="keyword" class="form-control"
									placeholder="Finding here...." value="">
								<button type="submit"
									class="add-on-input btn btn-sm btn-success">
									<i class="fa fa-search" aria-hidden="true"></i>
								</button>
							</div>
						</div>

					</form>
				</div>

				<c:choose>
					<c:when test="${requestScope.listTourDetail != null }">
						<table class="table table-hover">
							<tbody>
								<tr>
									<th>ID OrderCar</th>
									<th>Tên Xe</th>
									<th>Người đặt</th>
									<th>Thời gian và địa điểm lấy</th>
									<th>Thời gian và địa điểm trả</th>
									<th>Số lượng xe</th>
									<th>Tổng Tiền</th>
									<th>Loại Thanh toán</th>
									<th>Trạng thái thanh toán</th>
									<th>Thuê Lái Xe</th>
									<th>Ghi chú</th>
									<th>Ngày tạo order</th>
									<th></th>
								</tr>
								<c:if test="${requestScope.listTourDetail.size() >0 }">
									<c:forEach items="${requestScope.listTourDetail }" var="order">
										<tr>
											<td>${order.idOrder }</td>
											<td>${order.nameCar }</td>
											<td>${order.nameUser }</td>
											<td>
												<p>${order.timePickUp }</p>
												<p>${order.placeRecieve }</p>
											</td>
											<td>
												<p>${order.timeDropOff }</p>
												<p>${order.placeRender }</p>
											</td>
											<td>1 xe</td>
											<td><f:formatNumber value="${order.price }"
													maxFractionDigits="0" minFractionDigits="0"></f:formatNumber>
												đ</td>
											<c:choose>
												<c:when test="${order.modelPayment ==1 }">
													<td>Trực Tiếp</td>
												</c:when>
												<c:when test="${order.modelPayment ==2 }">
													<td>Chuyển Khoản</td>
												</c:when>
												<c:otherwise>
													<td>Online</td>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${order.stateGetMoney == 0 }">
													<td>Chưa Thanh Toán</td>
												</c:when>
												<c:when test="${order.stateGetMoney == 1 }">
													<td>Đã Thanh Toán</td>
												</c:when>
												<c:otherwise>
													<td>Hủy</td>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${order.stateDriver == 0 }">
													<td>Không</td>
												</c:when>
												<c:otherwise>
													<td>Có</td>
												</c:otherwise>
											</c:choose>
											<td>${order.note }</td>
											<td>${order.timeCreated }</td>
											<td><a
												href="updateOrderCar.jsp?idOrder=${order.idOrder }&nameCar=${order.nameCar }"
												class="btn btn-info btn-xs"> <i class="fa fa-pencil"></i>
													Update
											</a> <s:url value="deleteOrderCarAdmin" var="delete">
													<s:param name="idOrder">${order.idOrder }</s:param>
												</s:url> <a href="${delete }" class="btn btn-danger btn-xs"> <i
													class="fa fa-trash"></i> delete
											</a> <s:url value="cancelOrderCarAdmin" var="cancel">
													<s:param name="idOrder">${order.idOrder }</s:param>
												</s:url> <a href="${cancel }" class="btn btn-warning btn-xs"> <i
													class="fa fa-close"></i> Cancel
											</a></td>

										</tr>

									</c:forEach>
								</c:if>



							</tbody>
						</table>
					</c:when>

					<c:otherwise>
						<table class="table table-hover">
							<tbody>
								<tr>
									<th>ID OrderCar</th>
									<th>Tên Xe</th>
									<th>Người đặt</th>
									<th>Thời gian và địa điểm lấy</th>
									<th>Thời gian và địa điểm trả</th>
									<th>Số lượng xe</th>
									<th>Tổng Tiền</th>
									<th>Loại Thanh toán</th>
									<th>Trạng thái thanh toán</th>
									<th>Thuê Lái Xe</th>
									<th>Ghi chú</th>
									<th>Ngày tạo order</th>
									<th></th>
								</tr>
								<jsp:useBean id="orderCar" class="adminDAO.OrderCarDAO"
									scope="page"></jsp:useBean>
								<c:set var="keyword" value=""></c:set>
								<c:if test="${orderCar.getListOrderCar(keyword).size() >0 }">
									<c:forEach items="${orderCar.getListOrderCar(keyword) }"
										var="order">
										<tr>
											<td>${order.idOrder }</td>
											<td>${order.nameCar }</td>
											<td>${order.nameUser }</td>
											<td>
												<p>${order.timePickUp }</p>
												<p>${order.placeRecieve }</p>
											</td>
											<td>
												<p>${order.timeDropOff }</p>
												<p>${order.placeRender }</p>
											</td>
											<td>1 xe</td>
											<td><f:formatNumber value="${order.price }"
													maxFractionDigits="0" minFractionDigits="0"></f:formatNumber>
												đ</td>
											<c:choose>
												<c:when test="${order.modelPayment ==1 }">
													<td>Trực Tiếp</td>
												</c:when>
												<c:when test="${order.modelPayment ==2 }">
													<td>Chuyển Khoản</td>
												</c:when>
												<c:otherwise>
													<td>Online</td>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${order.stateGetMoney == 0 }">
													<td>Chưa Thanh Toán</td>
												</c:when>
												<c:when test="${order.stateGetMoney == 1 }">
													<td>Đã Thanh Toán</td>
												</c:when>
												<c:otherwise>
													<td>Hủy</td>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${order.stateDriver == 0 }">
													<td>Không</td>
												</c:when>
												<c:otherwise>
													<td>Có</td>
												</c:otherwise>
											</c:choose>
											<td>${order.note }</td>
											<td>${order.timeCreated }</td>
											<td><a
												href="updateOrderCar.jsp?idOrder=${order.idOrder }&nameCar=${order.nameCar }"
												class="btn btn-info btn-xs"> <i class="fa fa-pencil"></i>
													Update
											</a> <s:url value="deleteOrderCarAdmin" var="delete">
													<s:param name="idOrder">${order.idOrder }</s:param>
												</s:url> <a href="${delete }" class="btn btn-danger btn-xs"> <i
													class="fa fa-trash"></i> delete
											</a> <s:url value="cancelOrderCarAdmin" var="cancel">
													<s:param name="idOrder">${order.idOrder }</s:param>
												</s:url> <a href="${cancel }" class="btn btn-warning btn-xs"> <i
													class="fa fa-close"></i> Cancel
											</a></td>

										</tr>

									</c:forEach>
								</c:if>



							</tbody>
						</table>


					</c:otherwise>
				</c:choose>


			</div>

			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
		<div class="pull-right hidden-xs">
			<b>Version</b> 2.3.8
		</div>
		<strong>Copyright &copy; 2014-2016 </strong> By Lee Anh </footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark"> <!-- Create the tabs -->
		<ul class="nav nav-tabs nav-justified control-sidebar-tabs">
			<li><a href="#control-sidebar-home-tab" data-toggle="tab"><i
					class="fa fa-home"></i></a></li>
			<li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i
					class="fa fa-gears"></i></a></li>
		</ul>
		<!-- Tab panes -->
		<div class="tab-content">
			<!-- Home tab content -->
			<div class="tab-pane" id="control-sidebar-home-tab">
				<h3 class="control-sidebar-heading">Recent Activity</h3>
				<ul class="control-sidebar-menu">
					<li><a href="javascript:void(0)"> <i
							class="menu-icon fa fa-birthday-cake bg-red"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

								<p>Will be 23 on April 24th</p>
							</div>
					</a></li>
					<li><a href="javascript:void(0)"> <i
							class="menu-icon fa fa-user bg-yellow"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Frodo Updated His
									Profile</h4>

								<p>New phone +1(800)555-1234</p>
							</div>
					</a></li>
					<li><a href="javascript:void(0)"> <i
							class="menu-icon fa fa-envelope-o bg-light-blue"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Nora Joined Mailing
									List</h4>

								<p>nora@example.com</p>
							</div>
					</a></li>
					<li><a href="javascript:void(0)"> <i
							class="menu-icon fa fa-file-code-o bg-green"></i>

							<div class="menu-info">
								<h4 class="control-sidebar-subheading">Cron Job 254
									Executed</h4>

								<p>Execution time 5 seconds</p>
							</div>
					</a></li>
				</ul>
				<!-- /.control-sidebar-menu -->

				<h3 class="control-sidebar-heading">Tasks Progress</h3>
				<ul class="control-sidebar-menu">
					<li><a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Custom Template Design <span
									class="label label-danger pull-right">70%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-danger" style="width: 70%"></div>
							</div>
					</a></li>
					<li><a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Update Resume <span class="label label-success pull-right">95%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-success"
									style="width: 95%"></div>
							</div>
					</a></li>
					<li><a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Laravel Integration <span class="label label-warning pull-right">50%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-warning"
									style="width: 50%"></div>
							</div>
					</a></li>
					<li><a href="javascript:void(0)">
							<h4 class="control-sidebar-subheading">
								Back End Framework <span class="label label-primary pull-right">68%</span>
							</h4>

							<div class="progress progress-xxs">
								<div class="progress-bar progress-bar-primary"
									style="width: 68%"></div>
							</div>
					</a></li>
				</ul>
				<!-- /.control-sidebar-menu -->

			</div>
			<!-- /.tab-pane -->
			<!-- Stats tab content -->
			<div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab
				Content</div>
			<!-- /.tab-pane -->
			<!-- Settings tab content -->
			<div class="tab-pane" id="control-sidebar-settings-tab">
				<form method="post">
					<h3 class="control-sidebar-heading">General Settings</h3>

					<div class="form-group">
						<label class="control-sidebar-subheading"> Report panel
							usage <input type="checkbox" class="pull-right" checked>
						</label>

						<p>Some information about this general settings option</p>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Allow mail
							redirect <input type="checkbox" class="pull-right" checked>
						</label>

						<p>Other sets of options are available</p>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Expose author
							name in posts <input type="checkbox" class="pull-right" checked>
						</label>

						<p>Allow the user to show his name in blog posts</p>
					</div>
					<!-- /.form-group -->

					<h3 class="control-sidebar-heading">Chat Settings</h3>

					<div class="form-group">
						<label class="control-sidebar-subheading"> Show me as
							online <input type="checkbox" class="pull-right" checked>
						</label>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Turn off
							notifications <input type="checkbox" class="pull-right">
						</label>
					</div>
					<!-- /.form-group -->

					<div class="form-group">
						<label class="control-sidebar-subheading"> Delete chat
							history <a href="javascript:void(0)" class="text-red pull-right"><i
								class="fa fa-trash-o"></i></a>
						</label>
					</div>
					<!-- /.form-group -->
				</form>
			</div>
			<!-- /.tab-pane -->
		</div>
		</aside>
		<!-- /.control-sidebar -->
		<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery 2.2.3 -->
	<%@ include file="fileJS.jsp"%>
</body>
</html>