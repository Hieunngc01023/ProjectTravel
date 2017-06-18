<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- sidebar menu: : style can be found in sidebar.less -->
<ul class="sidebar-menu">
	<li class="header">MAIN NAVIGATION</li>
	<li class="active treeview"><a href="index.jsp"> <i
			class="fa fa-dashboard"></i> <span>Dashboard</span> <span
			class="pull-right-container"> <i
				class="fa fa-angle-left pull-right"></i>
		</span>
	</a></li>
	<li class="treeview"><a href="#"> <i class="fa fa-list-ul"></i>
			<span>Danh mục</span> <span class="pull-right-container"> <i
				class="fa fa-angle-left pull-right"></i>
		</span>
	</a>
		<ul class="treeview-menu">
			<li class="active"><a href="indexCategory.jsp"><i
					class="fa fa-circle-o"></i> Danh sách danh mục</a></li>
			<li><a href="createCategory.jsp"><i class="fa fa-circle-o"></i>
					Thêm mới danh mục</a></li>
		</ul></li>
	<li class="treeview"><a href="#"> <i class="fa fa-globe"></i>
			<span>Tour</span> <span class="pull-right-container"> <i
				class="fa fa-angle-left pull-right"></i>
		</span>
	</a>
		<ul class="treeview-menu">
			<li class="active"><a href="indexTour.jsp"><i
					class="fa fa-circle-o"></i> Danh sách Tour</a></li>
			<li><a href="createTour.jsp"><i class="fa fa-circle-o"></i>
					Thêm mới Tour</a></li>
		</ul></li>
	<li class="treeview"><a href="#"> <i class="fa fa-globe"></i>
			<span>TourDetail</span> <span class="pull-right-container"> <i
				class="fa fa-angle-left pull-right"></i>
		</span>
	</a>
		<ul class="treeview-menu">
			<li class="active"><a href="indexTourDetail.jsp"><i
					class="fa fa-circle-o"></i> Danh sách TourDetail</a></li>
		</ul></li>

	<li class="treeview"><a href="#"> <i
			class="fa fa-shopping-cart"></i> <span>OrderTour</span> <span
			class="pull-right-container"> <i
				class="fa fa-angle-left pull-right"></i>
		</span>
	</a>
		<ul class="treeview-menu">
			<li class="active"><a href="indexOrderTour.jsp"><i
					class="fa fa-circle-o"></i> Danh sách OrderTour</a></li>
		</ul></li>
	<li class="treeview"><a href="#"> <i
			class="fa fa-user-circle-o"></i> <span>User</span> <span
			class="pull-right-container"> <i
				class="fa fa-angle-left pull-right"></i>
		</span>
	</a>
		<ul class="treeview-menu">
			<li class="active"><a href="indexUser.jsp"><i
					class="fa fa-circle-o"></i> Danh sách User</a></li>
			<li><a href="createUser.jsp"><i class="fa fa-circle-o"></i>
					Thêm mới User</a></li>
		</ul></li>
	<li class="treeview"><a href="#"> <i class="fa fa-car"></i> <span>Car</span>
			<span class="pull-right-container"> <i
				class="fa fa-angle-left pull-right"></i>
		</span>
	</a>
		<ul class="treeview-menu">
			<li class="active"><a href="indexCar.jsp"><i
					class="fa fa-circle-o"></i> Danh sách Car</a></li>
			<li><a href="createCar.jsp"><i class="fa fa-circle-o"></i>
					Thêm mới Car</a></li>
		</ul></li>
	<li class="treeview"><a href="#"> <i
			class="fa fa-shopping-cart"></i> <span>OrderCar</span> <span
			class="pull-right-container"> <i
				class="fa fa-angle-left pull-right"></i>
		</span>
	</a>
		<ul class="treeview-menu">
			<li class="active"><a href="indexOrderCar.jsp"><i
					class="fa fa-circle-o"></i> Danh sách OrderCar</a></li>

		</ul></li>
	<li class="treeview"><a href="#"> <i class="fa fa-pencil"></i>
			<span>Blog</span> <span class="pull-right-container"> <i
				class="fa fa-angle-left pull-right"></i>
		</span>
	</a>
		<ul class="treeview-menu">
			<li class="active"><a href="indexBlog.jsp"><i
					class="fa fa-circle-o"></i> Danh sách Blog</a></li>
			<li><a href="createBlog.jsp"><i class="fa fa-circle-o"></i>
					Thêm mới Blog</a></li>
		</ul></li>
	<li class="treeview"><a href="#"> <i class="fa fa-phone"></i>
			<span>Contact</span> <span class="pull-right-container"> <i
				class="fa fa-angle-left pull-right"></i>
		</span>
	</a>
		<ul class="treeview-menu">
			<li class="active"><a href="indexContact.jsp"><i
					class="fa fa-circle-o"></i> Danh sách Contact</a></li>
		</ul></li>


</ul>



<!-- 
new newwwwwwwwww -->


<!-- <ul class="sidebar-menu">
	<li class="header">MAIN NAVIGATION</li>
	<li class="active treeview"><a href="index.html"> <i
			class="fa fa-dashboard"></i> <span>Dashboard</span> <span
			class="pull-right-container"> <i
				class="fa fa-angle-left pull-right"></i>
		</span>
	</a></li>
	<li class="treeview"><a href="#"> <i class="fa fa-list-ul"></i>
			<span>Danh mục</span> <span class="pull-right-container"> <i
				class="fa fa-angle-left pull-right"></i>
		</span>
	</a>
		<ul class="treeview-menu">
			<li class="active"><a href="indexCategory.html"><i
					class="fa fa-circle-o"></i> Danh sách danh mục</a></li>
			<li><a href="createCategory.html"><i class="fa fa-circle-o"></i>
					Thêm mới danh mục</a></li>
		</ul></li>
	<li class="treeview"><a href="#"> <i class="fa fa-globe"></i>
			<span>Tour</span> <span class="pull-right-container"> <i
				class="fa fa-angle-left pull-right"></i>
		</span>
	</a>
		<ul class="treeview-menu">
			<li class="active"><a href="indexTour.html"><i
					class="fa fa-circle-o"></i> Danh sách Tour</a></li>
			<li><a href="createTour.html"><i class="fa fa-circle-o"></i>
					Thêm mới Tour</a></li>
		</ul></li>
	<li class="treeview"><a href="#"> <i class="fa fa-globe"></i>
			<span>TourDetail</span> <span class="pull-right-container"> <i
				class="fa fa-angle-left pull-right"></i>
		</span>
	</a>
		<ul class="treeview-menu">
			<li class="active"><a href="indexTourDetail.html"><i
					class="fa fa-circle-o"></i> Danh sách TourDetail</a></li>
			<li><a href="createTourDetail.html"><i
					class="fa fa-circle-o"></i> Thêm mới TourDetail</a></li>
		</ul>
		
		</li>
		
	<li class="treeview"><a href="#"> <i
			class="fa fa-shopping-cart"></i> <span>OrderTour</span> <span
			class="pull-right-container"> <i
				class="fa fa-angle-left pull-right"></i>
		</span>
	</a>
		<ul class="treeview-menu">
			<li class="active"><a href="indexOrderTour.html"><i
					class="fa fa-circle-o"></i> Danh sách OrderTour</a></li>
		</ul></li>
	<li class="treeview"><a href="#"> <i
			class="fa fa-user-circle-o"></i> <span>User</span> <span
			class="pull-right-container"> <i
				class="fa fa-angle-left pull-right"></i>
		</span>
	</a>
		<ul class="treeview-menu">
			<li class="active"><a href="indexUser.html"><i
					class="fa fa-circle-o"></i> Danh sách User</a></li>
			<li><a href="createUser.html"><i class="fa fa-circle-o"></i>
					Thêm mới User</a></li>
		</ul></li>
	<li class="treeview"><a href="#"> <i class="fa fa-car"></i> <span>Car</span>
			<span class="pull-right-container"> <i
				class="fa fa-angle-left pull-right"></i>
		</span>
	</a>
		<ul class="treeview-menu">
			<li class="active"><a href="indexCar.html"><i
					class="fa fa-circle-o"></i> Danh sách Car</a></li>
			<li><a href="createCar.html"><i class="fa fa-circle-o"></i>
					Thêm mới Car</a></li>
		</ul></li>
	<li class="treeview"><a href="#"> <i
			class="fa fa-shopping-cart"></i> <span>OrderCar</span> <span
			class="pull-right-container"> <i
				class="fa fa-angle-left pull-right"></i>
		</span>
	</a>
		<ul class="treeview-menu">
			<li class="active"><a href="indexOrderCar.html"><i
					class="fa fa-circle-o"></i> Danh sách OrderCar</a></li>
			<li><a href="createOrderCar.html"><i class="fa fa-circle-o"></i>
					Thêm mới OrderCar</a></li>
		</ul></li>
</ul> -->
