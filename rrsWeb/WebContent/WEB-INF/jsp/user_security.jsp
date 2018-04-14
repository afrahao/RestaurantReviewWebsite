<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<link rel="stylesheet" type="text/css" href="../css/user-info.css" />
<link rel="stylesheet" href="../style.css">




<!-- dynamic table -->


<style>
em{font-style:normal;}

.main{
	width:796px;
	margin:10px auto;
	font-size:14px;
}

.main label1{
	color: rgb(219,112,147);
	font-size:18px;
}

.main label2{
	color: rgb(128,128,128);
	font-size:18px;
	
}

.main h3{
	color: rgb(128,128,128);
	font-size:18px;
	margin-top:0px;
}

.main h2{
	text-align:center;
	line-height:50px;
	margin-top:20px;
	color:#555;
}

.label-box{
	width:732px;
	min-height:200px;
	padding:10px;
	border:2px solid #DB7093;
	overflow:hidden;
	border-radius:3px;
	margin-bottom:20px;
	width:95%;
}

.label-box span{
	display:inline-block;
	background:#DB7093;
	padding:6px 14px;
	color:#fff;
	border-radius:3px;
	margin:0 3px;
	margin-top:10px;
}

.select-box{

	overflow:hidden;
	-webkit-box-flex:1;
	-moz-box-flex:1;
	box-flex:1;
	flex-direction: column;
	
}
.select-list{
	float:left;
	padding:20px;
	margin-top:20px;
	border:1px solid rgb(220,220,220);
	border-radius:3px;
	flex-wrap: wrap;
	clear:both;
	margin-top:10px;
	width:95%;
}
.select-list span{
	display:inline-block;
	padding:6px 14px;
	font-size:14px;
	background:#eee;
	color:#696969;
	text-align:center;
	border-radius:3px;
	margin:0 3px;
	cursor:pointer;
	margin-top:10px;
}
.select-list .cur{
	background:#696969;
	color:#fff;
}

#btn-choose,
#btn-save{
	outline:none;
	display:block;
	width:100px;
	text-align:center;
	padding:6px 0;
	margin:20px auto;
	border:1px solid #FF9966;
	background:#FF9966;
	color:#fff;
	font-size:14px;
	border-radius:3px;
	cursor:pointer;
} 

.box{
	width: 20px;
	height: 20px;
	padding: 2px;
	border:1px solid #ccc;
	border-radius: 2px;
}
</style>


</head>

<body class="single-product-page">
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
    <li><a href="shop_grid.html">Shop Grid</a></li>
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
      <li><a title="My Account" href="#">My Account</a> </li>
      <li><a title="Wishlist" href="#">Wishlist</a> </li>
      <li><a title="Checkout" href="#">Checkout</a> </li>
      <li><a title="Blog" href="#"><span>Blog</span></a> </li>
      <li class="last"><a title="Login" href="#"><span>Login</span></a> </li>
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
              <div class="welcome-msg hidden-xs">Welcome to Petunia! </div>
              <div class="dropdown jtv-language-box"> <a role="button" data-toggle="dropdown" data-target="#" class="block-language dropdown-toggle" href="#"> <img src="../images/flag-english.jpg" alt="language"> English <span class="caret"></span> </a>
                <ul class="dropdown-menu" role="menu">
                  <li> <a class="selected" href="#"> <img src="../images/flag-english.jpg" alt="flag"> <span>English</span> </a> </li>
                  <li> <a href="#"> <img src="../images/flag-default.jpg" alt="flag"> <span>French</span> </a> </li>
                  <li> <a href="#"> <img src="../images/flag-german.jpg" alt="flag"> <span>German</span> </a> </li>
                  <li> <a href="#"> <img src="../images/flag-brazil.jpg" alt="flag"> <span>Brazil</span> </a> </li>
                  <li> <a href="#"> <img src="../images/flag-chile.jpg" alt="flag"> <span>Chile</span> </a> </li>
                  <li> <a href="#"> <img src="../images/flag-spain.jpg" alt="flag"> <span>Spain</span> </a> </li>
                </ul>
              </div>
              <!-- End Header Language --> 
              
              <!-- Header Currency -->
              <div class="dropdown jtv-currency-box"> <a role="button" data-toggle="dropdown" data-target="#" class="block-currency dropdown-toggle" href="#"> USD <span class="caret"></span></a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#"> $ - Dollar </a> </li>
                  <li><a href="#"> Â£ - Pound </a> </li>
                  <li><a href="#"> â¬ - Euro </a> </li>
                </ul>
              </div>
              <!-- End Header Currency --> 
              
            </div>
            <div class="col-xs-6 hidden-xs"> 
              <!-- Header Top Links -->
              <div class="jtv-top-links">
                <div class="links">
                  <ul>
                    <li> <a title="My Account" href="#"><span class="hidden-xs">My Account</span></a> </li>
                    <li> <a title="Wishlist" href="#">Wishlist</a> </li>
                    <li> <a title="Checkout" href="#"><span class="hidden-xs">Checkout</span></a> </li>
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
                    <li> <a href="#"><span class="hidden-xs">Log In</span></a> </li>
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
                <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"> <a href="#"> <span class="cart_count">2</span><span class="price">My Bag / $259.00</span> </a> </div>
                <div>
                  <div class="jtv-top-cart-content"> 
                    
                    <!--block-subtitle-->
                    <ul class="mini-products-list" id="cart-sidebar">
                      <li class="item first">
                        <div class="item-inner"> <a class="product-image" title="Product Title Here" href="single_product.html"><img alt="Product Title Here" src="../images/products/img01.jpg"> </a>
                          <div class="product-details">
                            <div class="access"><a class="jtv-btn-remove" title="Remove This Item" href="#">Remove</a> <a class="btn-edit" title="Edit item" href="#"><i class="icon-pencil"></i><span class="hidden">Edit item</span></a> </div>
                            <p class="product-name"><a href="#">Product Title Here</a> </p>
                            <strong>1</strong> x <span class="price">$79.99</span> </div>
                        </div>
                      </li>
                      <li class="item">
                        <div class="item-inner"> <a class="product-image" title="Product Title Here" href="single_product.html"><img alt="Product Title Here" src="../images/products/img02.jpg"> </a>
                          <div class="product-details">
                            <div class="access"><a class="jtv-btn-remove" title="Remove This Item" href="#">Remove</a> <a class="btn-edit" title="Edit item" href="#"><i class="icon-pencil"></i><span class="hidden">Edit item</span></a> </div>
                            <p class="product-name"><a href="#">Product Title Here</a> </p>
                            <strong>1</strong> x <span class="price">$88.89</span> </div>
                        </div>
                      </li>
                      <li class="item last">
                        <div class="item-inner"> <a class="product-image" title="Product Title Here" href="single_product.html"><img alt="Product Title Here" src="../images/products/img04.jpg"> </a>
                          <div class="product-details">
                            <div class="access"><a class="jtv-btn-remove" title="Remove This Item" href="#">Remove</a> <a class="btn-edit" title="Edit item" href="#"><i class="icon-pencil"></i><span class="hidden">Edit item</span></a> </div>
                            <p class="product-name"><a href="#">Product Title Here</a> </p>
                            <strong>1</strong> x <span class="price">$85.99</span> </div>
                        </div>
                      </li>
                    </ul>
                    
                    <!--actions-->
                    <div class="actions">
                      <button class="btn-checkout" title="Checkout" type="button" onClick="#"><span>Checkout</span> </button>
                      <a href="#" class="view-cart"><span>View Cart</span></a> </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-md-4 col-sm-4 col-xs-12 jtv-logo-box"> 
            <!-- Header Logo -->
            <div class="logo"> <a title="eCommerce" href="index.html"><img alt="eCommerce" src="../images/logo.png"> </a> </div>
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
          <li class="drop-menu"><a href="shop_grid.html"><span>Shop Grid</span></a></li>
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
                    <div class="jtv-nav-image1"> <a title="" href="#"><img alt="menu_image" src="../images/menu-img1.jpg"> </a> </div>
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
                    <div class="jtv-nav-banner-img"> <a href="#"><img src="../images/menu-img2.jpg" alt="Handbag"> </a> </div>
                  </div>
                  <div class="jtv-banner-box">
                    <div class="jtv-nav-banner-img"> <a href="#"><img src="../images/menu-img3.jpg" alt="Handbag"> </a> </div>
                  </div>
                  <div class="jtv-banner-box jtv-banner-box_last">
                    <div class="jtv-nav-banner-img"> <a href="#"><img src="../images/menu-img4.jpg" alt="Handbag"> </a> </div>
                  </div>
                </div>
              </div>
            </div>
          </li>
          <li class="mega-menu"> <a class="level-top" href="shop_grid.html"><span>Flowers</span></a>
            <div class="jtv-menu-block-wrapper">
              <div class="jtv-menu-block-wrapper2">
                <div class="nav-block jtv-nav-block-center">
                  <ul class="level0">
                    <li class="parent item"> <a href="shop_grid.html"><span>Christmas Bouquets</span></a>
                      <ul class="level1">
                        <li> <a href="shop_grid.html"><span>Funeral</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Get Well</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Lady Dior Mascara</span></a> </li>
                        <li> <a href="shop_grid.html"><span>GoodSkin Labs</span></a> </li>
                      </ul>
                    </li>
                    <li class="parent item"> <a href="shop_grid.html"><span>Birthday Flowers</span></a>
                      <ul class="level1">
                        <li> <a href="shop_grid.html"><span>Popular Belief</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Window plants</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Bushes</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Trees</span></a> </li>
                      </ul>
                    </li>
                    <li class="parent item"> <a href="shop_grid.html"><span>Anniversary Flowers</span></a>
                      <ul class="level1">
                        <li> <a href="shop_grid.html"><span>Aliquam congue</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Sit amet conse</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Sed do eiusmod</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Labore et dolore</span></a> </li>
                      </ul>
                    </li>
                    <li class="parent item"> <a href="shop_grid.html"><span>Family flowers</span></a>
                      <ul class="level1">
                        <li> <a href="shop_grid.html"><span>Herbarium</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Tulips</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Green roses</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Kinds of flowers</span></a> </li>
                      </ul>
                    </li>
                    <li class="parent item"> <a href="shop_grid.html"><span>Corporate</span></a>
                      <ul class="level1">
                        <li> <a href="shop_grid.html"><span>Lily</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Orchids</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Asiatic Lily</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Modern roses</span></a> </li>
                      </ul>
                    </li>
                    <li class="parent item"> <a href="shop_grid.html"><span>Congratulation</span></a>
                      <ul class="level1">
                        <li> <a href="shop_grid.html"><span>Toaster Crossbody</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Piper Bag</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Leather Bag</span></a> </li>
                        <li> <a href="shop_grid.html"><span>Canvas Bag</span></a> </li>
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
                <div class="nav-block nav-block-right std jtv-menu-box-right"><img src="../images/menu-img5.jpg" alt="menu img"> </div>
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
  
    <!-- Main Container -->
  <section class="main-container col2-left-layout">
    <div class="container">
      <div class="row">
        <div class="col-sm-9 col-xs-12 col-sm-push-3">
         
          <article class="col-main">
          	<div id="wrapper">   
                       <div id="user-security-info" >
                            <form  action="mysuperscript.php" autocomplete="on"> 
                                <span id="page-header"> Modify Password </span> 
                                <p> 
                                    <label for="useremail" class="uname" >Your Email Address</label>
                                    <input id="useremail" required="required" type="text"  disabled = "disabled"/>
                                </p>
                                <p >
                                	<button id="verification-btn">Verification Code</button> 
                                	<lable id="verification-info">* error email address</lable>
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail"  > Your Verification Code</label>
                                    <input class="verification-code-input" id="emailsignup" name="emailsignup" required="required" type="text" placeholder="received 6-number code.  eg.123456"/> 
                                    
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd" >Your New password </label>
                                    <input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd" >Please Confirm Your Password </label>
                                    <input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p >
                         			<button id="confirm">OK</button> 
                       
                         		</p>
                                
                            </form>
                            
                        </div>
						
						
                    </div>
	          
	          
          </article>
          <!--	///*///======    End article  ========= //*/// --> 
        </div>
        <div class="sidebar col-sm-3 col-xs-12 col-sm-pull-9">
          <aside class="sidebar">
            <div class="block block-layered-nav">
              <div class="block-title">Personal Info</div>
              <div class="block-content">
              	<!-- -----------------ç¨æ·ä¿¡æ¯-----------------  -->
              	<!-- å¤´å -->
              	<div id="div-center">
              		<div class="avatar-round"></div>
              	</div>
              	
              	
                <user-name-p id="user-title">Kevin</user-name-p>
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
                      <li> <a href="#">Esbeda</a></li>
                    </ol>
                  </dd>
                  <dt class="odd">Handbag Material</dt>
                  <dd class="odd">
                    <ol class="bag-material">
                      <li> 
                        <input type="checkbox" name="Material" value="Beaded">
                        <a href="#">Beaded</a></li>
                      <li> 
                        <input type="checkbox" name="Material" value="Beaded">
                        <a href="#">Canvas</a></li>
                      <li> 
                        <input type="checkbox" name="Material" value="Beaded">
                        <a href="#">Velvet</a></li>
                      <li> 
                        <input type="checkbox" name="Material" value="Beaded">
                        <a href="#">Rubber</a></li>
                      <li> 
                        <input type="checkbox" name="Material" value="Beaded">
                        <a href="#">Leather</a></li>
                    </ol>
                  </dd>
                  <dt class="odd">Color</dt>
                  <dd class="odd">
                    <ol>
                      <li> <a href="#">Green</a> (1) </li>
                      <li> <a href="#">White</a> (5) </li>
                      <li> <a href="#">Black</a> (5) </li>
                      <li> <a href="#">Gray</a> (4) </li>
                      <li> <a href="#">Dark Gray</a> (3) </li>
                      <li> <a href="#">Blue</a> (1) </li>
                    </ol>
                  </dd>
                </dl>
              </div>
            </div>

          </aside>
        </div>
      </div>
    </div>
  </section>
  <!-- Main Container End --> 
  
  </div>
  </body>
  
  
  
  </html>