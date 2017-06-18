<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
						alt="User Image"> <span class="hidden-xs">${user.fullName }
							</span>
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
				<p>${user.fullName }</p>
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
				Dashboard <small>Control panel</small>
			</h1>
			<ol class="breadcrumb">
				<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Dashboard</li>
			</ol>
			</section>

			<!-- Main content -->
			<section class="content"> <!-- Small boxes (Stat box) -->
			<div class="row">
				<div class="col-lg-3 col-xs-6">
					<!-- small box -->
					<jsp:useBean id="dasDAO" class="adminDAO.DashBodDAO" scope="page"></jsp:useBean>

					<div class="small-box bg-aqua">
						<div class="inner">
							<h3>${dasDAO.getTotalTOur() }</h3>

							<p>Tour Du Lịch</p>
						</div>
						<div class="icon">
							<i class="fa fa-globe"></i>
						</div>
						<a href="indexTour.jsp" class="small-box-footer">Xem Thêm <i
							class="fa fa-arrow-circle-right"></i>
						</a>
					</div>
				</div>
				<!-- ./col -->

				<!-- ./col -->
				<div class="col-lg-3 col-xs-6">
					<!-- small box -->
					<div class="small-box bg-yellow">
						<div class="inner">
							<h3>${dasDAO.getTotalOrderTour() }</h3>

							<p>Đặt Tour</p>
						</div>
						<div class="icon">
							<i class=" fa fa-shopping-cart"></i>
						</div>
						<a href="indexOrderTour.jsp" class="small-box-footer">Xem Thêm
							<i class="fa fa-arrow-circle-right"></i>
						</a>
					</div>
				</div>
				<!-- ./col -->
				<div class="col-lg-3 col-xs-6">
					<!-- small box -->
					<div class="small-box bg-red">
						<div class="inner">
							<h3>${dasDAO.getTotalOrderCAR() }</h3>

							<p>Đặt Xe</p>
						</div>
						<div class="icon">
							<i class="fa fa-shopping-cart"></i>
						</div>
						<a href="indexOrderCar.jsp" class="small-box-footer">Xem Thêm
							<i class="fa fa-arrow-circle-right"></i>
						</a>
					</div>
				</div>
				<!-- ./col -->
				<div class="col-lg-3 col-xs-6">
					<!-- small box -->
					<div class="small-box bg-primary">
						<div class="inner">
							<h3>${dasDAO.getTotalUser() }</h3>

							<p>User</p>
						</div>
						<div class="icon">
							<i class="fa fa-user"></i>
						</div>
						<a href="indexUser.jsp" class="small-box-footer">Xem Thêm <i
							class="fa fa-arrow-circle-right"></i>
						</a>
					</div>
				</div>
				<!-- ./col -->

				<!-- ./col -->

			</div>
			<!-- /.row --> <!-- Main row -->
			<div class="row">
				<!-- Left col -->
				<section class="col-lg-6 connectedSortable"> <!-- table OrderTour -->
				<div class="box box-info">
					<div class="box-header with-border">
						<h3 class="box-title">Latest OrderTour</h3>

						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool"
								data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
							<button type="button" class="btn btn-box-tool"
								data-widget="remove">
								<i class="fa fa-times"></i>
							</button>
						</div>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="table-responsive">
							<table class="table no-margin">
								<thead>
									<tr>

										<th>ID OrderTOur</th>
										<th>Tên Tour</th>
										<th>Tổng Giá</th>
										<th>Loại Giao Dịch</th>
										<th>Thanh Toán</th>
									</tr>
								</thead>
								<tbody>
									<!-- lấy 7 Order Car mới nhất -->
									<c:forEach items="${dasDAO.getLatestOrder() }" var="order">
										<tr>
											<td><a href="">${order.idOrder }</a></td>
											<td>${order.nameTour }</td>
											<td><f:formatNumber value="${order.price }"
													maxFractionDigits="0" minFractionDigits="0"></f:formatNumber>
												đ</td>
											<c:choose>
												<c:when test="${order.modelPayment == 1 }">
													<td>Tiền Mặt</td>
												</c:when>
												<c:when test="${order.modelPayment == 2 }">
													<td>Chuyển Khoản</td>
												</c:when>
												<c:otherwise>
													<td>Online</td>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${order.stateMoney == 0 }">
													<td><span class="label label-warning">Chưa
															Chuyển</span></td>
												</c:when>
												<c:otherwise>
													<td><span class="label label-success">Đã Chuyển</span></td>
												</c:otherwise>
											</c:choose>

										</tr>
									</c:forEach>


								</tbody>
							</table>
						</div>
						<!-- /.table-responsive -->
					</div>
					<!-- /.box-body -->
					<div class="box-footer clearfix">
						<a href="indexOrderTour.jsp"
							class="btn btn-sm btn-default btn-flat pull-right">Xem Tất Cả
							Order</a>
					</div>
					<!-- /.box-footer -->
				</div>
				<!-- End Table Tour --> </section>
				<!-- /.Left col -->
				<!-- right col (We are only adding the ID to make the widgets sortable)-->
				<section class="col-lg-6 connectedSortable"> <!-- table OrderCar -->
				<div class="box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">Latest OrderCar</h3>

						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool"
								data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
							<button type="button" class="btn btn-box-tool"
								data-widget="remove">
								<i class="fa fa-times"></i>
							</button>
						</div>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="table-responsive">
							<table class="table no-margin">
								<thead>
									<tr>
										<th>ID OrderCar</th>
										<th>Tên Xe</th>
										<th>Tổng Giá</th>
										<th>Loại Giao Dịch</th>
										<th>Thanh Toán</th>
									</tr>
								</thead>
								<tbody>
									<!-- lấy 7 Order Car mới nhất -->
									<c:forEach items="${dasDAO.getLatestOrderCar() }" var="order">
										<tr>
											<td><a href="">${order.idOrder }</a></td>
											<td>${order.nameCar }</td>
											<td><f:formatNumber value="${order.price }"
													minFractionDigits="0" maxFractionDigits="0"></f:formatNumber>đ</td>
											<c:choose>
												<c:when test="${order.modelPayment == 1 }">
													<td>Tiền Mặt</td>
												</c:when>
												<c:when test="${order.modelPayment ==2  }">
													<td>Chuyển Khoản</td>
												</c:when>
												<c:otherwise>
													<td>Chuyển Khoản</td>
												</c:otherwise>
											</c:choose>
											<c:choose>
												<c:when test="${order.stateGetMoney == 1 }">
													<td><span class="label label-success">Đã Chuyển</span></td>
												</c:when>
												<c:when test="${order.stateGetMoney == 2}">
													<td><span class="label label-dangre">Hủy Bỏ</span></td>
												</c:when>
												<c:otherwise>
													<td><span class="label label-warning">Chưa
															Chuyển</span></td>
												</c:otherwise>
											</c:choose>


										</tr>
									</c:forEach>

								</tbody>
							</table>
						</div>
						<!-- /.table-responsive -->
					</div>
					<!-- /.box-body -->
					<div class="box-footer clearfix">
						<a href="indexOrderCar.jsp"
							class="btn btn-sm btn-default btn-flat pull-right">Xem Tất Cả
							Order</a>
					</div>
					<!-- /.box-footer -->
				</div>

				<!-- End OrderCar --> </section>
				<!-- right col -->
				<section class="col-lg-6 connectedSortable">
				<h3 class=" box-title  text-center">Bảng Doanh Thu Tour</h3>

				<div class="box box-primary">
					<div class="box-header with-border">


						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool"
								data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
							<button type="button" class="btn btn-box-tool"
								data-widget="remove">
								<i class="fa fa-times"></i>
							</button>
						</div>
						<div class="row">
							<form action="getTotalOrderTourByTime" id="formTour"
								method="post">
								<div class="col-md-4 form-group">
									<input type="text" placeholder="From" class="form-control"
										id="dateFormTour" name="dateForm">
								</div>
								<div class="col-md-4 form-group">
									<input type="text" placeholder="To" class="form-control"
										id="dateToTour" name="dateTo">
								</div>

								<div class="col-md-2 form-group">
									<button type="submit" onclick=" return checkdate()"
										class=" btn btn-sm btn-success">
										<i class="fa fa-search" aria-hidden="true"></i>
									</button>
								</div>
							</form>
						</div>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="table-responsive">
							<table class="table no-margin">
								<thead>
									<tr>
										<th>ID OrderTour</th>
										<th>Tên Tour</th>
										<th>Người đặt</th>
										<th>Số lượng người</th>
										<th>Tổng Tiền</th>
									</tr>
								</thead>
								<tbody>

									<c:if test="${orderDashbod != null }">
										<c:forEach items="${orderDashbod.listOrderModel }" var="order">

											<tr>
												<td><a href="">${order.idOrder }</a></td>
												<td>${order.nameTour }</td>
												<td><f:formatNumber value="${order.price }"
														maxFractionDigits="0" minFractionDigits="0"></f:formatNumber>
													đ</td>
												<c:choose>
													<c:when test="${order.modelPayment == 1 }">
														<td>Tiền Mặt</td>
													</c:when>
													<c:when test="${order.modelPayment == 2 }">
														<td>Chuyển Khoản</td>
													</c:when>
													<c:otherwise>
														<td>Online</td>
													</c:otherwise>
												</c:choose>
												<c:choose>
													<c:when test="${order.stateMoney == 0 }">
														<td><span class="label label-success">Chưa
																Chuyển</span></td>
													</c:when>
													<c:otherwise>
														<td><span class="label label-success">Đã
																Chuyển</span></td>
													</c:otherwise>
												</c:choose>

											</tr>



										</c:forEach>

										<tr>
											<th>Tổng Order</th>
											<td>${orderDashbod.totalOrder }</td>
											<th colspan="2" class="text-center">Tổng Tiền</th>
											<td><f:formatNumber value="${orderDashbod.totalPrice }"
													minFractionDigits="0" maxFractionDigits="0"></f:formatNumber>đ</td>
										</tr>




									</c:if>


								</tbody>
							</table>
						</div>
						<!-- /.table-responsive -->
					</div>

				</div>
				</section>


				<section class="col-lg-6 connectedSortable">
				<h3 class=" box-title  text-center">Bảng Doanh Thu Car</h3>

				<div class="box box-primary">
					<div class="box-header with-border">
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool"
								data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
							<button type="button" class="btn btn-box-tool"
								data-widget="remove">
								<i class="fa fa-times"></i>
							</button>
						</div>


						<div class="row">
							<form action="getTotalOrderCarByTime" id="formCar" method="post">
								<div class="col-md-4 form-group">
									<input type="text" placeholder="From" class="form-control"
										id="dateFormCar" name="dateFormCar">
								</div>
								<div class="col-md-4 form-group">
									<input type="text" placeholder="To" class="form-control"
										id="dateToCar" name="dateToCar">
								</div>

								<div class="col-md-2 form-group">
									<button type="submit" onclick=" return checkdate1()"
										class=" btn btn-sm btn-success">
										<i class="fa fa-search" aria-hidden="true"></i>
									</button>
								</div>
							</form>
						</div>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="table-responsive">
							<table class="table no-margin">
								<thead>
									<tr>
										<th>ID OrderCar</th>
										<th>Tên Xe</th>
										<th>Người Đặt</th>
										<th>Số Xe</th>
										<th>Tổng Tiền</th>
									</tr>
								</thead>
								<tbody>
									<!-- lấy 7 Order Car mới nhất -->

									<c:if test="${orderDashbodCar != null }">
										<c:forEach items="${orderDashbodCar.listOrderCar }"
											var="order">
											<tr>
												<td><a href="">${order.idOrder }</a></td>
												<td>${order.nameCar }</td>
												<td>${order.nameUser }</td>
												<td>1</td>
												<td>${order.price }</td>


											</tr>

										</c:forEach>
										<tr>
											<th>Tổng Order</th>
											<td>${orderDashbodCar.totalOrder }</td>
											<th colspan="2" class="text-center">Tổng Tiền</th>
											<td><f:formatNumber
													value="${orderDashbodCar.totalPrice }"
													minFractionDigits="0" maxFractionDigits="0"></f:formatNumber>đ</td>
										</tr>

									</c:if>



								</tbody>
							</table>
						</div>
						<!-- /.table-responsive -->
					</div>

				</div>


				</section>
			</div>
			<!-- /.row (main row) --> </section>
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
	<%@ include file="fileJS.jsp"%>
	<!-- ./wrapper -->

	<!-- jQuery 2.2.3 -->
	<script type="text/javascript">
		$(document).ready(function() {
			$("#dateFormTour").datepicker();
			$("#dateToTour").datepicker();
			$("#dateFormCar").datepicker();
			$("#dateToCar").datepicker();
			var flag = true;
            $("#formTour").submit(function(){
                 var dateFormTour = $.trim($("#dateFormTour").val());
                  var dateToTour = $.trim($("#dateToTour").val());
              if (dateFormTour == "" && dateToTour == "") {
                alert("Bạn phải nhập một trong hai form Tour");
                flag = false;
              }else{
            	  flag=true;
              }
              return flag;
            });
              $("#formCar").submit(function(){
                  var dateFormCar = $.trim($("#dateFormCar").val());
                  var dateToCar = $.trim($("#dateToCar").val());
              if (dateFormCar == "" && dateToCar == "") {
                alert("Bạn phải nhập một trong hai form Car");
                flag = false;
              }else{
            	  flag=true;
              }
              return flag;
            });


		});
		function checkdate() {
			var dateFormTour = document.getElementById("dateFormTour").value;
			var dateToTour = document.getElementById("dateToTour").value;
			var check = true;
			if (Date.parse(dateFormTour) > Date.parse(dateToTour)) {
				alert("Xin xác nhận lại thời gian doanh thu Tour ");
				check = false;
			}

			return check;
		}
		function checkdate1() {
			var dateFormCar = document.getElementById("dateFormCar").value;
			var dateToCar = document.getElementById("dateToCar").value;
			var check = true;
			if (Date.parse(dateFormCar) > Date.parse(dateToCar)) {
				alert("Xin xác nhận lại thời gian doanh thu Car");
				check = false;
			}
			return check;
		}
	</script>

</body>

</html>
