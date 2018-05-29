<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="zxx">
<head>
<!-- Basic page needs -->
<meta charset="utf-8">
<!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<![endif]-->
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
<title></title>
<meta name="description" content="">
<meta name="keywords" content="">

<!-- Mobile specific metas  -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon  -->
<link rel="shortcut icon" type="../image/x-icon" href="../favicon.ico">

<!-- CSS Style -->
<link rel="stylesheet" href="../style.css">
<link rel="stylesheet" href="../css/loader.css">
<link rel="stylesheet" href="../css/shop-grid.css">

<!-- 页面加载 -->
   

<div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-back"></div>
<!--     <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div> -->
    <div class="load_title">Loading...<br><span>111</span></div>
</div>

<!-- 高德地图 -->
<link rel="stylesheet"
	href="http://cache.amap.com/lbs/static/main1119.css" />
<link rel="stylesheet"
	href="http://cache.amap.com/lbs/static/main.css?v=1.0" />
<script src="http://cache.amap.com/lbs/static/es5.min.js"></script>
<script type="text/javascript"
	src="http://webapi.amap.com/maps?v=1.3&key=9ec7df578b3d28f30ad9d6909ef6fbf6"></script>


<style type="text/css">
#Container {
	
	height: 300px;
}
</style>
<!-- 高德地图 -->

</head>
<body class="category-page">
	<!-- mobile menu -->
	<div id="jtv-mobile-menu">
		<ul>
			<li>
				<div class="jtv-search-mob">
					<form id="search1" name="search">
						<div class="input-group">
							<div class="input-group-btn">
								<button class="btn btn-default" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>
							<input type="text" class="form-control simple"
								placeholder="Search ..." name="srch-term" id="srch-term">
						</div>
					</form>
				</div>
			</li>
			<li><a href="index.html">Home</a></li>
			<li><a href="grid">Shop Grid</a></li>
			<li><a href="single_product.html">Single Product</a></li>
			<li><a href="#">Love & Romance</a>
				<ul>
					<li><a href="shop_grid.html"><span>Wedding Flowers</span></a>
						<ul>
							<li><a href="shop_grid.html"><span>Toaster
										Crossbody</span></a></li>
							<li><a href="shop_grid.html"><span>Piper Bag</span></a></li>
							<li><a href="shop_grid.html"><span>Leather Bag</span></a></li>
							<li><a href="shop_grid.html"><span>Canvas Bag</span></a></li>
						</ul></li>
					<li><a href="shop_grid.html"><span>Birthday Flowers</span></a>
						<ul>
							<li><a href="shop_grid.html"><span>Travel
										Accessories</span></a></li>
							<li><a href="shop_grid.html"><span>Gym Bags</span></a></li>
							<li><a href="shop_grid.html"><span>Fashion Waist
										Packs</span></a></li>
							<li><a href="shop_grid.html"><span>Messenger Bags</span></a>
							</li>
						</ul></li>
					<li><a href="shop_grid.html"><span>Winter Flowers</span></a>
						<ul>
							<li><a href="shop_grid.html"><span>Travel Duffels</span></a>
							</li>
							<li><a href="shop_grid.html"><span>Umbrellas</span></a></li>
							<li><a href="shop_grid.html"><span>Waist Packs</span></a></li>
							<li><a href="shop_grid.html"><span>Travel Gear</span></a></li>
						</ul></li>
					<li><a href="shop_grid.html"><span>Party Flowers</span></a>
						<ul>
							<li><a href="shop_grid.html"><span>Luggage</span></a></li>
							<li><a href="shop_grid.html"><span>Briefcases</span></a></li>
							<li><a href="shop_grid.html"><span>Bowling</span></a></li>
							<li><a href="shop_grid.html"><span>Bucket Bag</span></a></li>
						</ul></li>
					<li><a href="shop_grid.html"><span>floral lattice
								bag</span></a>
						<ul>
							<li><a href="shop_grid.html"><span>Crossbody Bag</span></a>
							</li>
							<li><a href="shop_grid.html"><span>Clutch Handbag</span></a>
							</li>
							<li><a href="shop_grid.html"><span>Hobo Shoulder</span></a>
							</li>
							<li><a href="shop_grid.html"><span>Saddle Bag</span></a></li>
						</ul></li>
					<li><a href="shop_grid.html"><span>Valentine
								Flowers</span></a>
						<ul>
							<li><a href="shop_grid.html"><span>Wallet
										Wristlet</span></a></li>
							<li><a href="shop_grid.html"><span>Solo Premium </span></a>
							</li>
							<li><a href="shop_grid.html"><span>Laptop Bags</span></a></li>
							<li><a href="shop_grid.html"><span>Belts</span></a></li>
						</ul></li>
				</ul></li>
			<li><a href="shop_grid.html">Occasion</a>
				<ul>
					<li><a href="shop_grid.html"><span>Steve Madden</span></a>
						<ul>
							<li><a href="shop_grid.html"><span>Elegant </span></a></li>
							<li><a href="shop_grid.html"><span>sassy &amp;
										chic</span></a></li>
							<li><a href="shop_grid.html"><span>Women's
										Satchel</span></a></li>
							<li><a href="shop_grid.html"><span>Shoulder Bag</span></a></li>
						</ul></li>
					<li><a href="shop_grid.html"><span>College Bags</span></a>
						<ul>
							<li><a href="shop_grid.html"><span>fashion
										Backpack</span></a></li>
							<li><a href="shop_grid.html"><span>Rose Gold
										Saffiano</span></a></li>
							<li><a href="shop_grid.html"><span>Black Velvet</span></a></li>
							<li><a href="shop_grid.html"><span>Leather
										Handbags</span></a></li>
						</ul></li>
					<li><a href="shop_grid.html"><span>Material Bag</span></a>
						<ul>
							<li><a href="shop_grid.html"><span>Sling Bag</span></a></li>
							<li><a href="shop_grid.html"><span>Diaper Bags</span></a></li>
							<li><a href="shop_grid.html"><span>Laptop
										Backpack</span></a></li>
							<li><a href="shop_grid.html"><span>Benetton Black
								</span></a></li>
						</ul></li>
					<li><a href="shop_grid.html"><span>Lino Perros</span></a>
						<ul>
							<li><a href="shop_grid.html"><span>Graphite Croco</span></a>
							</li>
							<li><a href="shop_grid.html"><span>Swiss Military
										Red</span></a></li>
							<li><a href="shop_grid.html"><span>Hidesign</span></a></li>
							<li><a href="shop_grid.html"><span>Benetton</span></a></li>
						</ul></li>
					<li><a href="shop_grid.html"><span>Aquatan</span></a>
						<ul>
							<li><a href="shop_grid.html"><span>Travel Blue</span></a></li>
							<li><a href="shop_grid.html"><span>Charles &
										Keith</span></a></li>
							<li><a href="shop_grid.html"><span>Clutches</span></a></li>
							<li><a href="shop_grid.html"><span>wristlets</span></a></li>
						</ul></li>
					<li><a href="shop_grid.html"><span>Kenneth Cole</span></a>
						<ul>
							<li><a href="shop_grid.html"><span>wallets</span></a></li>
							<li><a href="shop_grid.html"><span>shoulder bags</span></a>
							</li>
							<li><a href="shop_grid.html"><span>leather totes</span></a>
							</li>
							<li><a href="shop_grid.html"><span>satchels</span></a></li>
						</ul></li>
				</ul></li>
			<li><a href="shop_grid.html">Sympathy</a></li>
			<li><a href="shop_grid.html">New Baby</a></li>
			<li><a href="shop_grid.html">Anniversary</a></li>
			<li><a href="contact-us.html">Window plants</a></li>
		</ul>
		<div class="jtv-top-link-mob">
			<ul class="links">
				<li><a title="My Account" href="#">My Account</a></li>
				<li><a title="Wishlist" href="#">Wishlist</a></li>
				<li><a title="Checkout" href="#">Checkout</a></li>
				<li><a title="Blog" href="#"><span>Blog</span></a></li>
				<li class="last"><a title="Login" href="#"><span>Login</span></a>
				</li>
			</ul>
		</div>
	</div>
	<div id="page">
		<!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

		<!-- Header -->
		<header>
			<div class="header-container">
				<div class="header-top">
					<div class="container">
						<div class="row">
							<!-- Header Language -->
							<div class="col-xs-12 col-sm-6">
								<div class="welcome-msg hidden-xs">Welcome!</div>
								<div class="dropdown jtv-language-box">
									<a role="button" data-toggle="dropdown" data-target="#"
										class="block-language dropdown-toggle" href="#"> <img
										src="../images/flag-english.jpg" alt="language"> English
										<span class="caret"></span>
									</a>
									<ul class="dropdown-menu" role="menu">
										<li><a class="selected" href="#"> <img
												src="../images/flag-english.jpg" alt="flag"> <span>English</span>
										</a></li>
										<li><a href="#"> <img
												src="../images/flag-default.jpg" alt="flag"> <span>French</span>
										</a></li>
										<li><a href="#"> <img src="../images/flag-german.jpg"
												alt="flag"> <span>German</span>
										</a></li>
										<li><a href="#"> <img src="../images/flag-brazil.jpg"
												alt="flag"> <span>Brazil</span>
										</a></li>
										<li><a href="#"> <img src="../images/flag-chile.jpg"
												alt="flag"> <span>Chile</span>
										</a></li>
										<li><a href="#"> <img src="../images/flag-spain.jpg"
												alt="flag"> <span>Spain</span>
										</a></li>
									</ul>
								</div>
								<!-- End Header Language -->

								<!-- Header Currency -->
								<div class="dropdown jtv-currency-box">
									<a role="button" data-toggle="dropdown" data-target="#"
										class="block-currency dropdown-toggle" href="#"> USD <span
										class="caret"></span></a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="#"> $ - Dollar </a></li>
										<li><a href="#"> £ - Pound </a></li>
										<li><a href="#"> € - Euro </a></li>
									</ul>
								</div>
								<!-- End Header Currency -->

							</div>
							<div class="col-xs-6 hidden-xs">
								<!-- Header Top Links -->
								<div class="jtv-top-links">
									<div class="links">
										<ul>
											<li><a title="Wishlist" href="#">Wishlist</a></li>
											<li><a title="Checkout" href="#"><span
													class="hidden-xs">Checkout</span></a></li>
											<li>
												<div class="dropdown block-company-wrapper hidden-xs">
													<a role="button" data-toggle="dropdown" data-target="#"
														class="block-company dropdown-toggle" href="#"> More <span
														class="caret"></span></a>
													<ul class="dropdown-menu">
														<li><a href="#"> About Us </a></li>
														<li><a href="#"> Customer Service </a></li>
														<li><a href="#"> Privacy Policy </a></li>
														<li><a href="#">Site Map </a></li>
														<li><a href="#">Search Terms </a></li>
														<li><a href="#">Advanced Search </a></li>
													</ul>
												</div>
											</li>
											<li><a href="../user/profile"><span class="hidden-xs" id="navigation-username">${current_user.name}</span></a>
											<li id="user_id" style="display:none;">${current_user.id}</li>
											</li>
										</ul>
									</div>
								</div>
								<!-- End Header Top Links -->
							</div>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
							<div class="jtv-top-cart-box">
								<!-- Top Cart -->
								<div class="mini-cart">
									<div data-toggle="dropdown" data-hover="dropdown"
										class="basket dropdown-toggle">
										<a href="#" style="display:none;"> <span class="cart_count">2</span><span
											class="price">My Bag / $259.00</span>
										</a>
									</div>
									<div>
										<div class="jtv-top-cart-content">

											<!--block-subtitle-->
											<ul class="mini-products-list" id="cart-sidebar">
												<li class="item first">
													<div class="item-inner">
														<a class="product-image" title="Product Title Here"
															href="single_product.html"><img
															alt="Product Title Here"
															src="../images/products/img01.jpg"> </a>
														<div class="product-details">
															<div class="access">
																<a class="jtv-btn-remove" title="Remove This Item"
																	href="#">Remove</a> <a class="btn-edit"
																	title="Edit item" href="#"><i class="icon-pencil"></i><span
																	class="hidden">Edit item</span></a>
															</div>
															<p class="product-name">
																<a href="#">Product Title Here</a>
															</p>
															<strong>1</strong> x <span class="price">$79.99</span>
														</div>
													</div>
												</li>
												<li class="item">
													<div class="item-inner">
														<a class="product-image" title="Product Title Here"
															href="single_product.html"><img
															alt="Product Title Here"
															src="../images/products/img02.jpg"> </a>
														<div class="product-details">
															<div class="access">
																<a class="jtv-btn-remove" title="Remove This Item"
																	href="#">Remove</a> <a class="btn-edit"
																	title="Edit item" href="#"><i class="icon-pencil"></i><span
																	class="hidden">Edit item</span></a>
															</div>
															<p class="product-name">
																<a href="#">Product Title Here</a>
															</p>
															<strong>1</strong> x <span class="price">$88.89</span>
														</div>
													</div>
												</li>
												<li class="item last">
													<div class="item-inner">
														<a class="product-image" title="Product Title Here"
															href="single_product.html"><img
															alt="Product Title Here"
															src="../images/products/img04.jpg"> </a>
														<div class="product-details">
															<div class="access">
																<a class="jtv-btn-remove" title="Remove This Item"
																	href="#">Remove</a> <a class="btn-edit"
																	title="Edit item" href="#"><i class="icon-pencil"></i><span
																	class="hidden">Edit item</span></a>
															</div>
															<p class="product-name">
																<a href="#">Product Title Here</a>
															</p>
															<strong>1</strong> x <span class="price">$85.99</span>
														</div>
													</div>
												</li>
											</ul>

											<!--actions-->
											<div class="actions">
												<button class="btn-checkout" title="Checkout" type="button"
													onClick="">
													<span>Checkout</span>
												</button>
												<a href="#" class="view-cart"><span>View Cart</span></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-6 col-md-4 col-sm-4 col-xs-12 jtv-logo-box">
							<!-- Header Logo -->
							<div class="logo">
								<a title="eCommerce" href="index.html"><img alt="eCommerce"
									src="../images/logo.png"> </a>
							</div>
							<!-- End Header Logo -->
						</div>
						<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 hidden-xs">
							<!-- <div class="search-box">
								<form action="cat" method="POST" id="search_mini_form"
									name="Categories">
									<input type="text" placeholder="Search here..." maxlength="70"
										name="search" id="search">
									<button type="button" class="search-btn-bg"
										onclick="searchShop()">
										<span class="glyphicon glyphicon-search"></span>&nbsp;
									</button>
								</form>
							</div> -->
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- end header -->

		<!-- Navigation -->

		<nav>
			<div class="container">
				<div class="mm-toggle-wrap">
					<div class="mm-toggle">
						<i class="fa fa-align-justify"></i><span class="mm-label">Menu</span>
					</div>
				</div>
				<div class="nav-inner">
					<!-- BEGIN NAV -->
					<ul id="nav" class="hidden-xs">
						<li class="drop-menu"><a href="../index"
							class="level-top active"><span>Home</span></a></li>
						<li class="drop-menu"><a href="grid"><span>Shop
									Grid</span></a></li>
						<li class="drop-menu"><a href="single_product.html"><span>Single
									Product</span></a></li>
						<li class="mega-menu"><a class="level-top"
							href="shop_grid.html"><span>Love & Romance</span></a>
							<div class="jtv-menu-block-wrapper">
								<div class="jtv-menu-block-wrapper2">
									<div class="nav-block jtv-nav-block-center">
										<div class="col-1">
											<ul class="level0">
												<li class="parent item"><a href="shop_grid.html"><span>Wedding
															Flowers</span></a>
													<ul class="level1">
														<li><a href="shop_grid.html"><span>Toaster
																	Crossbody</span></a></li>
														<li><a href="shop_grid.html"><span>Piper
																	Bag</span></a></li>
														<li><a href="shop_grid.html"><span>Leather
																	Bag</span></a></li>
														<li><a href="shop_grid.html"><span>Canvas
																	Bag</span></a></li>
													</ul></li>
												<li class="parent item"><a href="shop_grid.html"><span>Birthday
															Flowers</span></a>
													<ul class="level1">
														<li><a href="shop_grid.html"><span>Travel
																	Accessories</span></a></li>
														<li><a href="shop_grid.html"><span>Gym
																	Bags</span></a></li>
														<li><a href="shop_grid.html"><span>Fashion
																	Waist Packs</span></a></li>
														<li><a href="shop_grid.html"><span>Messenger
																	Bags</span></a></li>
													</ul></li>
												<li class="parent item"><a href="shop_grid.html"><span>Winter
															Flowers</span></a>
													<ul class="level1">
														<li><a href="shop_grid.html"><span>Travel
																	Duffels</span></a></li>
														<li><a href="shop_grid.html"><span>Umbrellas</span></a>
														</li>
														<li><a href="shop_grid.html"><span>Waist
																	Packs</span></a></li>
														<li><a href="shop_grid.html"><span>Travel
																	Gear</span></a></li>
													</ul></li>
												<li class="parent item"><a href="shop_grid.html"><span>Party
															Flowers</span></a>
													<ul class="level1">
														<li><a href="shop_grid.html"><span>Luggage</span></a>
														</li>
														<li><a href="shop_grid.html"><span>Briefcases</span></a>
														</li>
														<li><a href="shop_grid.html"><span>Bowling</span></a>
														</li>
														<li><a href="shop_grid.html"><span>Bucket
																	Bag</span></a></li>
													</ul></li>
												<li class="parent item"><a href="shop_grid.html"><span>Valentine
															Flowers</span></a>
													<ul class="level1">
														<li><a href="shop_grid.html"><span>Crossbody
																	Bag</span></a></li>
														<li><a href="shop_grid.html"><span>Clutch
																	Handbag</span></a></li>
														<li><a href="shop_grid.html"><span>Hobo
																	Shoulder</span></a></li>
														<li><a href="shop_grid.html"><span>Saddle
																	Bag</span></a></li>
													</ul></li>
												<li class="parent item"><a href="shop_grid.html"><span>Window
															plants</span></a>
													<ul class="level1">
														<li><a href="shop_grid.html"><span>Wallet
																	Wristlet</span></a></li>
														<li><a href="shop_grid.html"><span>Solo
																	Premium </span></a></li>
														<li><a href="shop_grid.html"><span>Laptop
																	Bags</span></a></li>
														<li><a href="shop_grid.html"><span>Belts</span></a></li>
													</ul></li>
											</ul>
										</div>
										<div class="col-2">
											<div class="jtv-nav-image1">
												<a title="" href="#"><img alt="menu_image"
													src="../images/menu-img1.jpg"> </a>
											</div>
										</div>
									</div>
								</div>
							</div></li>
						<li class="mega-menu"><a class="level-top"
							href="shop_grid.html"><span>Occasion</span></a>
							<div class="jtv-menu-block-wrapper">
								<div class="jtv-menu-block-wrapper2">
									<div class="nav-block jtv-nav-block-center">
										<ul class="level0">
											<li class="parent item"><a href="shop_grid.html"><span>Flower
														types</span></a>
												<ul class="level1">
													<li><a href="shop_grid.html"><span>Elegant
														</span></a></li>
													<li><a href="shop_grid.html"><span>sassy
																&amp; chic</span></a></li>
													<li><a href="shop_grid.html"><span>Women's
																Satchel</span></a></li>
													<li><a href="shop_grid.html"><span>Shoulder
																Bag</span></a></li>
												</ul></li>
											<li class="parent item"><a href="shop_grid.html"><span>Kinds
														of flowers</span></a>
												<ul class="level1">
													<li><a href="shop_grid.html"><span>fashion
																Backpack</span></a></li>
													<li><a href="shop_grid.html"><span>Rose
																Gold Saffiano</span></a></li>
													<li><a href="shop_grid.html"><span>Black
																Velvet</span></a></li>
													<li><a href="shop_grid.html"><span>Leather
																Handbags</span></a></li>
												</ul></li>
											<li class="parent item"><a href="shop_grid.html"><span>Annual
														plants</span></a>
												<ul class="level1">
													<li><a href="shop_grid.html"><span>Sling
																Bag</span></a></li>
													<li><a href="shop_grid.html"><span>Diaper
																Bags</span></a></li>
													<li><a href="shop_grid.html"><span>Laptop
																Backpack</span></a></li>
													<li><a href="shop_grid.html"><span>Benetton
																Black </span></a></li>
												</ul></li>
											<li class="parent item"><a href="shop_grid.html"><span>Modern
														roses</span></a>
												<ul class="level1">
													<li><a href="shop_grid.html"><span>Graphite
																Croco</span></a></li>
													<li><a href="shop_grid.html"><span>Swiss
																Military Red</span></a></li>
													<li><a href="shop_grid.html"><span>Hidesign</span></a>
													</li>
													<li><a href="shop_grid.html"><span>Benetton</span></a>
													</li>
												</ul></li>
											<li class="parent item"><a href="shop_grid.html"><span>Asiatic
														Lily</span></a>
												<ul class="level1">
													<li><a href="shop_grid.html"><span>Travel
																Blue</span></a></li>
													<li><a href="shop_grid.html"><span>Charles
																& Keith</span></a></li>
													<li><a href="shop_grid.html"><span>Clutches</span></a>
													</li>
													<li><a href="shop_grid.html"><span>wristlets</span></a>
													</li>
												</ul></li>
											<li class="parent item"><a href="shop_grid.html"><span>Corporate</span></a>
												<ul class="level1">
													<li><a href="shop_grid.html"><span>Annual
																plants</span></a></li>
													<li><a href="shop_grid.html"><span>Orchids</span></a>
													</li>
													<li><a href="shop_grid.html"><span>NeoStrata</span></a>
													</li>
													<li><a href="shop_grid.html"><span>GoodSkin
																Labs</span></a></li>
												</ul></li>
										</ul>
									</div>
									<div class="jtv-nav-banner">
										<div class="jtv-banner-box">
											<div class="jtv-nav-banner-img">
												<a href="#"><img src="../images/menu-img2.jpg"
													alt="Handbag"> </a>
											</div>
										</div>
										<div class="jtv-banner-box">
											<div class="jtv-nav-banner-img">
												<a href="#"><img src="../images/menu-img3.jpg"
													alt="Handbag"> </a>
											</div>
										</div>
										<div class="jtv-banner-box jtv-banner-box_last">
											<div class="jtv-nav-banner-img">
												<a href="#"><img src="../images/menu-img4.jpg"
													alt="Handbag"> </a>
											</div>
										</div>
									</div>
								</div>
							</div></li>
						<li class="mega-menu"><a class="level-top"
							href="shop_grid.html"><span>Flowers</span></a>
							<div class="jtv-menu-block-wrapper">
								<div class="jtv-menu-block-wrapper2">
									<div class="nav-block jtv-nav-block-center">
										<ul class="level0">
											<li class="parent item"><a href="shop_grid.html"><span>Christmas
														Bouquets</span></a>
												<ul class="level1">
													<li><a href="shop_grid.html"><span>Funeral</span></a>
													</li>
													<li><a href="shop_grid.html"><span>Get Well</span></a>
													</li>
													<li><a href="shop_grid.html"><span>Lady
																Dior Mascara</span></a></li>
													<li><a href="shop_grid.html"><span>GoodSkin
																Labs</span></a></li>
												</ul></li>
											<li class="parent item"><a href="shop_grid.html"><span>Birthday
														Flowers</span></a>
												<ul class="level1">
													<li><a href="shop_grid.html"><span>Popular
																Belief</span></a></li>
													<li><a href="shop_grid.html"><span>Window
																plants</span></a></li>
													<li><a href="shop_grid.html"><span>Bushes</span></a></li>
													<li><a href="shop_grid.html"><span>Trees</span></a></li>
												</ul></li>
											<li class="parent item"><a href="shop_grid.html"><span>Anniversary
														Flowers</span></a>
												<ul class="level1">
													<li><a href="shop_grid.html"><span>Aliquam
																congue</span></a></li>
													<li><a href="shop_grid.html"><span>Sit amet
																conse</span></a></li>
													<li><a href="shop_grid.html"><span>Sed do
																eiusmod</span></a></li>
													<li><a href="shop_grid.html"><span>Labore
																et dolore</span></a></li>
												</ul></li>
											<li class="parent item"><a href="shop_grid.html"><span>Family
														flowers</span></a>
												<ul class="level1">
													<li><a href="shop_grid.html"><span>Herbarium</span></a>
													</li>
													<li><a href="shop_grid.html"><span>Tulips</span></a></li>
													<li><a href="shop_grid.html"><span>Green
																roses</span></a></li>
													<li><a href="shop_grid.html"><span>Kinds of
																flowers</span></a></li>
												</ul></li>
											<li class="parent item"><a href="shop_grid.html"><span>Corporate</span></a>
												<ul class="level1">
													<li><a href="shop_grid.html"><span>Lily</span></a></li>
													<li><a href="shop_grid.html"><span>Orchids</span></a>
													</li>
													<li><a href="shop_grid.html"><span>Asiatic
																Lily</span></a></li>
													<li><a href="shop_grid.html"><span>Modern
																roses</span></a></li>
												</ul></li>
											<li class="parent item"><a href="shop_grid.html"><span>Congratulation</span></a>
												<ul class="level1">
													<li><a href="shop_grid.html"><span>Toaster
																Crossbody</span></a></li>
													<li><a href="shop_grid.html"><span>Piper
																Bag</span></a></li>
													<li><a href="shop_grid.html"><span>Leather
																Bag</span></a></li>
													<li><a href="shop_grid.html"><span>Canvas
																Bag</span></a></li>
												</ul></li>
										</ul>
									</div>
								</div>
							</div></li>
						<li class="mega-menu"><a class="level-top"
							href="shop_grid.html"><span>Sympathy</span></a>
							<div class="jtv-menu-block-wrapper">
								<div class="jtv-menu-block-wrapper2">
									<div class="nav-block jtv-nav-block-center jtv-menu-box-left">
										<ul class="level0">
											<li class="parent item"><a href="shop_grid.html"><span>Green
														roses</span></a>
												<ul class="level1">
													<li><a href="shop_grid.html"><span>Sed in
																dui</span></a></li>
													<li><a href="shop_grid.html"><span>Proin
																lobortis</span></a></li>
													<li><a href="shop_grid.html"><span>Ut vitae
																neque</span></a></li>
													<li><a href="shop_grid.html"><span>Ac
																egestas neque</span></a></li>
												</ul></li>
											<li class="parent item"><a href="shop_grid.html"><span>Herbarium</span></a>
												<ul class="level1">
													<li><a href="shop_grid.html"><span>Vivamus
																molesite</span></a></li>
													<li><a href="shop_grid.html"><span>Fusce
																condimentum</span></a></li>
													<li><a href="shop_grid.html"><span>Nulla
																dapibus</span></a></li>
													<li><a href="shop_grid.html"><span>Litora
																torquent</span></a></li>
												</ul></li>
											<li class="parent item"><a href="shop_grid.html"><span>Tulips</span></a>
												<ul class="level1">
													<li><a href="shop_grid.html"><span>Dui ac
																pretium</span></a></li>
													<li><a href="shop_grid.html"><span>Phasellus
																tempus</span></a></li>
													<li><a href="shop_grid.html"><span>Incididunt
																ut</span></a></li>
													<li><a href="shop_grid.html"><span>Elit sed
																do</span></a></li>
												</ul></li>
											<li class="parent item"><a href="shop_grid.html"><span>Annual
														plants</span></a>
												<ul class="level1">
													<li><a href="shop_grid.html"><span>Proin
																viverra</span></a></li>
													<li><a href="shop_grid.html"><span>Curabitur
																rhoncus</span></a></li>
													<li><a href="shop_grid.html"><span>Lacus
																volutpat</span></a></li>
													<li><a href="shop_grid.html"><span>Conse
																ctetur</span></a></li>
												</ul></li>
										</ul>
									</div>
									<div class="nav-block nav-block-right std jtv-menu-box-right">
										<img src="../images/menu-img5.jpg" alt="menu img">
									</div>
								</div>
							</div></li>
						<li class="mega-menu"><a class="level-top" href="#"><span>Blog</span></a>
						</li>
						<li class="nav-custom-link mega-menu"><a href="#"
							class="level-top"> <span>Specials</span>
						</a>
							<div class="jtv-menu-block-wrapper custom-menu">
								<div class="header-nav-dropdown-wrapper">
									<div class="jtv-custom-box">
										<i class="fa fa-laptop"></i>
										<h4 class="heading">100% Responsive Design</h4>
										<p>Sed ut perspiciatis unde omnis iste natus error sit
											voluptatem accusantium doloremque laudantium.</p>
									</div>
									<div class="jtv-custom-box">
										<i class="fa fa-book"></i>
										<h4 class="heading">Easy Document</h4>
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing
											elit. Duis dignissim erat ut laoreet pharetra.</p>
									</div>
									<div class="jtv-custom-box">
										<i class="fa fa-fort-awesome"></i>
										<h4 class="heading">Awesome Icon Fonts</h4>
										<p>Ut enim ad minim veniam, quis nostrud exercitation
											ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
									</div>
									<div class="jtv-custom-box">
										<i class="fa fa-home"></i>
										<h4 class="heading">2 Layout Home Pages</h4>
										<p>Duis aute irure dolor in reprehenderit in voluptate
											velit. Lorem ipsum dolor sit amet, consectetur adipiscing
											elit.</p>
									</div>
								</div>
							</div></li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- end nav -->

		<!-- Breadcrumbs -->
		<div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col-xs-12">
						<ul>
							<li class="home"><a href="index.html"
								title="Go to Home Page">Home</a> <span>/</span></li>
							<!-- <li> <a href="shop_grid.html" title="">Occasion</a> <span>/ </span> </li>
            <li> <a href="shop_grid.html" title="">Corporate</a> <span>/</span> </li> -->
							<li><strong>Search</strong></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- Breadcrumbs End -->

		<!-- Main Container -->
		<section class="main-container col2-left-layout">
			<div class="container">
				<div class="row">
					<div class="col-sm-9 col-xs-12 col-sm-push-3">

						<!-- <div id='Container'></div>
						<div id="tip"></div> -->
						
						<!-- 此处注释的是轮播图 -->
						<!-- <div class="category-description std">
            <div class="slider-items-products">
              <div id="category-desc-slider" class="product-flexslider hidden-buttons">
                <div class="slider-items slider-width-col1 owl-carousel owl-theme"> 
                  
                  Item
                  <div class="item"> <a href="#"><img alt="" src="../images/category-img1.jpg"></a>
                    <div class="cat-img-title cat-bg cat-box">
                      <div class="small-tag">Flowers 2018</div>
                      <h2 class="cat-heading">New special collection</h2>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                    </div>
                  </div>
                  End Item 
                  
                  Item
                  <div class="item"> <a href="#"><img alt="" src="../images/category-img2.jpg"></a>
                    <div class="cat-img-title cat-bg cat-box">
                      <div class="small-tag">Big Sale</div>
                      <h2 class="cat-heading">Birthday Flowers</h2>
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </p>
                    </div>
                    End Item 
                    
                  </div>
                </div>
              </div>
            </div>
          </div> -->
						<article class="col-main" id="col-main-grid">
							<h2 class="page-heading">
								<span class="page-heading-title">Shops</span>
							</h2>
							
							<div id='Container'></div>
							<div id="tip"></div>
							
							
							
							<div class="toolbar">
								<div class="row">
								
									<div id="search-div" >
									
										 <div class="search-box" style="vertical-align:top">
											<form action="cat" method="POST" id="search_mini_form"
												name="Categories">
												<input type="text" placeholder="Search here..." maxlength="70"
													name="search" id="search">
												<button type="button" class="search-btn-bg" onclick="searchShop()" >
													<span class="glyphicon glyphicon-search"></span>&nbsp;
												</button>
											</form>
										</div>
										
										<span class="search-choose">
											<select id="input-search" class="form-control col-sm-3">
												<option value="0" selected="selected">Name</option>
												<option value="1">City</option>
												<option value="2">Address</option>
												<option value="3">Tag</option>
											</select>
										</span>
									
									 
									</div>
									<div id="sort-div" style="vertical-align:top">
									
										<span class="control-label" for="input-sort">Sort By:</span>
									
									<span >
										<select id="input-sort" class="form-control col-sm-3">
											<option value="0" selected="selected">Default</option>
											<option value="1">Review (Highest)</option>
											<option value="2">Stars (Highest)</option>
											<option value="3">Distance (&lt;=3km)</option>
											<option value="4">Distance (3km-5km)</option>
											<option value="5">Distance (&gt;=5km)</option>
										</select>
									</span>
									</div>
								
								
								
								
								
									<div class="col-md-4 col-sm-5">
									
									<!-- <div class="search-box">
										<form action="cat" method="POST" id="search_mini_form"
											name="Categories">
											<input type="text" placeholder="Search here..." maxlength="70"
												name="search" id="search">
											<button type="button" class="search-btn-bg"
												onclick="searchShop()">
												<span class="glyphicon glyphicon-search"></span>&nbsp;
											</button>
										</form>
									</div> -->
									
										<!-- <div class="btn-group">
											<div id="grid-view" class="btn btn-default active"
												data-toggle="tooltip" title="Grid">
												<a href="shop_grid.html"><i class="fa fa-th"></i></a>
											</div>

										</div> -->
									</div>
									<!--  !!!!!!-->
									<!-- <div class="col-sm-2 text-right sort-by">
										<label class="control-label" for="input-sort">Sort By:</label>
									</div>
									<div class="col-md-3 col-sm-2 text-right">
										<select id="input-sort" class="form-control col-sm-3">
											<option value="0" selected="selected">Default</option>
											<option value="1">Review (Highest)</option>
											<option value="2">Stars (Highest)</option>
											<option value="3">Distance (&lt;=3km)</option>
											<option value="4">Distance (3km-5km)</option>
											<option value="5">Distance (&gt;=5km)</option>
										</select>
									</div> -->
									
									<!-- <div class="col-sm-1 text-right show-limit">
										<label class="control-label" for="input-limit">Show:</label>
									</div>
									<div class="col-sm-2 text-right">
										<select id="input-limit" class="form-control">
											<option value="" selected="selected">15</option>
											<option value="">20</option>
											<option value="">30</option>
											<option value="">40</option>
											<option value="">50</option>
										</select>
									</div> -->
									
								</div>
								
								<div id="search-tag" >
									<div id="search-history" style="font-size: 14px;weight:normal;">
										<b>History Search:</b>
											
										<c:forEach items="${historySearchList}" var="historySearchItem" varStatus="i"> 
											<span id="tag_${i.index}" onclick="searchShopByClick('${historySearchItem}')">
												<em class="con1-${i.index}">${historySearchItem}</em>
											</span>
										</c:forEach>
										
									</div>
									<div id="search-hot" style="font-size: 14px;weight:normal;">
										<b>Hot Search:</b>
										<c:forEach items="${hotSearchList}" var="hotSearchItem" varStatus="i"> 
												<span id="tag_${i.index}" onclick="searchShopByClick('${hotSearchItem}')">
													<em class="con1-${i.index}">${hotSearchItem}</em>
												</span>
											</c:forEach>
									</div>
								</div>
								
							</div>
							<div class="category-products">
								<ul class="products-grid">

									<!-- Fill with shop grid -->

								</ul>
							</div>
							<div class="toolbar">
								<div class="row">
									<div class=" text-left">
										<ul class="pagination">
											<li class="active"><a href="#" onclick="pageControl(1)">1</a></li>
											<c:forEach var="j" begin="2" end="${pageNum}">
												<li><a href="#" onclick="pageControl(${j})">${j}</a></li>
											</c:forEach>
											<!-- <li class="active"><span>1</span></li>
                    <li><a href="#">2</a></li> -->
											<li><a href="#">&gt;</a></li>
											<li><a href="#">&gt;|</a></li>
										</ul>
									</div>

								</div>
							</div>
						</article>
						<!--	///*///======    End article  ========= //*/// -->
					</div>
					<div class="sidebar col-sm-3 col-xs-12 col-sm-pull-9">
						<aside class="sidebar">
							<div class="block block-layered-nav">
								<%--<div class="block-title">Personal Info</div>
               <div class="block-content">
              	<!-- -----------------用户信息-----------------  -->
              	<!-- 头像 -->
              	<div id="div-center">
              		<!-- <div class="avatar-round"></div> -->
              	</div>
              	
              	
                <p id="user-title">${current_user.name}</p>
                <dl id="narrow-by-list">
                  <dt class="odd">Individual</dt>
                  <dd class="odd">
                    <ol>
                      <li> <a href="profile"><span class="choose-tag">Basic Profile</span> </a></li>
                      <li> <a href="security"><span class="choose-tag">Security</span> </a></li>
                      <li> <a href="favor"><span class="choose-tag">Individual Favor</span></a></li>
                    </ol>
                  </dd>
                  <dt class="even">Routine</dt>
                  <dd class="even">
                    <ol>
                      <li> <a class="choose-tag" href="#">"Like" Restaurant</a></li>
                      <li> <a class="choose-tag" href="#">My Comments</a></li>
                      <li> <a class="choose-tag" href="#">My Coupons</a></li>
                    </ol>
                  </dd>
                  
                </dl>
              </div> --%>


							</div>
							<div class="block product-price-range ">
								<div class="block-title">Price</div>
								<div class="block-content">
									<div class="slider-range">
										<div data-label-reasult="Range:" data-min="0" data-max="500"
											data-unit="$"
											class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"
											data-value-min="50" data-value-max="350">
											<div class="ui-slider-range ui-widget-header ui-corner-all"
												style="left: 10%; width: 60%;"></div>
											<span class="ui-slider-handle ui-state-default ui-corner-all"
												tabindex="0" style="left: 10%;"></span><span
												class="ui-slider-handle ui-state-default ui-corner-all"
												tabindex="0" style="left: 70%;"></span>
										</div>
										<div class="amount-range-price">Range: $10 - $550</div>
										<ul class="check-box-list">
											<li><input type="checkbox" id="p1" name="cc"> <label
												for="p1"> <span class="button"></span> $20 - $50<span
													class="count">(5)</span>
											</label></li>
											<li><input type="checkbox" id="p2" name="cc"> <label
												for="p2"> <span class="button"></span> $50 - $100<span
													class="count">(10)</span>
											</label></li>
											<li><input type="checkbox" id="p3" name="cc"> <label
												for="p3"> <span class="button"></span> $100 - $250<span
													class="count">(12)</span>
											</label></li>
										</ul>
									</div>
								</div>
							</div>
							<!-- <div class="block block-cart">
								<div class="block-title ">My Cart</div>
								<div class="block-content">
									<div class="summary">
										<p class="amount">
											There are <a href="#">3 items</a> in your cart.
										</p>
										<p class="subtotal">
											<span class="label">Cart Subtotal:</span> <span class="price">$227.99</span>
										</p>
									</div>
									<div class="ajax-checkout">
										<button class="button button-checkout" title="Submit"
											type="submit">
											<span>Checkout</span>
										</button>
									</div>
									<p class="block-subtitle">Recently added item(s)</p>
									<ul>
										<li class="item"><a href="#" title="Product Title Here"
											class="product-image"><img
												src="../images/products/img10.jpg" alt="Product Title Here"></a>
											<div class="product-details">
												<div class="access">
													<a href="#" title="Remove This Item" class="jtv-btn-remove">
														<span class="icon"></span> Remove
													</a>
												</div>
												<strong>1</strong> x <span class="price">$99.99</span>
												<p class="product-name">
													<a href="#">Product Title Here</a>
												</p>
											</div></li>
										<li class="item"><a href="#" title="Product Title Here"
											class="product-image"><img
												src="../images/products/img01.jpg" alt="Product Title Here"></a>
											<div class="product-details">
												<div class="access">
													<a href="#" title="Remove This Item" class="jtv-btn-remove">
														<span class="icon"></span> Remove
													</a>
												</div>
												<strong>1</strong> x <span class="price">$88.00</span>
												<p class="product-name">
													<a href="#">Product Title Here</a>
												</p>

												access clearfix
											</div></li>
										<li class="item"><a href="#" title="Product Title Here"
											class="product-image"><img
												src="../images/products/img05.jpg" alt="Product Title Here"></a>
											<div class="product-details">
												<div class="access">
													<a href="#" title="Remove This Item" class="jtv-btn-remove">
														<span class="icon"></span> Remove
													</a>
												</div>
												<strong>1</strong> x <span class="price">$98.00</span>
												<p class="product-name">
													<a href="#">Product Title Here</a>
												</p>

												access clearfix
											</div></li>
									</ul>
								</div>
							</div> -->

							<div class="block block-tags">
								<div class="block-title">Popular Tags</div>
								<div class="block-content">
									<div class="tags-list">
										<a href="#">Clutches</a> <a href="#">Bag</a> <a href="#">Laptop
											bags</a> <a href="#">Luggage</a> <a href="#">Backpacks</a> <a
											href="#">Piper Bag</a>
									</div>
									<div class="actions">
										<a href="#" class="view-all">View All Tags</a>
									</div>
								</div>
							</div>
						</aside>
					</div>
				</div>
			</div>
		</section>
		<!-- Main Container End -->

		<!-- Brand Logo -->
		<div class="brand-logo">
			<div class="container">
				<div class="slider-items-products">
					<div id="brand-logo-slider"
						class="product-flexslider hidden-buttons">
						<div class="slider-items slider-width-col6">

							<!-- Item -->
							<div class="item">
								<a href="#"><img src="../images/brand1.png" alt="brand logo">
								</a>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<a href="#"><img src="../images/brand2.png" alt="brand logo">
								</a>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<a href="#"><img src="../images/brand3.png" alt="Image">
								</a>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<a href="#"><img src="../images/brand4.png" alt="brand logo">
								</a>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<a href="#"><img src="../images/brand5.png" alt="brand logo">
								</a>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<a href="#"><img src="../images/brand6.png" alt="brand logo">
								</a>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<a href="#"><img src="../images/brand7.png" alt="brand logo">
								</a>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<a href="#"><img src="../images/brand8.png" alt="brand logo">
								</a>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<a href="#"><img src="../images/brand9.png" alt="brand logo">
								</a>
							</div>
							<!-- End Item -->

							<!-- Item -->
							<div class="item">
								<a href="#"><img src="../images/brand10.png"
									alt="brand logo"> </a>
							</div>
							<!-- End Item -->

						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- our features -->
		<div class="our-features-box hidden-xs">
			<div class="container">
				<div class="row">
					<div class="col-md-3 col-xs-12 col-sm-6">
						<div class="feature-box first">
							<i class="icon-plane icons"></i>
							<div class="content">
								<h6>Fast same day delivery</h6>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-xs-12 col-sm-6">
						<div class="feature-box">
							<i class="icon-earphones-alt icons"></i>
							<div class="content">
								<h6>Support 24/7 For Clients</h6>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-xs-12 col-sm-6">
						<div class="feature-box">
							<i class="icon-like icons"></i>
							<div class="content">
								<h6>100% Satisfaction Guarantee</h6>
							</div>
						</div>
					</div>
					<div class="col-md-3 col-xs-12 col-sm-6">
						<div class="feature-box last">
							<i class="icon-tag icons"></i>
							<div class="content">
								<h6>Great Daily Deals Discount</h6>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer -->
		<footer>
			<div class="footer-inner">
				<div class="container">
					<div class="row">
						<div class="col-sm-4 col-xs-12 col-md-3">
							<div class="footer-links">
								<h4>Useful links</h4>
								<ul class="links">
									<li><a href="#" title="Product Recall">Product Recall</a></li>
									<li><a href="#" title="Gift Vouchers">Gift Vouchers</a></li>
									<li><a href="#" title="Returns &amp; Exchange">Returns
											&amp; Exchange</a></li>
									<li><a href="#" title="Shipping Options">Shipping
											Options</a></li>
									<li><a href="#" title="Help &amp; FAQs">Help &amp;
											FAQs</a></li>
									<li><a href="#" title="Order history">Order history</a></li>
								</ul>
							</div>
						</div>
						<div class="col-sm-4 col-xs-12 col-md-3">
							<div class="footer-links">
								<h4>Service</h4>
								<ul class="links">
									<li><a href="#">Account</a></li>
									<li><a href="#">Wishlist</a></li>
									<li><a href="#">Shopping Cart</a></li>
									<li><a href="#">Return Policy</a></li>
									<li><a href="#">Special</a></li>
									<li><a href="#">Lookbook</a></li>
								</ul>
							</div>
						</div>
						<div class="col-sm-4 col-xs-12 col-md-2">
							<div class="footer-links">
								<h4>Information</h4>
								<ul class="links">
									<li><a href="#">Sites Map </a></li>
									<li><a href="#">News</a></li>
									<li><a href="#">Trends</a></li>
									<li><a href="#">About Us</a></li>
									<li><a href="#">Contact Us</a></li>
									<li><a href="#">My Orders</a></li>
								</ul>
							</div>
						</div>
						<div class="col-xs-12 col-sm-12 col-md-4">
							<div class="footer-links">
								<div class="footer-newsletter">
									<h4>Subscribe to our news</h4>
									<form id="newsletter-validate-detail" method="post" action="#">
										<div class="newsletter-inner">
											<p>Subscribe to be the first to know about Sales, Events,
												and Exclusive Offers!</p>
											<input class="newsletter-email" name='Email'
												placeholder='Enter Your Email'>
											<button class="button subscribe" type="submit"
												title="Subscribe">Subscribe</button>
										</div>
									</form>
								</div>
								<div class="social">
									<h4>Follow Us</h4>
									<ul class="inline-mode">
										<li class="social-network fb"><a
											title="Connect us on Facebook" target="_blank" href="#"><i
												class="fa fa-facebook"></i></a></li>
										<li class="social-network googleplus"><a
											title="Connect us on Google+" target="_blank" href="#"><i
												class="fa fa-google-plus"></i></a></li>
										<li class="social-network tw"><a
											title="Connect us on Twitter" target="_blank" href="#"><i
												class="icon-social-twitter icons"></i></a></li>
										<li class="social-network linkedin"><a
											title="Connect us on Linkedin" target="_blank" href="#"><i
												class="fa fa-linkedin"></i></a></li>
										<li class="social-network rss"><a
											title="Connect us on rss" target="_blank" href="#"><i
												class="fa fa-rss"></i></a></li>
										<li class="social-network instagram"><a
											title="Connect us on Instagram" target="_blank" href="#"><i
												class="fa fa-instagram"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-top">
				<div class="container">
					<div class="row">
						<div style="text-align: center">
							<a href="index.html"><img src="../images/footer-logo.png"
								alt="logo"> </a>
						</div>
						<address>
							<p>
								<i class="fa fa-map-marker"></i>Company, 12/34 - West 21st
								Street, New York, USA
							</p>
							<p>
								<i class="fa fa-mobile"></i><span>+ (800) 0123 456 789</span>
							</p>
							<p>
								<i class="fa fa-envelope"></i><span><a
									href="mailto:email@domain.com">support@themes.com</a></span>
							</p>
						</address>
					</div>
				</div>
			</div>
			<div class="footer-bottom">
				<div class="container">
					<div class="row">
						<div class="col-sm-5 col-xs-12 coppyright">
							Copyright &copy; 2018.Company name All rights reserved.<a
								target="_blank" href="http://www.17sucai.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
						</div>
						<div class="col-sm-7 col-xs-12 payment-accept">
							<ul>
								<li><a href="#"><img src="../images/payment-1.png"
										alt="Payment Card"></a></li>
								<li><a href="#"><img src="../images/payment-2.png"
										alt="Payment Card"></a></li>
								<li><a href="#"><img src="../images/payment-3.png"
										alt="Payment Card"></a></li>
								<li><a href="#"><img src="../images/payment-4.png"
										alt="Payment Card"></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>


	<!-- jquery js -->
	<script src="../js/jquery.min.js"></script>

	<!-- bootstrap js -->
	<script src="../js/bootstrap.min.js"></script>

	<!-- jquery-ui js -->
	<script src="../js/jquery-ui.js"></script>
	<!-- owl.carousel.min js -->
	<script src="../js/owl.carousel.min.js"></script>

	<!-- jtv-jtv-mobile-menu js -->
	<script src="../js/jtv-mobile-menu.js"></script>

	<!-- countdown js -->
	<script src="../js/countdown.js"></script>

	<!-- main js -->
	<script src="../js/main.js"></script>

	<script type="text/javascript">
	/***************************************
	由于Chrome、IOS10等已不再支持非安全域的浏览器定位请求，为保证定位成功率和精度，请尽快升级您的站点到HTTPS。
	***************************************/
   var map, geolocation,lat,lng;
	var isNull = 0;
	
    //加载地图，调用浏览器定位服务
    map = new AMap.Map('Container', {
        resizeEnable: true
    });
    map.plugin('AMap.Geolocation', function() {
        geolocation = new AMap.Geolocation({
            enableHighAccuracy: true,//是否使用高精度定位，默认:true
          showMarker: false,        //定位成功后在定位到的位置显示点标记，默认：true
            showCircle: true,        //定位成功后用圆圈表示定位精度范围，默认：true
            timeout: 10000,          //超过10秒后停止定位，默认：无穷大
            buttonOffset: new AMap.Pixel(10, 20),//定位按钮与设置的停靠位置的偏移量，默认：Pixel(10, 20)
            zoomToAccuracy: true,      //定位成功后调整地图视野范围使定位位置及精度范围视野内可见，默认：false
            buttonPosition:'RB',
            zoom: 13
        });
        map.setLang("zh_en");
        map.addControl(geolocation);
        geolocation.getCurrentPosition();
        AMap.event.addListener(geolocation, 'complete', onComplete);//返回定位信息
        AMap.event.addListener(geolocation, 'error', onError);      //返回定位出错信息
    });
    
    //定位点
    var marker = new AMap.Marker({
        draggable: true,
        cursor: 'move',
        raiseOnDrag: false,
        offset: new AMap.Pixel(-14, -34),//相对于基点的位置
        icon: new AMap.Icon({  //复杂图标
            size: new AMap.Size(27, 36),//图标大小
            image: "http://webapi.amap.com/images/custom_a_j.png", //大图地址
            imageOffset: new AMap.Pixel(-28, 0)//相对于大图的取图位置
        })
    });
    
    //测试点击
    map.on('click',function(e){
        marker.setPosition(e.lnglat);
        lng=e.lnglat.getLng();
        lat=e.lnglat.getLat();
        $.ajax({
			url: "http://localhost:8013/rrsWeb/shop/distance",
			async:false,
			type: "POST",
			data: {
				"lat":lat,
				"lng":lng
			},  
			success: function(res){
				
			},
			error: function(err){
				console.error(err);
				console.log("bbb");
			}
			}); 
        //alert('您在[ '+e.lnglat.getLng()+','+e.lnglat.getLat()+' ]的位置点击了地图');
    })
    
    
    //解析定位结果
    function onComplete(data) {
        var str=['定位成功'];
        lat=data.position.getLat();
        lng=data.position.getLng();
        str.push('经度：' + lng);
        str.push('纬度：' + lat);
        
        marker.setPosition(new AMap.LngLat(data.position.getLng(),data.position.getLat()))
        
        if(data.accuracy){
             str.push('精度：' + data.accuracy + ' 米');
        }//如为IP精确定位结果则没有精度信息
        str.push('是否经过偏移：' + (data.isConverted ? '是' : '否'));
        //document.getElementById('tip').innerHTML = str.join('<br>');
        $.ajax({
			url: "http://localhost:8013/rrsWeb/shop/distance",
			async:false,
			type: "POST",
			data: {
				"lat":lat,
				"lng":lng
			},  
			success: function(res){
				//alert("计算成功");
			},
			error: function(err){
				console.error(err);
				console.log("bbb");
			}
			}); 
    }
    //解析定位错误信息
    function onError(data) {
        document.getElementById('tip').innerHTML = '定位失败';
    }
    marker.setMap(map);

	var curGrid;
	var curGridNum = 0;
	var markers = [];

	//在地图上展示搜索出来的餐馆
	function showShopMarkers(curGrid){
		
		map.remove(markers);
	    for (var i = 0, marker; i < curGrid.length; i++) {
	    	var obj = curGrid[i];
	    	
	        marker = new AMap.Marker({
	            map: map,
	            position: [obj.longitude, obj.latitude]
	        });
	        markers.push(marker);
	        marker.setTitle(obj.name);
	    }
	}

	//初始化页面
	$().ready( function() {
		var page = 1;
	 	$.ajax({
		url: "http://localhost:8013/rrsWeb/shop/showGrid?page="+page,
		type: "POST",
		data: {
			"num":15,
		},  
		success: function(res){
			curGrid = JSON.parse(res);
			
			showGrid(curGrid);
			
			console.log("一共有");
			console.log(curGrid.length);
		},
		error: function(err){
			console.error(err);
			console.log("bbb");
		}
		}); 
	 	getUserId();
	} ); 
	
	//展示商店
	function showGrid(curGrid){
		
		console.log("1次");
		
		$(".products-grid li").remove();
		//$(".pagination li").remove();
		
		var htmlStr = "";
		var pageStr = "";
		
		/* for(var i = 0 ; i<curGrid.length/15 ; i++){
			if(i == 0){
		    	pageStr += "<li class=\"active\" href=\"#\"><span>1</span></li>"
		    } else {
		    	pageStr += "<li herf=\"#\"><span>"+(i+1)+"</span></li>"
		    }
		} */
		
		for(var i =0; i<curGrid.length; i++){
			
		    var obj = curGrid[i];
		    
		    htmlStr += "<li class=\"item col-lg-4 col-md-4 col-sm-4 col-xs-6\">";
		    htmlStr += "<div class=\"item-inner\">"
		    htmlStr += "<div class=\"item-img\">";
		    htmlStr += "<div class=\"item-img-info\"> <a class=\"product-image\" href=\"detail\" \>";
		    htmlStr += "<img alt=\"Product Title Here\" onclick=\"goToDetail(\'"+obj.id+"\',\'"+obj.name+"\')\" title=\""+obj.name + "\" src=\"" +obj.img[0]+"\">";
		    //htmlStr += "<img alt=\"Product Title Here\" href=\"detail?id=123\" title=\""+obj.name + "\" src=\"" +obj.img+"\">";
		    
		    htmlStr += "</a>";
		    htmlStr += "<div class=\"new-label new-top-left\">hot</div>";
		    htmlStr += "</div>";
		    htmlStr += "<div>";
		    htmlStr += " <div class=\"item-info\">";
		    htmlStr += "<div class=\"info-inner\">";
		    htmlStr += "<div class=\"item-title\"> <a href=\"detail\" onclick=\"goToDetail(\'"+obj.id+"\',\'"+obj.name+"\')\ title=\""+obj.name + "\">" + obj.name +"</a> </div>";
		    htmlStr += "<div class=\"item-content\">";
		    htmlStr += "<div class=\"rating\">";
		    
		    var s = Math.floor(obj.stars);
		    for(var j = 0 ; j < s ; j++){
		    	htmlStr += "<i class=\"fa fa-star\"></i>";
		    }
		    for(var j = s ; j < 5 ; j++){
		    	htmlStr += "<i class=\"fa fa-star-o\"></i>";
		    }    
		    htmlStr += "</div>";
		    htmlStr += "<div class=\"item-price\">";
		    htmlStr += "<div class=\"price-box\"> <span class=\"regular-price\"> <span class=\"price\" >"+ obj.review_count +" reviews </span> </span> </div>";
		    htmlStr += "</div>";
		    htmlStr += "</div>";
		    htmlStr += "</div>";
		    htmlStr += "</div>";
		    htmlStr += "</div>";
		    htmlStr += "</li>";
		  
		};
		
		
		pageStr += "<li><a href=\"#\">&gt;</a></li> <li><a href=\"#\">&gt;|</a></li>";
		
		$(".products-grid").append(htmlStr); 

		
		showShopMarkers(curGrid);
	}
	
	//重新画页码栏
	function reloadPageNum(pageNum){
	 		
		$(".pagination li").remove();
		var pageStr = "";
			
		for(var i = 0 ; i<pageNum ; i++){
			if(i == 0){
				
		    	
		    	pageStr += "<li  class=\"active\"><a href=\"#\" onclick=\"pageControl("+(i+1)+")\">"+(i+1)+"</a></li>";
		    } else {
		    	pageStr += "<li> <a href=\"#\" onclick=\"pageControl("+(i+1)+")\">"+(i+1)+"</a></li>";
		    }
		} 
		
		pageStr += "<li><a href=\"#\">&gt;</a></li> ";
		pageStr += "<li><a href=\"#\">&gt;|</a></li>";
		$(".pagination").append(pageStr); 
	}
	    
	
	
	//用于搜索或排序后重载grid
	function reloadGrid(){
		$.ajax({
			url: "http://localhost:8013/rrsWeb/shop/showGrid?page="+1,
			async:false,
			type: "POST",
			data: {
				"num":15,
			},  
			success: function(res){
				curGrid = JSON.parse(res);
				
				showGrid(curGrid);
				//console.log("一共有");
				//console.log(curGrid.length);
				//console.log(curGrid[0].name);
			},
			error: function(err){
				console.error(err);
				console.log("bbb");
			}
			}); 
	}
	
	//搜索商店
	function searchShop(){
		var key=document.getElementById("search").value;
		var way=document.getElementById("input-search").value;
		console.log("aaaaaaaaaaa"+way);
		var pageNum = 0;
		$.ajax({

			url: "http://localhost:8013/rrsWeb/shop/searchGrid?key="+key+"&way="+way,
			async:false,
			type: "POST",
			data: {
				
			},  
			success: function(res){
				
				pageNum = res;
				if(pageNum == 0){
					alert("Found Noting");
					isNull = 1;
				} else {
					reloadPageNum(pageNum);
					isNull = 0;
				}

			},
			error: function(err){
				console.error(err);
				console.log("bbb");
			}
		}); 
		
		if(isNull == 0){
			reloadGrid();
			
		}
		isNull = 0;
		
	}
	
	//排序框的响应事件
	$("#input-sort").on("change",function(){
		
		var sort=$("option:selected",this).val();
		var pageNum = 0;
		$.ajax({
			url: "http://localhost:8013/rrsWeb/shop/sortShop?sort="+sort,
			async:false,
			type: "POST",
			data: {
				"lat":lat,
				"lng":lng
			},  
			success: function(res){
				console.log("dddd");
				pageNum = res;
				
				if(pageNum == 0){
					alert("Found Noting");
					//isNull = 1;
					reloadPageNum(pageNum);
				} else {
					reloadPageNum(pageNum);
					//isNull = 0;
				}
				
				
				
				console.log(pageNum);
			},
			error: function(err){
				console.error(err);
			}
		}); 
		
		reloadGrid();
	
	});
	
	//翻页
	function pageControl(num){
	
		var page=num;
		
	 	$.ajax({
		url: "http://localhost:8013/rrsWeb/shop/showGrid?page="+page,
		type: "POST",
		data: {
			"num":15,
		},  
		success: function(res){
			curGrid = JSON.parse(res);
			console.log("qqq");
			showGrid(curGrid);
		
			showShopMarkers(curGrid);
		}
		}); 
	 	
	 	//页码显示颜色
	 	$(".pagination li").click(function () {
	
	        if($(this).hasClass("active")){
	           
	        }else {
	            $(this).addClass("active").siblings().removeClass("active");
	        }
	    });
	}
    
//跳转到详情页
function goToDetail(id,name){
	var business_id = "";
	business_id = id;
	console.log(business_id);
	console.log(name);
	
	$.ajax({
		url: "http://localhost:8013/rrsWeb/shop/goToDetail?business_id="+business_id,
		type: "POST",
		async:false,
		data: {
			
		},  
		success: function(res){
			console.log("ggg");	
		},
		error: function(err){
			console.error(err);
			console.log("bbb");
		}
	}); 
}

//搜索商店
function searchShopByClick(searchKey){
	var key=searchKey;
	var pageNum = 0;
	$.ajax({
		url: "http://localhost:8013/rrsWeb/shop/searchGrid?key="+key+"&way=0",
		async:false,
		type: "POST",
		data: {
			
		},  
		success: function(res){			
			pageNum = res;
			if(pageNum == 0){
				alert("Found Noting");
				isNull = 1;
			} else {
				reloadPageNum(pageNum);
				isNull = 0;
			}

		},
		error: function(err){
			console.error(err);
			console.log("bbb");
		}
	}); 	
	if(isNull == 0){
		reloadGrid();
		document.getElementById("search").value = key;
	}
	isNull = 0;	
}

function getUserId(){
	var id = document.getElementById("user_id").innerText;
	console.log(id);
}

</script>

<!-- 页面加载 -->
<script type="text/javascript">         
    // 等待所有加载
    $(window).load(function(){
        $('body').addClass('loaded');
        $('#loader-wrapper .load_title').remove();
    }); 
</script> 

</body>
</html>
