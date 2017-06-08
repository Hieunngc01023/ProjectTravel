<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<header class="header">
		<div class="wrap">
			<!--logo-->
			<div class="logo"><a href="index.html" title="Book Your Travel"><img src="images/txt/logo.png" alt="Book Your Travel" /></a></div>
			<!--//logo-->
			
			<!--ribbon-->
			<div class="ribbon">
				<nav>
					<ul class="profile-nav">
						<li class="active"><a href="#" title="My Account">My Account</a></li>
						<li><a href="#" title="Login">Login</a></li>
						<li><a href="#" title="Help">Help</a></li>
					</ul>
					<ul class="lang-nav">
						<li class="active"><a href="#" title="English (US)">English (US)</a></li>
						<li><a href="#" title="English (UK)">English (UK)</a></li>
						<li><a href="#" title="Deutsch">Deutsch</a></li>
						<li><a href="#" title="Italiano">Italiano</a></li>
						<li><a href="#" title="Русский">Русский</a></li>
					</ul>
					<ul class="currency-nav">
						<li class="active"><a href="#" title="$US Dollar">$US Dollar</a></li>
						<li><a href="#" title="€ Euro">€ Euro</a></li>
						<li><a href="#" title="£ Pound">£ Pound</a></li>
					</ul>
				</nav>
			</div>
			<!--//ribbon-->
			
			<!--search-->
			<div class="search">
				<form id="search-form" method="get" action="search-form">
					<input type="search" placeholder="Search entire site here" name="site_search" id="site_search" /> 
					<input type="submit" id="submit-site-search" value="submit-site-search" name="submit-site-search"/>
				</form>
			</div>
			<!--//search-->
			
			<!--contact-->
			<div class="contact">
				<span>24/7 Support number</span>
				<span class="number">1- 555 - 555 - 555</span>
			</div>
			<!--//contact-->
		</div>
		
		<!--main navigation-->
		<nav class="main-nav">
			<div class="wrap">
				<ul class="slimmenu" id="nav">
					<li><a href="hotels.html" title="Hotels">Hotels</a>
						<ul>
							<li><a href="#">Secondary navigation</a></li>
							<li><a href="#">Example links</a>
								<ul>
									<li><a href="#">Third level navigation</a></li>
									<li><a href="#">Example links</a>
										<ul>
											<li><a href="#">Fourth level navigation</a></li>
											<li><a href="#">Example links</a></li>
										</ul>
									</li>
								</ul>
							</li>
						</ul>
					</li>
					<li><a href="flights.html" title="Flights">Flights</a></li>
					<li><a href="flight_and_hotels.html" title="Flight + Hotel">Flight + Hotel</a></li>
					<li><a href="self_caterings.html" title="Self catering">Self catering</a></li>
					<li><a href="cruises.html" title="Cruises">Cruises</a></li>
					<li><a href="car_rentals.html" title="Car rental">Car rental</a></li>
					<li><a href="locations.html" title="Locations">Locations</a>
						<ul>
							<li><a href="location.html" title="Single Location">Single Location</a>
						</ul>
					</li>
					<li><a href="hot_deals.html" title="Hot deals">Hot deals</a></li>
					<li class="has-mega"><a href="#" title="Pages">Pages</a>
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
					<li><a href="contact.html" title="Contact">Contact</a></li>
					<li class="current"><a href="blog.html" title="Blog">Blog</a>
						<ul>
							<li><a href="blog_single.html" title="Single Post">Single Post</a>
						</ul>
					</li>
					<li><a href="http://themeforest.net/item/book-your-travel-online-booking-html-template/3813953?ref=themeenergy" title="Purchase">Purchase</a></li>
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
					<li>Blog</li>                                       
				</ul>
				<!--//crumbs-->
			</nav>
			<!--//breadcrumbs-->
			
			<div class="row">
				<!--three-fourth content-->
				<div class="three-fourth">
					<!--post-->
					<article class="static-content post">
						<header class="entry-header">
							<h2><a href="blog_single.html">Fringilla Mollis Tellus Porta Euismod Nullam</a></h2>
							<p class="entry-meta">
								<span class="date">Date: February 10, 2016</span> 
								<span class="author">By: admin</span> 
								<span class="tags">Tags:
									<a rel="category tag" title="View all posts in Travel" href="#">Travel</a>, 
									<a rel="category tag" title="View all posts in Photography" href="#">Photography</a>
								</span>
								<span class="comments"><a href="#">4 Comments</a></span>
							</p>
						</header>
						<div class="entry-featured"><a href="#"><figure><img src="images/uploads/img.jpg" alt="" /></figure></a></div>
						<div class="entry-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
							<a href="blog_single.html" class="gradient-button">Continue reading</a>
						</div>
					</article>
					<!--//post-->
					
					<!--post-->
					<article class="static-content post">
						<header class="entry-header">
							<h2><a href="blog_single.html">Fringilla Mollis Tellus Porta Euismod Nullam</a></h2>
							<p class="entry-meta">
								<span class="date">Date: February 10, 2016</span> 
								<span class="author">By: admin</span> 
								<span class="tags">Tags:
									<a rel="category tag" title="View all posts in Travel" href="#">Travel</a>, 
									<a rel="category tag" title="View all posts in Photography" href="#">Photography</a>
								</span>
								<span class="comments"><a href="#">4 Comments</a></span>
							</p>
						</header>
						<div class="entry-featured">
							<div class="video-wrapper">
								<div class="video-container">
									<iframe width="816" height="350" src="http://www.youtube.com/embed/YsgP8LkEopM" frameborder="0" allowfullscreen></iframe>
								</div>
							</div>
						</div>
						<div class="entry-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
							<a href="blog_single.html" class="gradient-button">Continue reading</a>
						</div>
					</article>
					<!--//post-->
					
					<!--post-->
					<article class="static-content post">
						<header class="entry-header">
							<h2><a href="blog_single.html">Fringilla Mollis Tellus Porta Euismod Nullam</a></h2>
							<p class="entry-meta">
								<span class="date">Date: February 10, 2016</span> 
								<span class="author">By: admin</span> 
								<span class="tags">Tags:
									<a rel="category tag" title="View all posts in Travel" href="#">Travel</a>, 
									<a rel="category tag" title="View all posts in Photography" href="#">Photography</a>
								</span>
								<span class="comments"><a href="#">4 Comments</a></span>
							</p>
						</header>
						<div class="entry-featured"><a href="#"><figure><img src="images/uploads/img.jpg" alt="" /></figure></a></div>
						<div class="entry-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
							<a href="blog_single.html" class="gradient-button">Continue reading</a>
						</div>
					</article>
					<!--//post-->
					
					<!--post-->
					<article class="static-content post">
						<header class="entry-header">
							<h2><a href="blog_single.html">Fringilla Mollis Tellus Porta Euismod Nullam</a></h2>
							<p class="entry-meta">
								<span class="date">Date: February 10, 2016</span> 
								<span class="author">By: admin</span> 
								<span class="tags">Tags:
									<a rel="category tag" title="View all posts in Travel" href="#">Travel</a>, 
									<a rel="category tag" title="View all posts in Photography" href="#">Photography</a>
								</span>
								<span class="comments"><a href="#">4 Comments</a></span>
							</p>
						</header>
						<div class="entry-featured"></div>
						<div class="entry-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
							<a href="blog_single.html" class="gradient-button">Continue reading</a>
						</div>
					</article>
					<!--//post-->
					
					<!--bottom navigation-->
					<div class="bottom-nav">
						<!--back up button-->
						<a href="#" class="scroll-to-top" title="Back up">Back up</a> 
						<!--//back up button-->
						
						<!--pager-->
						<div class="pager">
							<span><a href="#">First page</a></span>
							<span><a href="#">&lt;</a></span>
							<span class="current">1</span>
							<span><a href="#">2</a></span>
							<span><a href="#">3</a></span>
							<span><a href="#">4</a></span>
							<span><a href="#">5</a></span>
							<span><a href="#">6</a></span>
							<span><a href="#">7</a></span>
							<span><a href="#">8</a></span>
							<span><a href="#">&gt;</a></span>
							<span><a href="#">Last page</a></span>
						</div>
						<!--//pager-->
					</div>
					<!--//bottom navigation-->
				</div>
				<!--//three-fourth content-->
				
				<!--sidebar-->
				<aside class="one-fourth right-sidebar">

					<!--Need Help Booking?-->
					<article class="widget">
						<h4>Need Help Booking?</h4>
						<p>Call our customer services team on the number below to speak to one of our advisors who will help you with all of your holiday needs.</p>
						<p class="number">1- 555 - 555 - 555</p>
					</article>
					<!--//Need Help Booking?-->
					
					<!--Why Book with us?-->
					<article class="widget">
						<h4>Why Book with us?</h4>
						<h5>Low rates</h5>
						<p>Get the best rates, or get a refund.No booking fees. Save money!</p>
						<h5>Largest Selection</h5>
						<p>140,000+ hotels worldwide130+ airlinesOver 3 million guest reviews</p>
						<h5>We’re Always Here</h5>
						<p>Call or email us, anytimeGet 24-hour support before, during, and after your trip</p>
					</article>
					<!--//Why Book with us?-->
					
					<!--Blog search-->
					<article class="widget">
						<h4>Search</h4>
						<p>Lorem ipsum dolor sit amet</p>
						<div class="row">
							<div class="f-item full-width">
								<input type="search" id="blogsearch" name="blogsearch" placeholder="Search the blog" />
							</div>
							<div class="f-item full-width">
								<input type="submit" id="blogsearchsubmit" name="blogsearchsubmit" value="Search" class="gradient-button" />
							</div>
						</div>
					</article>
					<!--//Blog search-->
					
					<!--Blog archives-->
					<article class="widget">
						<h4>Archive</h4>
						<ul>
							<li><a href="#">December 2016</a></li>
							<li><a href="#">November 2016</a></li>
							<li><a href="#">October 2016</a></li>
							<li><a href="#">September 2016</a></li>
							<li><a href="#">August 2016</a></li>
						</ul>
					</article>
					<!--//Blog archives-->
					
					<!--Deal of the day-->
					<article class="widget">
						<h4>Deal of the day</h4>
						<div class="deal-of-the-day">
							<figure><a href="hotel.html"><img src="images/uploads/img.jpg" alt=""  /></a></figure>
							<h3><a href="hotel.html">Plaza Resort Hotel &amp; SPA
								<span class="stars">
									<i class="material-icons">&#xE838;</i>
									<i class="material-icons">&#xE838;</i>
									<i class="material-icons">&#xE838;</i>
									<i class="material-icons">&#xE838;</i>
								</span>
							</a></h3>
							<p>From <span class="price">$ 100 <small>/ per night</small></span></p>
							<span class="rating"> 8 /10</span>
						</div>
					</article>
					<!--//Deal of the day-->
				</aside>
				<!--//sidebar-->
			</div>
			<!--//main content-->
		</div>
	</main>
	<!--//main-->
	
	<!--footer-->
	<footer class="footer">
		<div class="wrap">
			<div class="row">
				<!--column-->
				<article class="one-fourth">
					<h6>Book Your Travel</h6>
					<p>1400 PennsylSUVia Ave. Washington, DC</p>
					<p><em>P:</em> 24/7 customer support: 1-555-555-5555</p>
					<p><em>E:</em> <a href="#" title="booking@mail.com">booking@mail.com</a></p>
				</article>
				<!--//column-->
				
				<!--column-->
				<article class="one-fourth">
					<h6>Customer support</h6>
					<ul>
						<li><a href="#" title="Faq">Faq</a></li>
						<li><a href="#" title="How do I make a reservation?">How do I make a reservation?</a></li>
						<li><a href="#" title="Payment options">Payment options</a></li>
						<li><a href="#" title="Booking tips">Booking tips</a></li>
					</ul>
				</article>
				<!--//column-->
				
				<!--column-->
				<article class="one-fourth">
					<h6>Follow us</h6>
					<ul class="social">
							<li><a href="#" title="facebook"><i class="fa fa-fw fa-facebook"></i></a></li>
							<li><a href="#" title="youtube"><i class="fa  fa-fw fa-youtube"></i></a></li>
							<li><a href="#" title="rss"><i class="fa  fa-fw fa-rss"></i></a></li>
							<li><a href="#" title="gplus"><i class="fa fa-fw fa-google-plus"></i></a></li>
							<li><a href="#" title="linkedin"><i class="fa fa-fw fa-linkedin"></i></a></li>
							<li><a href="#" title="twitter"><i class="fa fa-fw fa-twitter"></i></a></li>
							<li><a href="#" title="pinterest"><i class="fa fa-fw fa-pinterest-p"></i></a></li>
							<li><a href="#" title="vimeo"><i class="fa fa-fw fa-vimeo"></i></a></li>
						</ul>
				</article>
				<!--//column-->
				
				<!--column-->
				<article class="one-fourth">
					<h6>Don’t miss our exclusive offers</h6>
					<form id="newsletter" action="newsletter.php" method="post">
						<fieldset>
							<input type="email" id="newsletter_signup" name="newsletter_signup" placeholder="Enter your email here" />
							<input type="submit" id="newsletter_submit" name="newsletter_submit" value="Signup" class="gradient-button" />
						</fieldset>
					</form>
				</article>
				<!--//column-->
				
				<div class="bottom full-width">
					<p class="copy">Copyright 2016 Book your travel ltd. All rights reserved</p>
					<nav>
						<ul>
							<li><a href="#" title="About us">About us</a></li>
							<li><a href="contact.html" title="Contact">Contact</a></li>
							<li><a href="#" title="Partners">Partners</a></li>
							<li><a href="#" title="Customer service">Customer service</a></li>
							<li><a href="#" title="FAQ">FAQ</a></li>
							<li><a href="#" title="Careers">Careers</a></li>
							<li><a href="#" title="Terms & Conditions">Terms &amp; Conditions</a></li>
							<li><a href="#" title="Privacy statement">Privacy statement</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</footer>
	<!---footer-->
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/jquery.uniform.min.js"></script>
	<script type="text/javascript" src="js/jquery.slimmenu.min.js"></script>
	<script type="text/javascript" src="js/scripts.js"></script>
</body>
</html>