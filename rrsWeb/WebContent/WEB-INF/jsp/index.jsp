<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html> -->


<!DOCTYPE html>
<html lang="zxx">
<head>
<!-- Basic page needs -->
<meta charset="utf-8">
<!--[if IE]>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<![endif]-->
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title></title>
<meta name="description" content="">
<meta name="keywords" content="">

<!-- Mobile specific metas  -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon  -->
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

<!-- CSS Style -->

<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/index-style.css">
<link rel="stylesheet" href="css/loader.css">
<!-- 高德地图 -->
<script type="text/javascript"
	src="http://webapi.amap.com/maps?v=1.3&key=9ec7df578b3d28f30ad9d6909ef6fbf6"></script>
<!-- 高德地图 -->
<div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-back"></div>
<!--     <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div> -->
    <div class="load_title">Loading...<br><span>111</span></div>
</div>

</head>

<body class="cms-index-index cms-home-page">

<!-- mobile menu -->

<div id="jtv-mobile-menu">
  <ul>
    <li>
      <div class="jtv-search-mob">
        <form id="search1" name="search">
          <div class="input-group">
            <div class="input-group-btn">
              <button class="btn btn-default" type="submit"><i class="fa fa-search"></i> </button>
            </div>
            <input type="text" class="form-control simple" placeholder="Search ..." name="srch-term" id="srch-term">
          </div>
        </form>
      </div>
    </li>
    <li><a href="index.html">Home</a></li>
    <li><a href="shop/grid">Shop Grid</a></li>
    <li> <a href="single_product.html">Single Product</a> </li>
    <li><a href="#">Love & Romance</a>
      <ul>
        <li> <a href="shop_grid.html"><span>Wedding Flowers</span></a>
          <ul>
            <li> <a href="shop_grid.html"><span>Toaster Crossbody</span></a> </li>
            <li> <a href="shop_grid.html"><span>Piper Bag</span></a> </li>
            <li> <a href="shop_grid.html"><span>Leather Bag</span></a> </li>
            <li> <a href="shop_grid.html"><span>Canvas Bag</span></a> </li>
          </ul>
        </li>
        <li> <a href="shop_grid.html"><span>Birthday Flowers</span></a>
          <ul>
            <li> <a href="shop_grid.html"><span>Travel Accessories</span></a> </li>
            <li> <a href="shop_grid.html"><span>Gym Bags</span></a> </li>
            <li> <a href="shop_grid.html"><span>Fashion Waist Packs</span></a> </li>
            <li> <a href="shop_grid.html"><span>Messenger Bags</span></a> </li>
          </ul>
        </li>
        <li> <a href="shop_grid.html"><span>Winter Flowers</span></a>
          <ul>
            <li> <a href="shop_grid.html"><span>Travel Duffels</span></a> </li>
            <li> <a href="shop_grid.html"><span>Umbrellas</span></a> </li>
            <li> <a href="shop_grid.html"><span>Waist Packs</span></a> </li>
            <li> <a href="shop_grid.html"><span>Travel Gear</span></a> </li>
          </ul>
        </li>
        <li> <a href="shop_grid.html"><span>Party Flowers</span></a>
          <ul>
            <li> <a href="shop_grid.html"><span>Luggage</span></a> </li>
            <li> <a href="shop_grid.html"><span>Briefcases</span></a> </li>
            <li> <a href="shop_grid.html"><span>Bowling</span></a> </li>
            <li> <a href="shop_grid.html"><span>Bucket Bag</span></a> </li>
          </ul>
        </li>
        <li> <a href="shop_grid.html"><span>floral lattice bag</span></a>
          <ul>
            <li> <a href="shop_grid.html"><span>Crossbody Bag</span></a> </li>
            <li> <a href="shop_grid.html"><span>Clutch Handbag</span></a> </li>
            <li> <a href="shop_grid.html"><span>Hobo Shoulder</span></a> </li>
            <li> <a href="shop_grid.html"><span>Saddle Bag</span></a> </li>
          </ul>
        </li>
        <li> <a href="shop_grid.html"><span>Valentine Flowers</span></a>
          <ul>
            <li> <a href="shop_grid.html"><span>Wallet Wristlet</span></a> </li>
            <li> <a href="shop_grid.html"><span>Solo Premium </span></a> </li>
            <li> <a href="shop_grid.html"><span>Laptop Bags</span></a> </li>
            <li> <a href="shop_grid.html"><span>Belts</span></a> </li>
          </ul>
        </li>
      </ul>
    </li>
    <li><a href="shop_grid.html">Occasion</a>
      <ul>
        <li> <a href="shop_grid.html"><span>Steve Madden</span></a>
          <ul>
            <li> <a href="shop_grid.html"><span>Elegant </span></a> </li>
            <li> <a href="shop_grid.html"><span>sassy &amp; chic</span></a> </li>
            <li> <a href="shop_grid.html"><span>Women's Satchel</span></a> </li>
            <li> <a href="shop_grid.html"><span>Shoulder Bag</span></a> </li>
          </ul>
        </li>
        <li> <a href="shop_grid.html"><span>College Bags</span></a>
          <ul>
            <li> <a href="shop_grid.html"><span>fashion Backpack</span></a> </li>
            <li> <a href="shop_grid.html"><span>Rose Gold Saffiano</span></a> </li>
            <li> <a href="shop_grid.html"><span>Black Velvet</span></a> </li>
            <li> <a href="shop_grid.html"><span>Leather Handbags</span></a> </li>
          </ul>
        </li>
        <li> <a href="shop_grid.html"><span>Material Bag</span></a>
          <ul>
            <li> <a href="shop_grid.html"><span>Sling Bag</span></a> </li>
            <li> <a href="shop_grid.html"><span>Diaper Bags</span></a> </li>
            <li> <a href="shop_grid.html"><span>Laptop Backpack</span></a> </li>
            <li> <a href="shop_grid.html"><span>Benetton Black </span></a> </li>
          </ul>
        </li>
        <li> <a href="shop_grid.html"><span>Lino Perros</span></a>
          <ul>
            <li> <a href="shop_grid.html"><span>Graphite Croco</span></a> </li>
            <li> <a href="shop_grid.html"><span>Swiss Military Red</span></a> </li>
            <li> <a href="shop_grid.html"><span>Hidesign</span></a> </li>
            <li> <a href="shop_grid.html"><span>Benetton</span></a> </li>
          </ul>
        </li>
        <li> <a href="shop_grid.html"><span>Aquatan</span></a>
          <ul>
            <li> <a href="shop_grid.html"><span>Travel Blue</span></a> </li>
            <li> <a href="shop_grid.html"><span>Charles & Keith</span></a> </li>
            <li> <a href="shop_grid.html"><span>Clutches</span></a> </li>
            <li> <a href="shop_grid.html"><span>wristlets</span></a> </li>
          </ul>
        </li>
        <li> <a href="shop_grid.html"><span>Kenneth Cole</span></a>
          <ul>
            <li> <a href="shop_grid.html"><span>wallets</span></a> </li>
            <li> <a href="shop_grid.html"><span>shoulder bags</span></a> </li>
            <li> <a href="shop_grid.html"><span>leather totes</span></a> </li>
            <li> <a href="shop_grid.html"><span>satchels</span></a> </li>
          </ul>
        </li>
      </ul>
    </li>
    <li><a href="shop_grid.html">Sympathy</a> </li>
    <li><a href="shop_grid.html">New Baby</a> </li>
    <li><a href="shop_grid.html">Anniversary</a> </li>
    <li><a href="contact-us.html">Window plants</a> </li>
  </ul>
  <div class="jtv-top-link-mob">
    <ul class="links">
      <li><a title="My Account" href="modifyUserInfo">My Account</a> </li>
      <li><a title="Wishlist" href="#">Wishlist</a> </li>
      <li><a title="Checkout" href="#">Checkout</a> </li>
      <li><a title="Blog" href="checkOut"><span>Blog</span></a> </li>
      <li class="last"><a title="tologin" href="#"><span>Login</span></a> </li>
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
              <div class="welcome-msg hidden-xs">Welcome! </div>
              <div class="dropdown jtv-language-box"> <a role="button" data-toggle="dropdown" data-target="#" class="block-language dropdown-toggle" href="#"> <img src="images/flag-english.jpg" alt="language"> English <span class="caret"></span> </a>
                <ul class="dropdown-menu" role="menu">
                  <li> <a class="selected" href="#"> <img src="images/flag-english.jpg" alt="flag"> <span>English</span> </a> </li>
                  <li> <a href="#"> <img src="images/flag-default.jpg" alt="flag"> <span>French</span> </a> </li>
                  <li> <a href="#"> <img src="images/flag-german.jpg" alt="flag"> <span>German</span> </a> </li>
                  <li> <a href="#"> <img src="images/flag-brazil.jpg" alt="flag"> <span>Brazil</span> </a> </li>
                  <li> <a href="#"> <img src="images/flag-chile.jpg" alt="flag"> <span>Chile</span> </a> </li>
                  <li> <a href="#"> <img src="images/flag-spain.jpg" alt="flag"> <span>Spain</span> </a> </li>
                </ul>
              </div>
              <!-- End Header Language --> 
              
              <!-- Header Currency -->
              <div class="dropdown jtv-currency-box"> <a role="button" data-toggle="dropdown" data-target="#" class="block-currency dropdown-toggle" href="#"> USD <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#"> $ - Dollar </a> </li>
                  <li><a href="#"> £ - Pound </a> </li>
                  <li><a href="#"> € - Euro </a> </li>
                </ul>
              </div>
              <!-- End Header Currency --> 
              
            </div>
            <div class="col-xs-6 hidden-xs"> 
              <!-- Header Top Links -->
              <div class="jtv-top-links">
                <div class="links">
                  <ul>
                    
                    <li> <a title="Change Password" href="security">Change Password</a> </li>
                    <li> <a title="Checkout" href="checkOut"><span class="hidden-xs">Checkout</span></a> </li>
                    <li>
                      <div class="dropdown block-company-wrapper hidden-xs"> <a role="button" data-toggle="dropdown" data-target="#" class="block-company dropdown-toggle" href="#"> More <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                          <li><a href="#"> About Us </a> </li>
                          <li><a href="#"> Customer Service </a> </li>
                          <li><a href="#"> Privacy Policy </a> </li>
                          <li><a href="#">Site Map </a> </li>
                          <li><a href="#">Search Terms </a> </li>
                          <li><a href="#">Advanced Search </a> </li>
                        </ul>
                      </div>
                    </li>
                    
                    <c:choose>
                    	<c:when test="${empty current_user.name}">
                    		<li> <a href="login"><span class="hidden-xs" id="navigation-username">Log In</span></a> </li>
                    	</c:when>
                    	<c:otherwise>
                    	  <li> <a href="user/profile"><span class="hidden-xs" id="navigation-username">${current_user.name}</span></a> </li>	
                    	</c:otherwise>
                    </c:choose>                    
                    
                    <%-- <c:if test="${not empty current_user.name}">
                    	<li> <a href="user/profile"><span class="hidden-xs" id="navigation-username">${current_user.name}</span></a> </li>	
                    </c:if>
                    <c:if test="${empty current_user.name}">
                   	    <li> <a href="login"><span class="hidden-xs" id="navigation-username">Log In</span></a> </li>
                    </c:if> --%>
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
                <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"> <a href="#" style="display:none;"> <span class="cart_count">2</span><span class="price">My Bag / $259.00</span> </a> </div>
                <div>
                  <div class="jtv-top-cart-content"> 
                    
                    <!--block-subtitle-->
                    <ul class="mini-products-list" id="cart-sidebar">
                      <li class="item first">
                        <div class="item-inner"> <a class="product-image" title="Product Title Here" href="single_product.html"><img alt="Product Title Here" src="images/products/img01.jpg"> </a>
                          <div class="product-details">
                            <div class="access"><a class="jtv-btn-remove" title="Remove This Item" href="#">Remove</a> <a class="btn-edit" title="Edit item" href="#"><i class="icon-pencil"></i><span class="hidden">Edit item</span></a> </div>
                            <p class="product-name"><a href="#">Product Title Here</a> </p>
                            <strong>1</strong> x <span class="price">$79.99</span> </div>
                        </div>
                      </li>
                      <li class="item">
                        <div class="item-inner"> <a class="product-image" title="Product Title Here" href="single_product.html"><img alt="Product Title Here" src="images/products/img02.jpg"> </a>
                          <div class="product-details">
                            <div class="access"><a class="jtv-btn-remove" title="Remove This Item" href="#">Remove</a> <a class="btn-edit" title="Edit item" href="#"><i class="icon-pencil"></i><span class="hidden">Edit item</span></a> </div>
                            <p class="product-name"><a href="#">Product Title Here</a> </p>
                            <strong>1</strong> x <span class="price">$88.89</span> </div>
                        </div>
                      </li>
                      <li class="item last">
                        <div class="item-inner"> <a class="product-image" title="Product Title Here" href="single_product.html"><img alt="Product Title Here" src="images/products/img04.jpg"> </a>
                          <div class="product-details">
                            <div class="access"><a class="jtv-btn-remove" title="Remove This Item" href="#">Remove</a> <a class="btn-edit" title="Edit item" href="#"><i class="icon-pencil"></i><span class="hidden">Edit item</span></a> </div>
                            <p class="product-name"><a href="#">Product Title Here</a> </p>
                            <strong>1</strong> x <span class="price">$85.99</span> </div>
                        </div>
                      </li>
                    </ul>
                    
                    <!--actions-->
                    <div class="actions">
                      <button class="btn-checkout" title="Checkout" type="button" ><span>Checkout</span> </button>
                      <a href="#" class="view-cart"><span>View Cart</span></a> </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-md-4 col-sm-4 col-xs-12 jtv-logo-box"> 
            <!-- Header Logo -->
            <div class="logo"> <a title="eCommerce" href="index.html"><img alt="eCommerce" src="images/logo.png"> </a> </div>
            <!-- End Header Logo --> 
          </div>
          <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 hidden-xs">
            <div class="search-box">
              <form action="cat" method="POST" id="search_mini_form" name="Categories">
                <input type="text" placeholder="Search here..." maxlength="70" name="search" id="search">
                <button type="button" class="search-btn-bg"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
              </form>
            </div>
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
        <div class="mm-toggle"><i class="fa fa-align-justify"></i><span class="mm-label">Menu</span> </div>
      </div>
      <div class="nav-inner"> 
        <!-- BEGIN NAV -->
        <ul id="nav" class="hidden-xs">
          <li class="drop-menu"><a href="index.html" class="level-top active"><span>Home</span></a></li>
          <li class="drop-menu"><a href="shop/grid"><span>Shop Grid</span></a></li>
		  <li class="drop-menu"><a href="single_product.html"><span>Single Product</span></a></li>
          <li class="mega-menu"> <a class="level-top" href="shop_grid.html"><span>Love & Romance</span></a>
            <div class="jtv-menu-block-wrapper">
              <div class="jtv-menu-block-wrapper2">
                <div class="nav-block jtv-nav-block-center">
                  <div class="col-1">
                    <ul class="level0">
                      <li class="parent item"> <a href="shop_grid.html"><span>Wedding Flowers</span></a>
                        <ul class="level1">
                          <li> <a href="shop_grid.html"><span>Toaster Crossbody</span></a> </li>
                          <li> <a href="shop_grid.html"><span>Piper Bag</span></a> </li>
                          <li> <a href="shop_grid.html"><span>Leather Bag</span></a> </li>
                          <li> <a href="shop_grid.html"><span>Canvas Bag</span></a> </li>
                        </ul>
                      </li>
                      <li class="parent item"> <a href="shop_grid.html"><span>Birthday Flowers</span></a>
                        <ul class="level1">
                          <li> <a href="shop_grid.html"><span>Travel Accessories</span></a> </li>
                          <li> <a href="shop_grid.html"><span>Gym Bags</span></a> </li>
                          <li> <a href="shop_grid.html"><span>Fashion Waist Packs</span></a> </li>
                          <li> <a href="shop_grid.html"><span>Messenger Bags</span></a> </li>
                        </ul>
                      </li>
                      <li class="parent item"> <a href="shop_grid.html"><span>Winter Flowers</span></a>
                        <ul class="level1">
                          <li> <a href="shop_grid.html"><span>Travel Duffels</span></a> </li>
                          <li> <a href="shop_grid.html"><span>Umbrellas</span></a> </li>
                          <li> <a href="shop_grid.html"><span>Waist Packs</span></a> </li>
                          <li> <a href="shop_grid.html"><span>Travel Gear</span></a> </li>
                        </ul>
                      </li>
                      <li class="parent item"> <a href="shop_grid.html"><span>Party Flowers</span></a>
                        <ul class="level1">
                          <li> <a href="shop_grid.html"><span>Luggage</span></a> </li>
                          <li> <a href="shop_grid.html"><span>Briefcases</span></a> </li>
                          <li> <a href="shop_grid.html"><span>Bowling</span></a> </li>
                          <li> <a href="shop_grid.html"><span>Bucket Bag</span></a> </li>
                        </ul>
                      </li>
                      <li class="parent item"> <a href="shop_grid.html"><span>Valentine Flowers</span></a>
                        <ul class="level1">
                          <li> <a href="shop_grid.html"><span>Crossbody Bag</span></a> </li>
                          <li> <a href="shop_grid.html"><span>Clutch Handbag</span></a> </li>
                          <li> <a href="shop_grid.html"><span>Hobo Shoulder</span></a> </li>
                          <li> <a href="shop_grid.html"><span>Saddle Bag</span></a> </li>
                        </ul>
                      </li>
                      <li class="parent item"> <a href="shop_grid.html"><span>Window plants</span></a>
                        <ul class="level1">
                          <li> <a href="shop_grid.html"><span>Wallet Wristlet</span></a> </li>
                          <li> <a href="shop_grid.html"><span>Solo Premium </span></a> </li>
                          <li> <a href="shop_grid.html"><span>Laptop Bags</span></a> </li>
                          <li> <a href="shop_grid.html"><span>Belts</span></a> </li>
                        </ul>
                      </li>
                    </ul>
                  </div>
                  <div class="col-2">
                    <div class="jtv-nav-image1"> <a title="" href="#"><img alt="menu_image" src="images/menu-img1.jpg"> </a> </div>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <li class="mega-menu"> <a class="level-top" href="shop_grid.html"><span>Occasion</span></a>
            <div class="jtv-menu-block-wrapper">
              <div class="jtv-menu-block-wrapper2">
                <div class="nav-block jtv-nav-block-center">
                  <ul class="level0">
                    <li class="parent item"> <a href="shop_grid.html"><span>Flower types</span></a>
                      <ul class="level1">
                        <li> <a href="shop_grid.html"><span>Elegant </span></a> </li>
                        <li> <a href="shop_grid.html"><span>sassy &amp; chic</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Women's Satchel</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Shoulder Bag</span></a> </li>
                      </ul>
                    </li>
                    <li class="parent item"> <a href="shop_grid.html"><span>Kinds of flowers</span></a>
                      <ul class="level1">
                        <li> <a href="shop_grid.html"><span>fashion Backpack</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Rose Gold Saffiano</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Black Velvet</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Leather Handbags</span></a> </li>
                      </ul>
                    </li>
                    <li class="parent item"> <a href="shop_grid.html"><span>Annual plants</span></a>
                      <ul class="level1">
                        <li> <a href="shop_grid.html"><span>Sling Bag</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Diaper Bags</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Laptop Backpack</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Benetton Black </span></a> </li>
                      </ul>
                    </li>
                    <li class="parent item"> <a href="shop_grid.html"><span>Modern roses</span></a>
                      <ul class="level1">
                        <li> <a href="shop_grid.html"><span>Graphite Croco</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Swiss Military Red</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Hidesign</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Benetton</span></a> </li>
                      </ul>
                    </li>
                    <li class="parent item"> <a href="shop_grid.html"><span>Asiatic Lily</span></a>
                      <ul class="level1">
                        <li> <a href="shop_grid.html"><span>Travel Blue</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Charles & Keith</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Clutches</span></a> </li>
                        <li> <a href="shop_grid.html"><span>wristlets</span></a> </li>
                      </ul>
                    </li>
                    <li class="parent item"> <a href="shop_grid.html"><span>Corporate</span></a>
                      <ul class="level1">
                        <li> <a href="shop_grid.html"><span>Annual plants</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Orchids</span></a> </li>
                        <li> <a href="shop_grid.html"><span>NeoStrata</span></a> </li>
                        <li> <a href="shop_grid.html"><span>GoodSkin Labs</span></a> </li>
                      </ul>
                    </li>
                  </ul>
                </div>
                <div class="jtv-nav-banner">
                  <div class="jtv-banner-box">
                    <div class="jtv-nav-banner-img"> <a href="#"><img src="images/menu-img2.jpg" alt="Handbag"> </a> </div>
                  </div>
                  <div class="jtv-banner-box">
                    <div class="jtv-nav-banner-img"> <a href="#"><img src="images/menu-img3.jpg" alt="Handbag"> </a> </div>
                  </div>
                  <div class="jtv-banner-box jtv-banner-box_last">
                    <div class="jtv-nav-banner-img"> <a href="#"><img src="images/menu-img4.jpg" alt="Handbag"> </a> </div>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <li class="mega-menu"> <a class="level-top" href="shop_grid.html"><span>Shops</span></a>
            <div class="jtv-menu-block-wrapper">
              <div class="jtv-menu-block-wrapper2">
                <div class="nav-block jtv-nav-block-center">
                  <ul class="level0">
                    <li class="parent item"> <a href="shop_grid.html"><span>Edibles</span></a>
                      <ul class="level1">
                        <li> <a href="shop/kindGrid?cateId=4"><span>Food</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=45"><span>Sandwiches</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=38"><span>Pizza</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=68"><span>Fast Food</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=69"><span>Burgers</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=9"><span>Coffee & Tea</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=12"><span>Restaurants</span></a> </li>
                      </ul>
                    </li>
                    <li class="parent item"> <a href="shop_grid.html"><span>Fashion</span></a>
                      <ul class="level1">
                        <li> <a href="shop/kindGrid?cateId=103"><span>Nail Salons</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=21"><span>Women's Clothing</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=42"><span>Hair Salons</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=14"><span>Shopping</span></a> </li>
                      </ul>
                    </li>
                    <li class="parent item"> <a href="shop_grid.html"><span>Entertainment</span></a>
                      <ul class="level1">
                        <li> <a href="shop/kindGrid?cateId=17"><span>Nightlife</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=44"><span>Beauty & Spas</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=25"><span>Bars</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=31"><span>Arts & Entertainment</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=50"><span>Event Planning & Services</span></a> </li>
                      </ul>
                    </li>
                    <li class="parent item"> <a href="shop_grid.html"><span>Life</span></a>
                      <ul class="level1">
                        <li> <a href="shop/kindGrid?cateId=49"><span>Hotels & Travel</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=19"><span>Home Services</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=134"><span>Health & Medical</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=149"><span>Doctors</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=94"><span>Pets</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=2"><span>Automotive</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=34"><span>Auto Repair</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=72"><span>Home & Garden</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=20"><span>Real Estate</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=0"><span>Active Life</span></a> </li>
                      </ul>
                    </li>
                    <li class="parent item"> <a href="shop_grid.html"><span>Region</span></a>
                      <ul class="level1">
                        <li> <a href="shop/kindGrid?cateId=24"><span>Chinese</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=48"><span>Italian</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=144"><span>Mexican</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=40"><span>American(new)</span></a> </li>
                        <li> <a href="shop/kindGrid?cateId=10"><span>American (Traditional)</span></a> </li>
                      </ul>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </li>
          <li class="mega-menu"> <a class="level-top" href="shop_grid.html"><span>Sympathy</span></a>
            <div class="jtv-menu-block-wrapper">
              <div class="jtv-menu-block-wrapper2">
                <div class="nav-block jtv-nav-block-center jtv-menu-box-left">
                  <ul class="level0">
                    <li class="parent item"> <a href="shop_grid.html"><span>Green roses</span></a>
                      <ul class="level1">
                        <li> <a href="shop_grid.html"><span>Sed in dui</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Proin lobortis</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Ut vitae neque</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Ac egestas neque</span></a> </li>
                      </ul>
                    </li>
                    <li class="parent item"> <a href="shop_grid.html"><span>Herbarium</span></a>
                      <ul class="level1">
                        <li> <a href="shop_grid.html"><span>Vivamus molesite</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Fusce condimentum</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Nulla dapibus</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Litora torquent</span></a> </li>
                      </ul>
                    </li>
                    <li class="parent item"> <a href="shop_grid.html"><span>Tulips</span></a>
                      <ul class="level1">
                        <li> <a href="shop_grid.html"><span>Dui ac pretium</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Phasellus tempus</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Incididunt ut</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Elit sed do</span></a> </li>
                      </ul>
                    </li>
                    <li class="parent item"> <a href="shop_grid.html"><span>Annual plants</span></a>
                      <ul class="level1">
                        <li> <a href="shop_grid.html"><span>Proin viverra</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Curabitur rhoncus</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Lacus volutpat</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Conse ctetur</span></a> </li>
                      </ul>
                    </li>
                  </ul>
                </div>
                <div class="nav-block nav-block-right std jtv-menu-box-right"><img src="images/menu-img5.jpg" alt="menu img"> </div>
              </div>
            </div>
          </li>
          <li class="mega-menu"> <a class="level-top" href="#"><span>Blog</span></a> </li>
          <li class="nav-custom-link mega-menu"> <a href="#" class="level-top"> <span>Specials</span> </a>
            <div class="jtv-menu-block-wrapper custom-menu">
              <div class="header-nav-dropdown-wrapper">
                <div class="jtv-custom-box"> <i class="fa fa-laptop"></i>
                  <h4 class="heading">100% Responsive Design</h4>
                  <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
                </div>
                <div class="jtv-custom-box"> <i class="fa fa-book"></i>
                  <h4 class="heading">Easy Document</h4>
                  <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dignissim erat ut laoreet pharetra.</p>
                </div>
                <div class="jtv-custom-box"> <i class="fa fa-fort-awesome"></i>
                  <h4 class="heading">Awesome Icon Fonts</h4>
                  <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                </div>
                <div class="jtv-custom-box"> <i class="fa fa-home"></i>
                  <h4 class="heading">2 Layout Home Pages</h4>
                  <p>Duis aute irure dolor in reprehenderit in voluptate velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                </div>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- end nav --> 
  
  <!-- Slideshow  -->
  <div id="slider"> 
    
    <!--
	#################################
		- THEMEPUNCH BANNER -
	#################################
	-->
    <div class="tp-banner-container">
      <div class="tp-banner" >
        <ul>
        
          <li id="slide1" data-transition="3dcurtain-vertical" data-slotamount="7" data-masterspeed="500"  data-thumb="http://47.95.10.11/FilteredPhoto/card-active.jpg" data-title="Second Slide"> 
            <!-- MAIN IMAGE -->
            
            <img src="images/dummy.png"  alt="laptopmockup_sliderdy" data-lazyload="http://47.95.10.11/FilteredPhoto/card-active.jpg" data-bgposition="right bottom" data-kenburns="on" data-duration="12000" data-ease="Power0.easeInOut" data-bgfit="115" data-bgfitend="100" data-bgpositionend="center top"> 
            
            <!-- LAYERS --> 
            
            <!-- LAYER NR. 1 -->
            <!-- <div class="tp-caption text1 skewfromrightshort fadeout"
			data-x="380"
			data-y="150" 
			data-speed="800"
			data-start="1000"
			data-easing="Power3.easeInOut"
			data-splitin="words"
			data-splitout="none"
			data-elementdelay="0.1"
			data-endelementdelay="0.1"
			data-endspeed="300"
			style="z-index: 3; white-space: nowrap;">Flowers</div> -->
            
            <!-- LAYER NR. 2 -->
            <!-- <div class="tp-caption text2 skewfromrightshort fadeout"
			data-x="380"
			data-y="250" 
			data-speed="500"
			data-start="1500"
			data-easing="Power3.easeInOut"
			data-splitin="chars"
			data-splitout="none"
			data-elementdelay="0.1"
			data-endelementdelay="0.1"
			data-endspeed="300"
			style="z-index: 4; white-space: nowrap;">A Wide Range of Flowers<br>
              For Everyones Need</div> -->
            
            <!-- LAYER NR. 3 -->
            <!-- <div class="tp-caption text3 skewfromrightshort fadeout hidden-xs"
			data-x="380"
			data-y="360" 
			data-speed="1000"
			data-start="4200"
			data-easing="Power3.easeInOut"
			data-splitin="none"
			data-splitout="none"
			data-elementdelay="0.1"
			data-endelementdelay="0.1"
			data-endspeed="300"
			style="z-index: 5; white-space: nowrap;"><a href="#">Order Today</a></div> -->
          </li>
          <!-- SLIDE  -->
          <li id="slide2" data-transition="3dcurtain-vertical" data-slotamount="7" data-masterspeed="500" data-thumb="http://47.95.10.11/FilteredPhoto/card-chinese.jpg"  data-title="First Slide"> 
            <!-- MAIN IMAGE --> 
            
            <img src="images/dummy.png"  alt="laptopmockup_sliderdy" data-lazyload="http://47.95.10.11/FilteredPhoto/card-chinese.jpg" data-bgposition="right top" data-kenburns="on" data-duration="12000" data-ease="Power0.easeInOut" data-bgfit="115" data-bgfitend="100" data-bgpositionend="center bottom"> 
            
            <!-- LAYERS --> 
            
            <!-- LAYER NR. 1 -->
            <!-- <div class="tp-caption text5 skewfromrightshort fadeout"
			data-x="1080"
			data-y="150" 
			data-speed="800"
			data-start="1000"
			data-easing="Power3.easeInOut"
			data-splitin="words"
			data-splitout="none"
			data-elementdelay="0.1"
			data-endelementdelay="0.1"
			data-endspeed="300"
			style="z-index: 3; white-space: nowrap;">A Perfect </div> -->
            
            <!-- LAYER NR. 2 -->
            <!-- <div class="tp-caption text4 skewfromleftshort fadeout"
			data-x="1110"
			data-y="230" 
			data-speed="500"
			data-start="1500"
			data-easing="Power3.easeInOut"
			data-splitin="chars"
			data-splitout="none"
			data-elementdelay="0.1"
			data-endelementdelay="0.1"
			data-endspeed="300"
			style="z-index: 4; white-space: nowrap;">Bouquet</div> -->
            
            <!-- LAYER NR. 3 -->
            <!-- <div class="tp-caption text2 skewfromrightshort fadeout"
			data-x="1050"
			data-y="350" 
			data-speed="1000"
			data-start="4200"
			data-easing="Power3.easeInOut"
			data-splitin="none"
			data-splitout="none"
			data-elementdelay="0.1"
			data-endelementdelay="0.1"
			data-endspeed="300"
			style="z-index: 5; white-space: nowrap;">The Best Choice on the Template</div> -->
          </li>
          
          <!-- SLIDE  -->
          <li id="slide3" data-transition="3dcurtain-vertical" data-slotamount="7" data-masterspeed="500" data-thumb="http://47.95.10.11/FilteredPhoto/card-fashion.jpg"  data-title="Third Slide" > 
            <!-- MAIN IMAGE --> 
            
               <img src="images/dummy.png"   alt="laptopmockup_sliderdy" data-lazyload="http://47.95.10.11/FilteredPhoto/card-fashion.jpg" data-bgposition="right top" data-kenburns="on" data-duration="12000" data-ease="Power0.easeInOut" data-bgfit="115" data-bgfitend="100" data-bgpositionend="left center"> 
            
            <!-- LAYERS --> 
            
            <!-- LAYER NR. 1 -->
            <!-- <div class="tp-caption text7 skewfromrightshort fadeout"
			data-x="650"
			data-y="150" 
			data-speed="800"
			data-start="1000"
			data-easing="Power3.easeInOut"
			data-splitin="words"
			data-splitout="none"
			data-elementdelay="0.1"
			data-endelementdelay="0.1"
			data-endspeed="300"
			style="z-index: 3; white-space: nowrap;">Special for your</div> -->
            
            <!-- LAYER NR. 2 -->
            <!-- <div class="tp-caption text5 skewfromleftshort fadeout"
			data-x="610"
			data-y="280" 
			data-speed="500"
			data-start="1500"
			data-easing="Power3.easeInOut"
			data-splitin="chars"
			data-splitout="none"
			data-elementdelay="0.1"
			data-endelementdelay="0.1"
			data-endspeed="300"
			style="z-index: 4; white-space: nowrap;">Valentine's Day</div> -->
            
            <!-- LAYER NR. 3 -->
            <!-- <div class="tp-caption text6 skewfromrightshort fadeout"
			data-x="740"
			data-y="390" 
			data-speed="1000"
			data-start="3500"
			data-easing="Power3.easeInOut"
			data-splitin="none"
			data-splitout="none"
			data-elementdelay="0.1"
			data-endelementdelay="0.1"
			data-endspeed="300"
			style="z-index: 5; white-space: nowrap;">Love is to give. Love is to Remember.</div> -->
          </li>
        </ul>
        <!--          <div class="tp-bannertimer"></div>
--> </div>
    </div>
  </div>
  
  <!-- END REVOLUTION SLIDER --> 
  
  <!-- jtv bottom banner section -->
  <div class="jtv-bottom-banner-section">
    <div class="container">
      <div class="row">
        <div class="col-sm-4">
          <div class="jtv-img-box" onclick="jumpToSpecial(1)"> <a href="#"> <img src="http://47.95.10.11/FilteredPhoto/parking.jpg" alt="bottom banner">
            <div class="jtv-banner-info"> <span>Easy To Access</span>
              <h3>Parking Free</h3>
            </div>
            </a> </div>
        </div>
        <div class="col-sm-4">
          <div class="jtv-img-box" onclick="jumpToSpecial(2)"> <a href="#"> <img src="http://47.95.10.11/FilteredPhoto/discount.jpg" alt="bottom banner">
            <div class="jtv-banner-info"> <span>Special Discount</span>
              <h3>Happy Hour</h3>
            </div>
            </a> </div>
        </div>
        <div class="col-sm-4">
          <div class="jtv-img-box" onclick="jumpToSpecial(3)"> <a href="#"> <img src="http://47.95.10.11/FilteredPhoto/delivery.jpg" alt="bottom banner">
            <div class="jtv-banner-info"> <span>Get Service At Home</span>
              <h3>Delivery</h3>
            </div>
            </a> </div>
        </div>
      </div>
    </div>
  </div>
  
  
  <div class="content-page">
    <div class="container"> 
    
    <!-- 测试 -->

  <div class="content-page">
    <div class="container"> 
      <!-- Product Tabs-->
      <div class="category-product">
        <div class="navbar nav-menu">
          <div class="navbar-collapse">
            <div class="jtv-title">
              <h2 style="color:#e62263; font-size:30px;">Best Seller</h2>
            </div>
            <ul class="nav navbar-nav">
              <li class="active"><a data-toggle="tab" href="#tab-hot" style="font-size:18px;">HOT</a> </li>
              <li><a data-toggle="tab" href="#tab-food" style="font-size:18px;">Food</a> </li>
              <li><a data-toggle="tab" href="#tab-fashion" style="font-size:18px;">Fashion</a> </li>
              <li><a data-toggle="tab" href="#tab-health" style="font-size:18px;">Health & Medical</a> </li>
              <li><a data-toggle="tab" href="#tab-hotel" style="font-size:18px;">Hotel & Travel</a> </li>
              <li><a data-toggle="tab" href="#tab-near" style="font-size:18px;">Near</a> </li>
            </ul>
          </div>
          <!-- /.navbar-collapse --> 
          
        </div>
        
        
        
        <div class="tab-container"> 
          <!-- tab product -->
          <div class="tab-panel active" id="tab-hot">
            <div class="category-products">
              <ul class="products-grid" id="hot-grid">
              
                
                
              </ul>
            </div>
          </div>
          <!-- tab product -->
          <div class="tab-panel" id="tab-food">
            <div class="category-products">
              <ul class="products-grid" id="food-grid">
                
              </ul>
            </div>
          </div>
          <div class="tab-panel" id="tab-fashion">
            <div class="category-products">
              <ul class="products-grid" id="fashion-grid">
                
              </ul>
            </div>
          </div>
          <div class="tab-panel" id="tab-health">
            <div class="category-products">
              <ul class="products-grid" id="health-grid">
                
              </ul>
            </div>
          </div>
          <div class="tab-panel" id="tab-hotel">
            <div class="category-products">
              <ul class="products-grid" id="hotel-grid"> 
               
              </ul>
            </div>
          </div>
          <div class="tab-panel" id="tab-near">
            <div class="category-products">
              <ul class="products-grid" id="near-grid">
                
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Special Product slider -->
  
  <!-- <section class="special-products">
    <div class="container">
      <div class="slider-items-products">
        <div class="jtv-special-block">
          <div class="jtv-block-inner">
            <div class="block-title">
              <h2>Hot Product</h2>
            </div>
            <div class="jtv-decs-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</div>
            <a href="shop_grid.html" class="jtv-more-bnt">More Products</a>
            <div class="jtv-box-timer">
              <div class="countbox_1 timer-grid"></div>
            </div>
          </div>
          <div id="special-slider" class="product-flexslider hidden-buttons">
            <div class="slider-items slider-width-col4 products-grid block-content">
              <div class="item">
                <div class="item-inner">
                  <div class="item-img">
                    <div class="item-img-info"> <a class="product-image" title="Product Title Here" href="single_product.html"> <img alt="Product Title Here" src="images/products/img19.jpg"> </a>
                      <div class="jtv-box-hover">
                        <ul class="add-to-links">
                          <li><a class="link-quickview" href="#"><i class="icon-magnifier-add icons"></i><span class="hidden">Quick View</span></a></li>
                          <li><a class="link-wishlist" href="#"><i class="icon-heart icons"></i><span class="hidden">Wishlist</span></a></li>
                          <li><a class="link-compare" href="#"><i class="icon-shuffle icons"></i><span class="hidden">Compare</span></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="item-info">
                    <div class="info-inner">
                      <div class="item-title"> <a title="Product Title Here" href="single_product.html"> Product Title Here </a> </div>
                      <div class="item-content">
                        <div class="rating"> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                        <div class="item-price">
                          <div class="price-box"> <span class="regular-price"> <span class="price">$155.00</span> </span> </div>
                        </div>
                        <div class="action">
                          <button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="item-inner">
                  <div class="item-img">
                    <div class="item-img-info"> <a class="product-image" title="Product Title Here" href="single_product.html"> <img alt="Product Title Here" src="images/products/img20.jpg"> </a>
                      <div class="jtv-box-hover">
                        <ul class="add-to-links">
                          <li><a class="link-quickview" href="#"><i class="icon-magnifier-add icons"></i><span class="hidden">Quick View</span></a></li>
                          <li><a class="link-wishlist" href="#"><i class="icon-heart icons"></i><span class="hidden">Wishlist</span></a></li>
                          <li><a class="link-compare" href="#"><i class="icon-shuffle icons"></i><span class="hidden">Compare</span></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="item-info">
                    <div class="info-inner">
                      <div class="item-title"> <a title="Product Title Here" href="single_product.html"> Product Title Here </a> </div>
                      <div class="item-content">
                        <div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                        <div class="item-price">
                          <div class="price-box"> <span class="regular-price"> <span class="price">$225.00</span> </span> </div>
                        </div>
                        <div class="action">
                          <button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="item-inner">
                  <div class="item-img">
                    <div class="item-img-info"> <a class="product-image" title="Product Title Here" href="single_product.html"> <img alt="Product Title Here" src="images/products/img21.jpg"> </a>
                      <div class="jtv-box-hover">
                        <ul class="add-to-links">
                          <li><a class="link-quickview" href="#"><i class="icon-magnifier-add icons"></i><span class="hidden">Quick View</span></a></li>
                          <li><a class="link-wishlist" href="#"><i class="icon-heart icons"></i><span class="hidden">Wishlist</span></a></li>
                          <li><a class="link-compare" href="#"><i class="icon-shuffle icons"></i><span class="hidden">Compare</span></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="item-info">
                    <div class="info-inner">
                      <div class="item-title"> <a title="Product Title Here" href="single_product.html"> Product Title Here </a> </div>
                      <div class="item-content">
                        <div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                        <div class="item-price">
                          <div class="price-box"> <span class="regular-price"> <span class="price">$99.00</span> </span> </div>
                        </div>
                        <div class="action">
                          <button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="item-inner">
                  <div class="item-img">
                    <div class="item-img-info"> <a class="product-image" title="Product Title Here" href="single_product.html"> <img alt="Product Title Here" src="images/products/img04.jpg"> </a>
                      <div class="new-label new-top-left">new</div>
                      <div class="jtv-box-hover">
                        <ul class="add-to-links">
                          <li><a class="link-quickview" href="#"><i class="icon-magnifier-add icons"></i><span class="hidden">Quick View</span></a></li>
                          <li><a class="link-wishlist" href="#"><i class="icon-heart icons"></i><span class="hidden">Wishlist</span></a></li>
                          <li><a class="link-compare" href="#"><i class="icon-shuffle icons"></i><span class="hidden">Compare</span></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="item-info">
                    <div class="info-inner">
                      <div class="item-title"> <a title="Product Title Here" href="single_product.html"> Product Title Here </a> </div>
                      <div class="item-content">
                        <div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                        <div class="item-price">
                          <div class="price-box">
                            <p class="special-price"> <span class="price-label">Special Price</span> <span class="price"> $156.00 </span> </p>
                            <p class="old-price"> <span class="price-label">Regular Price:</span> <span class="price"> $167.00 </span> </p>
                          </div>
                        </div>
                        <div class="action">
                          <button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section> -->
  <!-- Brand Logo -->
  
  <div class="brand-logo">
    <div class="container">
      <div class="slider-items-products">
        <div id="brand-logo-slider" class="product-flexslider hidden-buttons">
          <div class="slider-items slider-width-col6"> 
            
            <!-- Item -->
            <div class="item"> <a href="#"><img src="images/brand1.png" alt="brand logo"> </a> </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item"> <a href="#"><img src="images/brand2.png" alt="brand logo"> </a> </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item"> <a href="#"><img src="images/brand3.png" alt="Image"> </a> </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item"> <a href="#"><img src="images/brand4.png" alt="brand logo"> </a> </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item"> <a href="#"><img src="images/brand5.png" alt="brand logo"> </a> </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item"> <a href="#"><img src="images/brand6.png" alt="brand logo"> </a> </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item"> <a href="#"><img src="images/brand7.png" alt="brand logo"> </a> </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item"> <a href="#"><img src="images/brand8.png" alt="brand logo"> </a> </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item"> <a href="#"><img src="images/brand9.png" alt="brand logo"> </a> </div>
            <!-- End Item --> 
            
            <!-- Item -->
            <div class="item"> <a href="#"><img src="images/brand10.png" alt="brand logo"> </a> </div>
            <!-- End Item --> 
            
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- bestsell Slider -->
  <!-- <section class="jtv-bestsell-section">
    <div class="container">
      <div class="slider-items-products">
        <div class="bestsell-block">
          <div class="jtv-block-inner">
            <div class="block-title">
              <h2>New Products</h2>
            </div>
          </div>
          <div id="bestsell-slider" class="product-flexslider hidden-buttons">
            <div class="slider-items slider-width-col4 products-grid block-content">
              <div class="item">
                <div class="item-inner">
                  <div class="item-img">
                    <div class="item-img-info"> <a class="product-image" title="Product Title Here" href="single_product.html"> <img alt="Product Title Here" src="images/products/img15.jpg"> </a>
                      <div class="jtv-box-hover">
                        <ul class="add-to-links">
                          <li><a class="link-quickview" href="#"><i class="icon-magnifier-add icons"></i><span class="hidden">Quick View</span></a></li>
                          <li><a class="link-wishlist" href="#"><i class="icon-heart icons"></i><span class="hidden">Wishlist</span></a></li>
                          <li><a class="link-compare" href="#"><i class="icon-shuffle icons"></i><span class="hidden">Compare</span></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="item-info">
                    <div class="info-inner">
                      <div class="item-title"> <a title="Product Title Here" href="single_product.html"> Product Title Here </a> </div>
                      <div class="item-content">
                        <div class="rating"> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                        <div class="item-price">
                          <div class="price-box"> <span class="regular-price"> <span class="price">$225.00</span> </span> </div>
                        </div>
                        <div class="action">
                          <button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="item-inner">
                  <div class="item-img">
                    <div class="item-img-info"> <a class="product-image" title="Product Title Here" href="single_product.html"> <img alt="Product Title Here" src="images/products/img14.jpg"> </a>
                      <div class="jtv-box-hover">
                        <ul class="add-to-links">
                          <li><a class="link-quickview" href="#"><i class="icon-magnifier-add icons"></i><span class="hidden">Quick View</span></a></li>
                          <li><a class="link-wishlist" href="#"><i class="icon-heart icons"></i><span class="hidden">Wishlist</span></a></li>
                          <li><a class="link-compare" href="#"><i class="icon-shuffle icons"></i><span class="hidden">Compare</span></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="item-info">
                    <div class="info-inner">
                      <div class="item-title"> <a title="Product Title Here" href="single_product.html"> Product Title Here </a> </div>
                      <div class="item-content">
                        <div class="rating"> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                        <div class="item-price">
                          <div class="price-box"> <span class="regular-price"> <span class="price">$99.00</span> </span> </div>
                        </div>
                        <div class="action">
                          <button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="item-inner">
                  <div class="item-img">
                    <div class="item-img-info"> <a class="product-image" title="Product Title Here" href="single_product.html"> <img alt="Product Title Here" src="images/products/img13.jpg"> </a>
                      <div class="new-label new-top-left">new</div>
                      <div class="jtv-box-hover">
                        <ul class="add-to-links">
                          <li><a class="link-quickview" href="#"><i class="icon-magnifier-add icons"></i><span class="hidden">Quick View</span></a></li>
                          <li><a class="link-wishlist" href="#"><i class="icon-heart icons"></i><span class="hidden">Wishlist</span></a></li>
                          <li><a class="link-compare" href="#"><i class="icon-shuffle icons"></i><span class="hidden">Compare</span></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="item-info">
                    <div class="info-inner">
                      <div class="item-title"> <a title="Product Title Here" href="single_product.html"> Product Title Here </a> </div>
                      <div class="item-content">
                        <div class="rating"> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                        <div class="item-price">
                          <div class="price-box">
                            <p class="special-price"> <span class="price-label">Special Price</span> <span class="price"> $156.00 </span> </p>
                            <p class="old-price"> <span class="price-label">Regular Price:</span> <span class="price"> $167.00 </span> </p>
                          </div>
                        </div>
                        <div class="action">
                          <button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="item-inner">
                  <div class="item-img">
                    <div class="item-img-info"> <a class="product-image" title="Product Title Here" href="single_product.html"> <img alt="Product Title Here" src="images/products/img12.jpg"> </a>
                      <div class="jtv-box-hover">
                        <ul class="add-to-links">
                          <li><a class="link-quickview" href="#"><i class="icon-magnifier-add icons"></i><span class="hidden">Quick View</span></a></li>
                          <li><a class="link-wishlist" href="#"><i class="icon-heart icons"></i><span class="hidden">Wishlist</span></a></li>
                          <li><a class="link-compare" href="#"><i class="icon-shuffle icons"></i><span class="hidden">Compare</span></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="item-info">
                    <div class="info-inner">
                      <div class="item-title"> <a title="Product Title Here" href="single_product.html"> Product Title Here </a> </div>
                      <div class="item-content">
                        <div class="rating"> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                        <div class="item-price">
                          <div class="price-box"> <span class="regular-price"> <span class="price">$225.00</span> </span> </div>
                        </div>
                        <div class="action">
                          <button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="item-inner">
                  <div class="item-img">
                    <div class="item-img-info"> <a class="product-image" title="Product Title Here" href="single_product.html"> <img alt="Product Title Here" src="images/products/img11.jpg"> </a>
                      <div class="jtv-box-hover">
                        <ul class="add-to-links">
                          <li><a class="link-quickview" href="#"><i class="icon-magnifier-add icons"></i><span class="hidden">Quick View</span></a></li>
                          <li><a class="link-wishlist" href="#"><i class="icon-heart icons"></i><span class="hidden">Wishlist</span></a></li>
                          <li><a class="link-compare" href="#"><i class="icon-shuffle icons"></i><span class="hidden">Compare</span></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="item-info">
                    <div class="info-inner">
                      <div class="item-title"> <a title="Product Title Here" href="single_product.html"> Product Title Here </a> </div>
                      <div class="item-content">
                        <div class="rating"> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                        <div class="item-price">
                          <div class="price-box"> <span class="regular-price"> <span class="price">$99.00</span> </span> </div>
                        </div>
                        <div class="action">
                          <button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="item-inner">
                  <div class="item-img">
                    <div class="item-img-info"> <a class="product-image" title="Product Title Here" href="single_product.html"> <img alt="Product Title Here" src="images/products/img10.jpg"> </a>
                      <div class="new-label new-top-left">new</div>
                      <div class="jtv-box-hover">
                        <ul class="add-to-links">
                          <li><a class="link-quickview" href="#"><i class="icon-magnifier-add icons"></i><span class="hidden">Quick View</span></a></li>
                          <li><a class="link-wishlist" href="#"><i class="icon-heart icons"></i><span class="hidden">Wishlist</span></a></li>
                          <li><a class="link-compare" href="#"><i class="icon-shuffle icons"></i><span class="hidden">Compare</span></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                  <div class="item-info">
                    <div class="info-inner">
                      <div class="item-title"> <a title="Product Title Here" href="single_product.html"> Product Title Here </a> </div>
                      <div class="item-content">
                        <div class="rating"> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                        <div class="item-price">
                          <div class="price-box">
                            <p class="special-price"> <span class="price-label">Special Price</span> <span class="price"> $156.00 </span> </p>
                            <p class="old-price"> <span class="price-label">Regular Price:</span> <span class="price"> $167.00 </span> </p>
                          </div>
                        </div>
                        <div class="action">
                          <button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section> -->
  <!-- End Bestsell Slider -->
  <!-- <div class="jtv-testimonial-block">
    <div class="container">
      <div class="row">
        <div class="col-md-12" data-wow-delay="0.2s">
          <div class="block-title">
            <h2>Testimonials</h2>
          </div>
          <div class="carousel slide" data-ride="carousel" id="quote-carousel"> 
            Bottom Carousel Indicators
            <ol class="carousel-indicators">
              <li data-target="#quote-carousel" data-slide-to="0"><img class="img-responsive " src="images/testimonials-img1.jpg" alt=""> </li>
              <li data-target="#quote-carousel" data-slide-to="1"><img class="img-responsive" src="images/testimonials-img2.jpg" alt=""> </li>
              <li data-target="#quote-carousel" data-slide-to="2" class="active"><img class="img-responsive" src="images/testimonials-img3.jpg" alt=""> </li>
              <li data-target="#quote-carousel" data-slide-to="3"><img class="img-responsive" src="images/testimonials-img4.jpg" alt=""> </li>
              <li data-target="#quote-carousel" data-slide-to="4"><img class="img-responsive" src="images/testimonials-img5.jpg" alt=""> </li>
            </ol>
            
            Carousel Slides / Quotes
            <div class="carousel-inner text-center"> 
              
              Quote 1
              <div class="item">
                <blockquote>
                  <div class="row">
                    <div class="col-sm-8 col-sm-offset-2">
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. !</p>
                      <div class="holder-info"> <strong class="name">Vince Roy</strong> <strong class="designation">CEO, XYZ Softwear</strong></div>
                    </div>
                  </div>
                </blockquote>
              </div>
              Quote 2
              <div class="item">
                <blockquote>
                  <div class="row">
                    <div class="col-sm-8 col-sm-offset-2">
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. </p>
                      <div class="holder-info"><strong class="name">John Doe</strong> <strong class="designation">CEO, ABC Softwear</strong></div>
                    </div>
                  </div>
                </blockquote>
              </div>
              Quote 3
              <div class="item active">
                <blockquote>
                  <div class="row">
                    <div class="col-sm-8 col-sm-offset-2">
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. .</p>
                      <div class="holder-info"> <strong class="name">John Doe</strong> <strong class="designation">Managing Director</strong></div>
                    </div>
                  </div>
                </blockquote>
              </div>
              Quote 4
              <div class="item">
                <blockquote>
                  <div class="row">
                    <div class="col-sm-8 col-sm-offset-2">
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. .</p>
                      <div class="holder-info"> <strong class="name">Vince Roy</strong> <strong class="designation">CEO, XYZ Softwear</strong></div>
                    </div>
                  </div>
                </blockquote>
              </div>
              Quote 5
              <div class="item">
                <blockquote>
                  <div class="row">
                    <div class="col-sm-8 col-sm-offset-2">
                      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. .</p>
                      <div class="holder-info"><strong class="name">John Doe</strong> <strong class="designation">CEO, ABC Softwear</strong></div>
                    </div>
                  </div>
                </blockquote>
              </div>
            </div>
            
            Carousel Buttons Next/Prev 
            <a data-slide="prev" href="#quote-carousel" class="left carousel-control"><i class="fa fa-chevron-left"></i></a> <a data-slide="next" href="#quote-carousel" class="right carousel-control"><i class="fa fa-chevron-right"></i></a> </div>
        </div>
      </div>
    </div>
  </div>
   -->
  <!-- Best Review -->
  <div class="container">
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="blog-outer-container">
          <div class="jtv-title">
            <h2>Best Review</h2>
          </div>
          <div class="blog-inner">
          	<c:forEach var="i" begin="0" end="2">
	            <div class="col-sm-4">
	              <div class="entry-thumb"> <a href="shop/detail" onclick="goToDetail('${indexReviewList[i].business_id}')"> <img alt="Blog" src="${reviewImgList[i]}"> </a> </div>
	              <div class="blog-preview_info">
	                <h4><a href="blog_single_post.html">${indexReviewList[i].user_name}</a></h4>
	                <ul class="post-meta">
	                  <li><i class="fa fa-thumbs-o-up"></i><a href="JavaScript:void(0)">${indexReviewList[i].useful}</a> </li>
	                  <li><i class="fa fa-smile-o"></i><a href="JavaScript:void(0)">${indexReviewList[i].funny}</a> </li>
	                  <li><i class="fa fa-hand-peace-o"></i>${indexReviewList[i].cool}</li>
	                </ul>
	                <div class="blog-preview_desc">${indexReviewList[i].text}</div>
	                <a class="blog-preview_btn" href="shop/detail" onclick="goToDetail('${indexReviewList[i].business_id}')">Read More <i class="fa fa-long-arrow-right"></i></a> </div>
	            </div>
        	</c:forEach>
          </div>
        </div>
      </div>
    </div>
  </div>
  
  <!-- End Latest Blog -->
  <div class="jtv-top-banner">
    <div class="container">
      <div class="imgbox"><img src="images/banner1.jpg" alt=""></div>
      <div class="jtv-cont-box">
        <h3>Life <br>
          Assistant</h3>
        <div class="jtv-line-bg"></div>
        <p>First query, then consume.A fine life, a real benefit first</p>
      </div>
      <div class="imgbox"><img src="images/banner2.jpg" alt=""></div>
      <div class="jtv-cont-box2">
        <h3>Best <br>
          Resources</h3>
        <div class="jtv-line-bg"></div>
        <p>Cover more than 5000 stores information and comments.</p>
      </div>
      <div class="imgbox"><img src="images/banner3.jpg" alt=""></div>
      <div class="jtv-cont-box3">
        <h3>Special<br>
          Discount</h3>
        <div class="jtv-line-bg"></div>
        <p>Members of this station enjoy store discount. Using this platform to consume smartly.</p>
      </div>
    </div>
  </div>
  <!-- our features -->
  <div class="our-features-box">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-xs-12 col-sm-6">
          <div class="feature-box first"> <i class="icon-plane icons"></i>
            <div class="content">
              <h6>Fast same day delivery</h6>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-xs-12 col-sm-6">
          <div class="feature-box"> <i class="icon-earphones-alt icons"></i>
            <div class="content">
              <h6>Support 24/7 For Clients</h6>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-xs-12 col-sm-6">
          <div class="feature-box"> <i class="icon-like icons"></i>
            <div class="content">
              <h6>100% Satisfaction Guarantee</h6>
            </div>
          </div>
        </div>
        <div class="col-md-3 col-xs-12 col-sm-6">
          <div class="feature-box last"> <i class="icon-tag icons"></i>
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
                <li><a href="#" title="Returns &amp; Exchange">Returns &amp; Exchange</a></li>
                <li><a href="#" title="Shipping Options">Shipping Options</a></li>
                <li><a href="#" title="Help &amp; FAQs">Help &amp; FAQs</a></li>
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
                    <p>Subscribe to be the first to know about Sales, Events, and Exclusive Offers!</p>
                    <input class="newsletter-email" name='Email' placeholder='Enter Your Email'>
                    <button class="button subscribe" type="submit" title="Subscribe">Subscribe</button>
                  </div>
                </form>
              </div>
              <div class="social">
                <h4>Follow Us</h4>
                <ul class="inline-mode">
                  <li class="social-network fb"><a title="Connect us on Facebook" target="_blank" href="#"><i class="fa fa-facebook"></i></a></li>
                  <li class="social-network googleplus"><a title="Connect us on Google+" target="_blank" href="#"><i class="fa fa-google-plus"></i></a></li>
                  <li class="social-network tw"><a title="Connect us on Twitter" target="_blank" href="#"><i class="icon-social-twitter icons"></i></a></li>
                  <li class="social-network linkedin"><a title="Connect us on Linkedin" target="_blank" href="#"><i class="fa fa-linkedin"></i></a></li>
                  <li class="social-network rss"><a title="Connect us on rss" target="_blank" href="#"><i class="fa fa-rss"></i></a></li>
                  <li class="social-network instagram"><a title="Connect us on Instagram" target="_blank" href="#"><i class="fa fa-instagram"></i></a></li>
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
          <div style="text-align:center"> <a href="index.html"><img src="images/footer-logo.png" alt="logo"> </a> </div>
          <address>
          <p> <i class="fa fa-map-marker"></i>Company, 12/34 - West 21st Street, New York, USA </p>
          <p><i class="fa fa-mobile"></i><span>+ (800) 0123 456 789</span> </p>
          <p> <i class="fa fa-envelope"></i><span><a href="mailto:email@domain.com">support@themes.com</a></span></p>
          </address>
        </div>
      </div>
    </div>
    <div class="footer-bottom">
      <div class="container">
        <div class="row">
          <div class="col-sm-5 col-xs-12 coppyright">Copyright &copy; 2018.Company name All rights reserved.<a target="_blank" href="http://www.17sucai.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></div>
          <div class="col-sm-7 col-xs-12 payment-accept">
            <ul>
              <li> <a href="#"><img src="images/payment-1.png" alt="Payment Card"></a> </li>
              <li> <a href="#"><img src="images/payment-2.png" alt="Payment Card"></a> </li>
              <li> <a href="#"><img src="images/payment-3.png" alt="Payment Card"></a> </li>
              <li> <a href="#"><img src="images/payment-4.png" alt="Payment Card"></a> </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </footer>
  
</div>

<!-- End Footer --> 

<!-- jquery js --> 
<script src="js/jquery.min.js"></script> 

<!-- bootstrap js --> 
<script src="js/bootstrap.min.js"></script> 

<!-- owl.carousel.min js --> 
<script src="js/owl.carousel.min.js"></script> 

<!-- jtv-jtv-mobile-menu js --> 
<script src="js/jtv-mobile-menu.js"></script> 

<!-- countdown js --> 
<script src="js/countdown.js"></script> 

<!-- main js --> 
<script src="js/main.js"></script> 

<!-- rev-slider js --> 
<script src="js/rev-slider.js"></script> 
<script src='js/snowfall.min.js'></script> 
<script>



				jQuery(document).ready(function() {
				
					
								
					jQuery('.tp-banner').show().revolution(
					{
						dottedOverlay:"none",
						delay:16000,
						startwidth:1920,
						startheight:600,
						hideThumbs:200,
						
						thumbWidth:100,
						thumbHeight:50,
						thumbAmount:5,
						
						navigationType:"none",
						navigationArrows:"solo",
						navigationStyle:"none",
						
						touchenabled:"on",
						onHoverStop:"on",
						
						swipe_velocity: 0.7,
						swipe_min_touches: 1,
						swipe_max_touches: 1,
						drag_block_vertical: false,
												
						parallax:"mouse",
						parallaxBgFreeze:"on",
						parallaxLevels:[7,4,3,2,5,4,3,2,1,0],
												
						keyboardNavigation:"off",
						
						navigationHAlign:"center",
						navigationVAlign:"bottom",
						navigationHOffset:0,
						navigationVOffset:20,

						soloArrowLeftHalign:"left",
						soloArrowLeftValign:"center",
						soloArrowLeftHOffset:20,
						soloArrowLeftVOffset:0,

						soloArrowRightHalign:"right",
						soloArrowRightValign:"center",
						soloArrowRightHOffset:20,
						soloArrowRightVOffset:0,
								
						shadow:0,
						fullWidth:"on",
						fullScreen:"off",

						spinner:"none",
						
						stopLoop:"off",
						stopAfterLoops:-1,
						stopAtSlide:-1,

						shuffle:"off",
						
						autoHeight:"off",						
						forceFullWidth:"off",						
												
						hideTimerBar:"on",												
						hideThumbsOnMobile:"off",
						hideNavDelayOnMobile:1500,						
						hideBulletsOnMobile:"off",
						hideArrowsOnMobile:"off",
						hideThumbsUnderResolution:0,
						
						hideSliderAtLimit:0,
						hideCaptionAtLimit:0,
						hideAllCaptionAtLilmit:0,
						startWithSlide:0,
						videoJsPath:"rs-plugin/videojs/",
						fullScreenOffsetContainer: ""	
					});
					
					
         snowFall.snow(document.getElementById("slider"), {image : "images/flake.png", minSize: 1, maxSize:12});
                   
   
					

				});	//ready
				
				
			</script><!-- Hot Deals Timer 1--> 
			<script>
var dthen1 = new Date("12/25/17 11:59:00 PM");
start = "08/04/15 03:02:11 AM";
start_date = Date.parse(start);
var dnow1 = new Date(start_date);
if (CountStepper > 0)
ddiff = new Date((dnow1) - (dthen1));
else
ddiff = new Date((dthen1) - (dnow1));
gsecs1 = Math.floor(ddiff.valueOf() / 1000);

var iid1 = "countbox_1";
CountBack_slider(gsecs1, "countbox_1", 1);
</script> 
			<!--Newsletter Popup Start-->
            <div id="myModal" class="modal fade">
  <div class="modal-dialog newsletter-popup">
                <div class="modal-content">
      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
      <div class="modal-body">
                    <h4 class="modal-title">NEWSLETTER SIGNUP</h4>
                    <form id="newsletter-form" method="post" action="#">
          <div class="content-subscribe">
                        <div class="form-subscribe-header">
              <label>Subscribe to be the first to know about Sales, Events, and Exclusive Offers!</label>
            </div>
                        <div class="input-box">
              <input type="text" class="input-text newsletter-subscribe" title="Sign up for our newsletter" name="email" placeholder="Enter your email address">
            </div>
                        <div class="actions">
              <button class="button-subscribe" title="Subscribe" type="submit">Subscribe</button>
            </div>
                      </div>
        </form>
                    <div class="subscribe-bottom">
          <input name="notshowpopup" id="notshowpopup" type="checkbox">
          Don’t show this popup again </div>
                  </div>
    </div>
              </div>
</div>
            <!--End of Newsletter Popup-->
<script>

//加载地图，调用浏览器定位服务
var map, geolocation,lat,lng;
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

    });
    map.setLang("zh_en");
    map.addControl(geolocation);
    geolocation.getCurrentPosition();
    AMap.event.addListener(geolocation, 'complete', onComplete);//返回定位信息
    AMap.event.addListener(geolocation, 'error', onError);      //返回定位出错信息
});

//解析定位结果
function onComplete(data) {
    lat=data.position.getLat();
    lng=data.position.getLng(); 
    $.ajax({
		url: "/rrsWeb/distance",
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
  
}
//解析定位错误信息
function onError(data) {
    alert("failure");
}

var allList = new Array();
var hotList = new Array();
var foodList = new Array();
var fashionList = new Array();
var healthList = new Array();
var hotelList = new Array();
var nearList = new Array();
var reviewList = new Array();

//初始化页面
$().ready( function() {
	//var page = 1;
 	$.ajax({
	url: "/rrsWeb/loadIndexGrid",
	type: "POST",
	async:false,
	data: {
	
	},  
	success: function(res){
		allList = JSON.parse(res);
				
		console.log(allList);
		//console.log(allList[0]);
		
		hotList = allList[0];
		$("#hot-grid").append(showGrid(hotList,"hot",0));
		
		foodList = allList[1];
		$("#food-grid").append(showGrid(foodList,"food",1));
		
		fashionList = allList[2];
		$("#fashion-grid").append(showGrid(fashionList,"fashion",2));
		
		healthList = allList[3];
		$("#health-grid").append(showGrid(healthList,"health",3));
		
		hotelList = allList[4];
		$("#hotel-grid").append(showGrid(hotelList,"hotel",4));
		
		nearList = allList[5];
		$("#near-grid").append(showGrid(nearList,"near",5));
			
		//showHot();
	},
	error: function(err){
		console.error(err);
		console.log("bbb");
	}
	}); 
 	
 	
 	
 	
} ); 


function clearDiv(id) 
{ 
    var nodes = $(id).childNodes;
 
    for(var i = 0 ; i < nodes.length ; i++)
    {
        if(nodes[i].type == 'text')
        {
            nodes[i].value = '';
        }
    }
} 



//跳转到详情页
function goToDetail(id){
	var business_id = "";
	business_id = id;
	console.log(business_id);
	
	$.ajax({
		url: "/rrsWeb/indexToDetail",
		type: "POST",
		async:false,
		data: {
			"business_id":business_id

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

//首页展示分类shop
function goToKindGrid(id){
	
	alert("sss"+id);
	$.ajax({
		url: "/rrsWeb/indexToKindGrid",
		type: "POST",
		async:false,
		data: {
			"cateId":id,
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

function showGrid(list,tag,num){
	
	var htmlStr = "";
	for(var i =0; i<list.length; i++){
		var obj = list[i];

	    htmlStr += "<li class=\"item col-lg-3 col-md-3 col-sm-4 col-xs-6\">";
	    htmlStr += "<div class=\"item-inner\">";
	    htmlStr += "<div class=\"item-img\">";
	    htmlStr += "<div class=\"item-img-info\"> <a class=\"product-image\" href=\"shop/detail\" onclick=\"goToDetail(\'"+obj.id+"\',\'"+num+"\')\" \>";
	    htmlStr += "<img alt=\"Product Title Here\" title=\""+obj.name + "\" src=\""+obj.img[0]+"\">";
	    htmlStr += "</a>";
	    htmlStr += "<div class=\"new-label new-top-left\">"+tag+"</div>";
	    htmlStr += "</div>";
	    htmlStr += "<div>";
	    htmlStr += " <div class=\"item-info\">";
	    htmlStr += "<div class=\"info-inner\">";
	    htmlStr += "<div class=\"item-title\"> <a href=\"shop/detail\" onclick=\"goToDetail(\'"+num+"\',\'"+obj.name+"\')\ title=\""+obj.name + "\">" +obj.name +"</a> </div>";
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
	
	return htmlStr;
	
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



