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
<link rel="shortcut icon" type="../images/x-icon" href="../favicon.ico">

 <!-- CSS Style -->
<link rel="stylesheet" href="../style.css">
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
      <li><a title="My Account" href="profile" id="myaccountname">${current_user.name}</a> </li>
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
              <div class="welcome-msg hidden-xs">Welcome ${current_user.name} ! </div>
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
<!--                     <li> <a title="My Account" href="profile"  ><span class="hidden-xs" value=${current_user.name} id="username"></span></a> </li>
 -->                    <li> <a title="Wishlist" href="#">Wishlist</a> </li>
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
                    <li> <a href="../user/profile"><span class="hidden-xs" id="navigation-username">${current_user.name}</span></a> </li> 
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
          <li class="drop-menu"><a href="../index" class="level-top active"><span>Home</span></a></li>
          <li class="drop-menu"><a href="../shop/grid"><span>Shop Grid</span></a></li>
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
          <li class="mega-menu"> <a class="level-top" href="shop_grid.html"><span>Dishes</span></a>
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
          
          <!-- 添加favor -->
            <h2 class="page-heading"> <span class="page-heading-title">Modify My Favor</span> </h2>
	          	<div class="main"> 
	    			<label1>Current Favors:</label1> 
				    <div class="label-box"></div>
				    <div >
				    	<label2>All Favors:</label2> 
				    </div>
				    
				    <div class="select-box">
				    
				    	<div class="select-list">
				        
				        </div>
				    
			    	</div>
			    	
	    			<button type="button" id="btn-choose">CHOOSE</button>
	    			<!-- <button type="button" id="btn-save">SAVE TO STORE</button> -->
				</div>
				<script src="../js/jquery-1.10.2.min.js"></script>
				<!-- <script src="../js/user-favor.js"></script> -->

          </article>
          <!--	///*///======    End article  ========= //*/// --> 
        </div>
        <div class="sidebar col-sm-3 col-xs-12 col-sm-pull-9">
          <aside class="sidebar">
            <div class="block block-layered-nav">
              <div class="block-title">Personal Info</div>
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
                      <li> <a class="choose-tag" href="footprint">Footprint</a></li>
                      <li> <a class="choose-tag" href="#">"Like" Restaurant</a></li>
                      <li> <a class="choose-tag" href="#">My Comments</a></li>
                      <li> <a class="choose-tag" href="#">My Coupons</a></li>
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
  
  
  <script>
  var favorContent = ["Western Dish",
                      "Chinese Dish",
                      "Southeast Asia Dish",
                      "Japanese Dish",
                      "Korean Dish",
                      "Franch Dish",
                      "Indian Dish",
                      "Mexican Dish",
                      "Italian Dish",
                      "Muslim Dish",
                      "Other Cuisine",
                      "Hot Pot",
                      "BBQ",
                      "Seafood",
                      "Buffet",
                      "Noodles",
                      "Fast Food",
                      "Cafe",
                      "Dessert & Bakery",
                      "Breakfast",
                      "Vegetarian"];

  var cateList = [{id:21,name:"Women's Clothing"},
                  {id:34,name:"Auto Repair"},
                  {id:103,name:"Nail Salons"},
                  {id:24,name:"Chinese"},
                  {id:94,name:"Pets"},
                  {id:48,name:"Italian"},
                  {id:40,name:"American (New)"},
                  {id:69,name:"Burgers"},
                  {id:72,name:"Home & Garden"},
                  {id:9,name:"Coffee & Tea"},
                  {id:20,name:"Real Estate"},
                  {id:149,name:"Doctors"},
                  {id:10,name:"American (Traditional)"},
                  {id:42,name:"Hair Salons"},
                  {id:144,name:"Mexican"},
                  {id:31,name:"Arts & Entertainment"},
                  {id:45,name:"Sandwiches"},
                  {id:49,name:"Hotels & Travel"},
                  {id:38,name:"Pizza"},
                  {id:50,name:"Event Planning & Services"},
                  {id:0,name:"Active Life"},
                  {id:68,name:"Fast Food"},
                  {id:23,name:"Fashion"},
                  {id:6,name:"Local Services"},
                  {id:25,name:"Bars"},
                  {id:2,name:"Automotive"},
                  {id:17,name:"Nightlife"},
                  {id:134,name:"Health & Medical"},
                  {id:19,name:"Home Services"},
                  {id:44,name:"Beauty & Spas"},
                  {id:4,name:"Food"},
                  {id:14,name:"Shopping"},
                  {id:12,name:"Restaurants"},];

  var initUserFavor = new Array();
  var curUserFavor = new Array();

  function category(id,cateContent)
  {
  	this.id=id;
  	this.content=cateContent;
  }

function generateCate(){
	
	var cateHtml = "<h3 >Shop Tags</h3>";
	
  	for(var i = 0 ; i < cateList.length ; i ++){
  		
  		var str = "<span id=\"tag_"+i+" \"><em class=\"con1-"+i+"\">"+cateList[i].name+"</em></span>";;
  		
  		for(var j = 0 ; j < initUserFavor.length;j++){
  	  		if(cateList[i].id == initUserFavor[j]){
  	  			str = "<span id=\"tag_"+i+"\" class=\"cur\"><em  class=\"con1-"+i+"\">"+cateList[i].name+"</em></span>";
  	  			break;
  	  		}
  	  	}
  		cateHtml += str;
  	}
  	
  	$(".select-list").append(cateHtml); 
  	
	
  	
  	
  }
  
  




$().ready( function() {

	
	
	$.ajax({
		url: "../user/initFavor",
		async:false,
		type: "POST",
		data: {
			
		},  
		
		success: function(res) {
			//发送USERID成功
			//并接收了用户的favorList
			console.log("bbb");
			console.log(res);
			initUserFavor = res;
			function setUserFavor(){


				//curUserFavor = initUserFavor;
				
				var hasCon_html = "";
				
				for(var i =0; i<initUserFavor.length; i++){
					var id = initUserFavor[i];
					
					for(var j = 0 ; j < cateList.length; j ++){
						if(cateList[j].id == id){
							var hasObj = cateList[i].name;
						    hasCon_html += "<span>";
						    hasCon_html += "<em>"+hasObj+"</em>";
						    hasCon_html += "</span>";
						    
						    
						    $("#tag_"+initUserFavor[i].toString()).attr("class","cur");	
						}
					}

				};
				return hasCon_html;
			}

			$(".label-box").append(setUserFavor());
			generateCate();
			
		},
		error: function(err){
			
			console.error(err);
		}
	});
	
	//generateCate();
	console.log("aaa");
		
} ); 

$(function(){
	 

    conConfirm();//确认事件
    
    conChoice();//选择内容

    
});

//选择内容
//选择中内容的当前样式
function conChoice() {

    $(".select-list span").click(function () {

        if($(this).hasClass("cur")){
            $(this).removeClass("cur");
        }else {
            $(this).addClass("cur");
        }

    })
};


////传回后台更新喜好标签
function modifyFavors() {
	
	$.ajax({
		url: "../user/updateFavor",
		type: "POST",
		data: {
			
			"curUserFavor": curUserFavor.join()
		}, 
		success: function(res) {
			console.log("======"+res);
			alert("Change Completed!");
		},
		fail: function(err){
			console.error(err);
		}
	});
	
	
}


//确认事件

function conConfirm() {
        
    var conAdded = $(".label-box span");//已添加的内容
    
    /*将选中的标签添加到面板上*/
    
    //确认点击后触发
    $("#btn-choose").click(function () {
    	
        conAdded.remove();//删除已添加的

        //重新计算快捷按钮选中数量
        function init_html() {
        	
            curUserFavor = [];
            
            var select_iClass_data = [];//选中的内容的em标签的class
            
            var select_conText_data = [];//选中的内容的em标签的文字
           
            var selected_data = []; //清空数组，防止遍历后重复添加
            var has_data =[];             //面板上已有的元素文字
            var has_iclass_data =[];        //面板上已有的元素类
            
            var hasCon_html = "";//面板上的内容
            
            var acticveSelect = null;//选中内容

            acticveSelect = $(".select-list").find(".cur");
            
            $.each(acticveSelect,function (i) {//遍历选中的内容,将元素添加进select_iClass_data数组和select_conText_data数组
                //赋值数组
                select_iClass_data.push(acticveSelect.eq(i).find("em").attr("class"));
                select_conText_data.push(acticveSelect.eq(i).find("em").text());
            });
            //遍历面板上已有的元素
            $.each($(".label-box span"),function (i) {
                has_data.push($(".label-box span").find("em").text());
            });
            
            //addFavors(select_conText_data);

            //去掉重复选择的数据
            function test(a,b) {
                var c = [];
                var tmp = a.concat(b);
                var o = {};
                for (var i = 0; i < tmp.length; i ++) (tmp[i] in o) ? o[tmp[i]] ++ : o[tmp[i]] = 1;
                for (var x in o) if (o[x] == 1) c.push(x);
                return c;
            }

            //将遍历数组循环存入到选中的内容数组中
            for(var i=0; i<test(has_iclass_data,select_iClass_data).length; i++){

                var select_i_class = test(has_iclass_data,select_iClass_data)[i];
                var select_i_con = test(has_data,select_conText_data)[i];
                var select_attr ={"iClass":select_i_class, "conText":select_i_con};
                selected_data.push(select_attr);
                
                curUserFavor.push(contentToId(selected_data[i].conText));

            };
            
            for(var j = 0 ; j <selected_data.length; j ++ ){
            	console.log(selected_data[j].conText);
            }
                

            for(var j =0; j<selected_data.length; j++){

                var hasObj = selected_data[j];
                hasCon_html += "<span>";
                hasCon_html += "<em>"+hasObj.conText+"</em>";
                hasCon_html += "</span>";
            };
            return hasCon_html;
        }
        
        $(".label-box span").remove();
        $(".label-box").append(init_html());
        
        if(isFavorChanged() == 1){
        	//传给后端
            modifyFavors();
            initUserFavor = curUserFavor;
        }
       
    });
    
}
//
//获得标签id
function contentToId(content){
	
	for(var i = 0 ; i < cateList.length; i++){
		if(cateList[i].name==content){
			console.log(cateList[i].id);
			
			return cateList[i].id;
		}
			
	}
}

//判断用户喜好是否更改过
function isFavorChanged(){
	if(curUserFavor.length != initUserFavor.length){

		console.log(curUserFavor.length);
		console.log(initUserFavor.length);
		return 1;
	} else {
		for(var i = 0 ; i < initUserFavor.length ; i++){
			if(curUserFavor[i] != initUserFavor[i]){
				console.log("no2");
				return 1;
			}
		}
		return 0;
	}
}

  
  </script>
  
  
  </body>
  
  
  
  </html>