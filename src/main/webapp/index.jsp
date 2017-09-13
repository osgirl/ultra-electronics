<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ultra Electronics</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/css.css" rel="stylesheet">
    <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body style="background-color: #ebebed">
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container" style="">
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav navbar-right">
                <li class="header">
                    <a href="shopping_cart.html" style="color: #ffffff">
                        <i class="fa fa-address-book" aria-hidden="true"></i>
                        &nbsp;
                        <b>My Account</b></a>
                </li>
                <li class="header">
                    <a href="wish_list.html" style="color: #ffffff">
                        <i class="fa fa-list" aria-hidden="true"></i>
                        &nbsp;
                        <b>Wish List</b>
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-left">
                <li>
                    <a href="#" style="color: #ffffff">
                        <i class="fa fa-phone" aria-hidden="true"></i>
                        &nbsp;
                        <b>Call us: +94712255222</b>
                    </a>
                </li>
                <li>
                    <a href="#" style="color: #ffffff">
                        <i class="fa fa-envelope-o" aria-hidden="true"></i>
                        &nbsp;
                        <b>Email: info@ultraelectronics.com</b>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="banner">
    <img id="banner" src="images/banner.jpg" alt="banner">
</div>

<nav style="background-color: #000509 !important;" class="navbar navbar-default" role="navigation">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <div class="col-xs-push-0 col-md-3">
                <form class="navbar-form" role="search">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search" name="q">
                        <div class="input-group-btn">
                            <button class="btn btn-default" type="submit">
                                <i class="fa fa-search" aria-hidden="true"></i>
                            </button>
                        </div>
                    </div>
                </form>
            </div>
            <ul class="nav navbar-nav navbar-right">
                <li class="lst" style="">
                    <a class="btn_nav" style="color: white ; background-color: #969991" href="index.jsp">
                        &nbsp;&nbsp;&nbsp;Home&nbsp;&nbsp;&nbsp;
                    </a>
                </li>
                <li class="dropdown">
                    <a style="color: white ; font-weight: bold" href="#" class="dropdown-toggle" data-toggle="dropdown">
                        &nbsp;&nbsp;Products<b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Development Boards</a></li>
                        <li><a href="#">Modules & Sensors</a></li>
                        <li><a href="#">Moters & Chasis</a></li>
                        <li><a href="#">Battries & Chargers</a></li>
                        <li><a href="#">Active Elements</a></li>
                        <li><a href="#">Passive Elements</a></li>
                        <li><a href="#">Tools</a></li>
                    </ul>
                </li>
                <li class="lst"><a class="btn_nav" href="faqs.html">&nbsp;&nbsp;&nbsp;FAQs&nbsp;&nbsp;&nbsp;</a></li>
                <li class="lst"><a class="btn_nav" href="about_Us.html">&nbsp;About Us&nbsp;</a></li>
                <li class="dropdown">
                    <a style="color: white ; font-weight: bold" href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Contact Us<b class="caret"></b>
                    </a>
                    <ul style="color: black ; background-color: white ; width: 100% !important;" class="dropdown-menu">
                        <li style="padding-left: 8px">
                            Address :<br>No 167 1/1, <br>Colombo road, <br>Galle, <br>Srin Lanka.<br>
                        </li>
                        <li class="divider"></li>
                        <li style="padding-left: 8px">Email : <br>info@lankatronics.com<br></li>
                        <li class="divider"></li>
                        <li style="padding-left: 8px">Phone : <br>+94 11 2735220<br></li>
                        <li class="divider"></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a style="color: white ; font-weight: bold" href="user.html" class="dropdown-toggle" data-toggle="dropdown">
                        &nbsp;Sign In / Sign Up&nbsp;<b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="user.html">User Sign In</a></li>
                        <li><a href="admin.html">Admin Sign In</a></li>
                        <li><a href="user.html">Sign Up</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div>
</nav>
<div class="row">
    <div class="col-md-3 col-xs-4">
        <div class="row">
            <div id="cat_box" class="box" style="">
                <span style="color: white ; font-size: large ; font-weight: bold">Catagories</span>
                <br>
                <br>
                <ul style="color: white" class="sidebar-menu">
                    <!-- Open menu item -->
                    <li style="color: white" class="sidebar-menu-item open">
                        <a style="color: white" href="#" class="sidebar-menu-button">Development Boards</a>
                        <!-- Submenu -->
                        <ul class="sidebar-submenu">
                            <li class="sidebar-menu-item active">
                                <a style="color: white" href="#" class="sidebar-menu-button">Active menu item</a>
                            </li>
                            <li class="sidebar-menu-item">
                                <a style="color: white" href="#" class="sidebar-menu-button">Regular menu item</a>
                            </li>
                        </ul>
                    </li>
                    <br>
                    <!-- Menu item -->
                    <li class="sidebar-menu-item">
                        <a style="color: white" href="#" class="sidebar-menu-button">Modules & Sensors</a>
                        <!-- Submenu -->
                        <ul class="sidebar-submenu">
                            <li class="sidebar-menu-item">
                                <a style="color: white" href="#" class="sidebar-menu-button">Another menu item</a>
                            </li>
                            <li class="sidebar-menu-item">
                                <a style="color: white" href="#" class="sidebar-menu-button">Regular menu item</a>
                            </li>
                        </ul>
                    </li>
                    <br>
                    <!-- Menu item -->
                    <li class="sidebar-menu-item">
                        <a style="color: white" href="#" class="sidebar-menu-button">Moters & Chasis</a>
                        <!-- Submenu -->
                        <ul class="sidebar-submenu">
                            <li class="sidebar-menu-item">
                                <a style="color: white" href="#" class="sidebar-menu-button">Another menu item</a>
                            </li>
                            <li class="sidebar-menu-item">
                                <a style="color: white" href="#" class="sidebar-menu-button">Regular menu item</a>
                            </li>
                        </ul>
                    </li>
                    <br>
                    <!-- Menu item -->
                    <li class="sidebar-menu-item">
                        <a style="color: white" href="#" class="sidebar-menu-button">Battries & Chargers</a>
                        <!-- Submenu -->
                        <ul class="sidebar-submenu">
                            <li class="sidebar-menu-item">
                                <a style="color: white" href="#" class="sidebar-menu-button">Another menu item</a>
                            </li>
                            <li class="sidebar-menu-item">
                                <a style="color: white" href="#" class="sidebar-menu-button">Regular menu item</a>
                            </li>
                        </ul>
                    </li>
                    <br>
                    <!-- Menu item -->
                    <li class="sidebar-menu-item">
                        <a style="color: white" href="#" class="sidebar-menu-button">Active Elements</a>
                        <!-- Submenu -->
                        <ul class="sidebar-submenu">
                            <li class="sidebar-menu-item">
                                <a style="color: white" href="#" class="sidebar-menu-button">Another menu item</a>
                            </li>
                            <li class="sidebar-menu-item">
                                <a style="color: white" href="#" class="sidebar-menu-button">Regular menu item</a>
                            </li>
                        </ul>
                    </li>
                    <br>
                    <!-- Menu item -->
                    <li class="sidebar-menu-item">
                        <a style="color: white" href="#" class="sidebar-menu-button">Passive Elements</a>
                        <!-- Submenu -->
                        <ul class="sidebar-submenu">
                            <li class="sidebar-menu-item">
                                <a style="color: white" href="#" class="sidebar-menu-button">Another menu item</a>
                            </li>
                            <li class="sidebar-menu-item">
                                <a style="color: white" href="#" class="sidebar-menu-button">Regular menu item</a>
                            </li>
                        </ul>
                    </li>
                    <br>
                    <!-- Menu item -->
                    <li class="sidebar-menu-item">
                        <a style="color: white" href="#" class="sidebar-menu-button">Tools</a>
                        <!-- Submenu -->
                        <ul class="sidebar-submenu">
                            <li class="sidebar-menu-item">
                                <a style="color: white" href="#" class="sidebar-menu-button">Another menu item</a>
                            </li>
                            <li class="sidebar-menu-item">
                                <a style="color: white" href="#" class="sidebar-menu-button">Regular menu item</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <br>
                <br>
            </div>
        </div>
        <div class="row">
            <div id="new_arr_box" class="box" style="padding: 20px">
                <span style="color: white ; font-size: large ; font-weight: bold">New Arrivals</span>
                <br>
                <br>
                <img style="width: 100%" src="images/faq_pi3.png " alt="rasberry_pi_3">
                <br>
                <br>
                <span style="font-size: medium ; font-weight: bold ; color: #34495E">Rasberry PI 3</span>
                <br>
                <br>
                <img style="width: 100%" src="images/faq_pi3.png " alt="rasberry_pi_3">
                <br>
                <br>
                <span style="font-size: medium ; font-weight: bold ; color: #34495E">Rasberry PI 3</span>
                <br>
                <br>
            </div>
        </div>
    </div>
    <div class="col-md-9 col-xs-8">
        <div class="box" style="border-width: 20px">
            <div class="row" style="">
                <div class="col-md-4 col-xs-4">
                    <div class="box" style="background: linear-gradient(#66e6f3, #1b8fd8) ; padding: 20px ; margin-top: 30px ; margin-right: 10px ; height: auto ; border-radius: 5px ">
                        <img src="images/ARDUINO_UNO.png" alt="arduino uno" style="width: 100% ">
                        <span style="font-size: medium ; font-weight: bold ; color: #1B4F72">Arduino Uno R3</span>
                        <br>
                        <br>
                        <label style="">Out of Stock</label>
                        <br>
                        <button type="button" class="btn btn-success">Buy It Now</button>
                        <button type="button" class="btn btn-primary">Add to wish list</button>
                        <br>
                    </div>
                </div>
                <div class="col-md-4 col-xs-4">
                    <div class="box" style="padding: 20px ; background: linear-gradient(#66e6f3, #1b8fd8) ; margin-top: 30px ; margin-right: 10px ; height: auto ; border-radius: 5px ">
                        <img src="images/ARDUINO_UNO.png" alt="arduino uno" style="width: 100% ">
                        <span style="font-size: medium ; font-weight: bold ; color: #1B4F72">Arduino Uno R3</span>
                        <br>
                        <br>
                        <label style="">Out of Stock</label>
                        <br>
                        <button type="button" class="btn btn-success">Buy It Now</button>
                        <button type="button" class="btn btn-primary">Add to wish list</button>
                        <br>
                    </div>
                </div>
                <div class="col-md-4 col-xs-4">
                    <div class="box" style="padding: 20px ; background: linear-gradient(#66e6f3, #1b8fd8) ; margin-top: 30px ; margin-right: 10px ; height: auto ; border-radius: 5px ">
                        <img src="images/ARDUINO_UNO.png" alt="arduino uno" style="width: 100% ">
                        <span style="font-size: medium ; font-weight: bold ; color: #1B4F72">Arduino Uno R3</span>
                        <br>
                        <br>
                        <label style="">Out of Stock</label>
                        <br>
                        <button type="button" class="btn btn-success">Buy It Now</button>
                        <button type="button" class="btn btn-primary">Add to wish list</button>
                        <br>
                    </div>
                </div>
            </div>
            <div class="row" style="">
                <div class="col-md-4 col-xs-4">
                    <div class="box" style="padding: 20px ; background: linear-gradient(#66e6f3, #1b8fd8) ; margin-top: 30px ; margin-right: 10px ; height: auto ; border-radius: 5px ">
                        <img src="images/ARDUINO_UNO.png" alt="arduino uno" style="width: 100%">
                        <span style="font-size: medium ; font-weight: bold ; color: #1B4F72">Arduino Uno R3</span>
                        <br>
                        <br>
                        <label style="">Out of Stock</label>
                        <br>
                        <button type="button" class="btn btn-success">Buy It Now</button>
                        <button type="button" class="btn btn-primary">Add to wish list</button>
                        <br>
                    </div>
                </div>
                <div class="col-md-4 col-xs-4">
                    <div class="box" style="padding: 20px ; background: linear-gradient(#66e6f3, #1b8fd8) ; margin-top: 30px ; margin-right: 10px ; height: auto ; border-radius: 5px ">
                        <img src="images/ARDUINO_UNO.png" alt="arduino uno" style="width: 100% ">
                        <span style="font-size: medium ; font-weight: bold ; color: #1B4F72">Arduino Uno R3</span>
                        <br>
                        <br>
                        <label style="">Out of Stock</label>
                        <br>
                        <button type="button" class="btn btn-success">Buy It Now</button>
                        <button type="button" class="btn btn-primary">Add to wish list</button>
                        <br>
                    </div>
                </div>
                <div class="col-md-4 col-xs-4">
                    <div class="box" style="padding: 20px ; background: linear-gradient(#66e6f3, #1b8fd8) ; margin-top: 30px ; margin-right: 10px ; height: auto ; border-radius: 5px ">
                        <img src="images/ARDUINO_UNO.png" alt="arduino uno" style="width: 100% ">
                        <span style="font-size: medium ; font-weight: bold ; color: #1B4F72">Arduino Uno R3</span>
                        <br>
                        <br>
                        <label style="">Out of Stock</label>
                        <br>
                        <button type="button" class="btn btn-success">Buy It Now</button>
                        <button type="button" class="btn btn-primary">Add to wish list</button>
                        <br>
                    </div>
                </div>
            </div>
            <div class="row" style="">
                <div class="col-md-4 col-xs-4">
                    <div class="box" style="padding: 20px ; background: linear-gradient(#66e6f3, #1b8fd8) ; margin-top: 30px ; margin-right: 10px ; margin-bottom: 30px ; height: auto ; border-radius: 5px ">
                        <img src="images/ARDUINO_UNO.png" alt="arduino uno" style="width: 100% ">
                        <span style="font-size: medium ; font-weight: bold ; color: #1B4F72">Arduino Uno R3</span>
                        <br>
                        <br>
                        <label style="">Out of Stock</label>
                        <br>
                        <button type="button" class="btn btn-success">Buy It Now</button>
                        <button type="button" class="btn btn-primary">Add to wish list</button>
                        <br>
                    </div>
                </div>
                <div class="col-md-4 col-xs-4">
                    <div class="box" style="padding: 20px ; background: linear-gradient(#66e6f3, #1b8fd8) ; margin-top: 30px ; margin-right: 10px ; margin-bottom: 30px ; height: auto ; border-radius: 5px ">
                        <img src="images/ARDUINO_UNO.png" alt="arduino uno" style="width: 100% ">
                        <span style="font-size: medium ; font-weight: bold ; color: #1B4F72">Arduino Uno R3</span>
                        <br>
                        <br>
                        <label style="">Out of Stock</label>
                        <br>
                        <button type="button" class="btn btn-success">Buy It Now</button>
                        <button type="button" class="btn btn-primary">Add to wish list</button>
                        <br>


                    </div>
                </div>
                <div class="col-md-4 col-xs-4">
                    <div class="box" style="padding: 20px ; background: linear-gradient(#66e6f3, #1b8fd8) ; margin-top: 30px ; margin-right: 10px ; margin-bottom: 30px ; height: auto ; border-radius: 5px ">
                        <img src="images/ARDUINO_UNO.png" alt="arduino uno" style="width: 100% ">
                        <span style="font-size: medium ; font-weight: bold ; color: #1B4F72">Arduino Uno R3</span>
                        <br>
                        <br>
                        <label style="">Out of Stock</label>
                        <br>
                        <button type="button" class="btn btn-success">Buy It Now</button>
                        <button type="button" class="btn btn-primary">Add to wish list</button>
                        <br>
                    </div>
                </div>
            </div>
            <div class="row" style="">
                <div class="col-md-4 col-xs-4">
                    <div class="box" style="padding: 20px ; background: linear-gradient(#66e6f3, #1b8fd8) ; margin-top: 30px ; margin-right: 10px ; margin-bottom: 30px ; height: auto ; border-radius: 5px ">
                        <img src="images/ARDUINO_UNO.png" alt="arduino uno" style="width: 100% ">
                        <span style="font-size: medium ; font-weight: bold ; color: #1B4F72">Arduino Uno R3</span>
                        <br>
                        <br>
                        <label style="">Out of Stock</label>
                        <br>
                        <button type="button" class="btn btn-success">Buy It Now</button>
                        <button type="button" class="btn btn-primary">Add to wish list</button>
                        <br>
                    </div>
                </div>
                <div class="col-md-4 col-xs-4">
                    <div class="box" style="padding: 20px ; background: linear-gradient(#66e6f3, #1b8fd8) ; margin-top: 30px ; margin-right: 10px ; margin-bottom: 30px ; height: auto ; border-radius: 5px ">
                        <img src="images/ARDUINO_UNO.png" alt="arduino uno" style="width: 100% ">
                        <span style="font-size: medium ; font-weight: bold ; color: #1B4F72">Arduino Uno R3</span>
                        <br>
                        <br>
                        <label style="">Out of Stock</label>
                        <br>
                        <button type="button" class="btn btn-success">Buy It Now</button>
                        <button type="button" class="btn btn-primary">Add to wish list</button>
                        <br>
                    </div>
                </div>
                <div class="col-md-4 col-xs-4">
                    <div class="box" style="padding: 20px ; background: linear-gradient(#66e6f3, #1b8fd8) ; margin-top: 30px ; margin-right: 10px ; margin-bottom: 30px ; height: auto ; border-radius: 5px ">
                        <img src="images/ARDUINO_UNO.png" alt="arduino uno" style="width: 100% ">
                        <span style="font-size: medium ; font-weight: bold ; color: #1B4F72">Arduino Uno R3</span>
                        <br>
                        <br>
                        <label style="">Out of Stock</label>
                        <br>
                        <button type="button" class="btn btn-success">Buy It Now</button>
                        <button type="button" class="btn btn-primary">Add to wish list</button>
                        <br>
                    </div>
                </div>
            </div>
            <div class="row" style="">
                <div class="col-md-4 col-xs-4">
                    <div class="box" style="padding: 20px ; background: linear-gradient(#66e6f3, #1b8fd8) ; margin-top: 30px ; margin-right: 10px ; margin-bottom: 30px ; height: auto ; border-radius: 5px ">
                        <img src="images/ARDUINO_UNO.png" alt="arduino uno" style="width: 100% ">
                        <span style="font-size: medium ; font-weight: bold ; color: #1B4F72">Arduino Uno R3</span>
                        <br>
                        <br>
                        <label style="">Out of Stock</label>
                        <br>
                        <button type="button" class="btn btn-success">Buy It Now</button>
                        <button type="button" class="btn btn-primary">Add to wish list</button>
                        <br>
                    </div>
                </div>
                <div class="col-md-4 col-xs-4">
                    <div class="box" style="padding: 20px ; background: linear-gradient(#66e6f3, #1b8fd8) ; margin-top: 30px ; margin-right: 10px ; margin-bottom: 30px ; height: auto ; border-radius: 5px ">
                        <img src="images/ARDUINO_UNO.png" alt="arduino uno" style="width: 100% ">
                        <span style="font-size: medium ; font-weight: bold ; color: #1B4F72">Arduino Uno R3</span>
                        <br>
                        <br>
                        <label style="">Out of Stock</label>
                        <br>
                        <button type="button" class="btn btn-success">Buy It Now</button>
                        <button type="button" class="btn btn-primary">Add to wish list</button>
                        <br>
                    </div>
                </div>
                <div class="col-md-4 col-xs-4">
                    <div class="box" style="padding: 20px ; background: linear-gradient(#66e6f3, #1b8fd8) ; margin-top: 30px ; margin-right: 10px ; margin-bottom: 30px ; height: auto ; border-radius: 5px ">
                        <img src="images/ARDUINO_UNO.png" alt="arduino uno" style="width: 100% ">
                        <span style="font-size: medium ; font-weight: bold ; color: #1B4F72">Arduino Uno R3</span>
                        <br>
                        <br>
                        <label style="">Out of Stock</label>
                        <br>
                        <button type="button" class="btn btn-success">Buy It Now</button>
                        <button type="button" class="btn btn-primary">Add to wish list</button>
                        <br>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer">@ Ultra Electronics web store - Galle</div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>