

<nav class="navbar navbar-default navbar-fixed-top" role="navigation" xmlns:c="http://www.w3.org/1999/XSL/Transform">
    <div class="container" style="">

        <div class="collapse navbar-collapse navbar-ex1-collapse">

        <jsp:include page="${param.menu}"/>

            <ul class="nav navbar-nav navbar-left">
                <li>
                    <a href="#" style="color: #ffffff">
                        <i class="fa fa-phone" aria-hidden="true"></i>
                        &nbsp;
                        <b>Call us: +94712255222</b></a>
                </li>
                <li>
                    <a href="#" style="color: #ffffff">
                        <i class="fa fa-envelope-o" aria-hidden="true"></i>
                        &nbsp;
                        <b>Email: info@ultraelectronics.com</b></a>
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
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <div class="col-sm-3 col-md-3">
                <form class="navbar-form" role="search" action="search.jsp" method="get">
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
                <li class="lst" style=""><a class="btn_nav" style="color: white " href="index.jsp">&nbsp;&nbsp;&nbsp;Home&nbsp;&nbsp;&nbsp;</a>
                </li>
                <%--<li class="dropdown">--%>
                    <%--<a style="color: white ; font-weight: bold" href="#" class="dropdown-toggle" data-toggle="dropdown">--%>
                        <%--&nbsp;&nbsp;Products<b class="caret"></b></a>--%>
                    <%--<ul class="dropdown-menu">--%>
                        <%--<li><a href="#">Development Boards</a></li>--%>
                        <%--<li><a href="#">Modules & Sensors</a></li>--%>
                        <%--<li><a href="#">Moters & Chasis</a></li>--%>
                        <%--<li><a href="#">Battries & Chargers</a></li>--%>
                        <%--<li><a href="#">Active Elements</a></li>--%>
                        <%--<li><a href="#">Passive Elements</a></li>--%>
                        <%--<li><a href="#">Tools</a></li>--%>
                    <%--</ul>--%>
                <%--</li>--%>
                <li class="lst"><a class="btn_nav" href="faqs.jsp">&nbsp;&nbsp;&nbsp;FAQs&nbsp;&nbsp;&nbsp;</a></li>
                <li class="lst"><a class="btn_nav" href="about_us.jsp">&nbsp;&nbsp;&nbsp;About Us&nbsp;&nbsp;&nbsp;</a></li>



                <li class="dropdown">
                    <a style="color: white ; font-weight: bold" href="#" class="dropdown-toggle" data-toggle="dropdown">Contact
                        Us<b class="caret"></b></a>
                    <ul style="color: black ; background-color: white ; width: 100% !important;" class="dropdown-menu">
                        <li style="padding-left: 8px">Address :<br>No 167 1/1, <br>Galle road, <br>Dehiwala, <br>Sri
                            Lanka.<br></li>
                        <li class="divider"></li>
                        <li style="padding-left: 8px">Email : <br>info@lankatronics.com<br></li>
                        <li class="divider"></li>
                        <li style="padding-left: 8px">Phone : <br>+94 11 2735220<br></li>
                        <li class="divider"></li>


                    </ul>
                </li>
                <li class="dropdown">
                    <a style="color: white ; font-weight: bold" href="user.jsp" class="dropdown-toggle"
                       data-toggle="dropdown">&nbsp;Sign In / Sign Up&nbsp;<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="user.jsp">User Sign In</a></li>
                        <li><a href="admin.jsp">Admin Sign In</a></li>
                        <li><a href="user.jsp">Sign Up</a></li>

                    </ul>
                </li>

            </ul>
        </div><!-- /.navbar-collapse -->
    </div>
</nav>