<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>User Account</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/css.css" rel="stylesheet">
    <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">

</head>
<body style="background-color: #ebebed">

<jsp:include page="includes/top_bar.jsp">
    <jsp:param name="menu" value="user_menu.jsp"/>
</jsp:include>

<div class="row">
    <jsp:include page="includes/category_selector.jsp"/>
    <div class="col-md-9 col-xs-8"  >
        <div class="box" style=" height: 100% ; margin: 20px ; margin-left: 0px ; margin-right: 5px ; padding-bottom: 20px ; background-color: white">
            <div class="row" style="">
                <div class="box" style="height: 30px ; background-color: #1b8fd8 ; margin-top: 20px ; margin-right: 40px ; margin-left: 40px ;  padding: 5px ; padding-left: 10px">
                    <span style="color: white ; font-size: medium ; font-weight: bold ">Register or Login </span>
                </div>
            </div>
            <div class="row" style="">
                <div class="box" style="height: 100% ;  margin-top: 20px ; margin-right: 40px ; margin-left: 40px ; padding-top: 10px ; padding-bottom: 10px   ">
                    <div class="panel panel-login">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-6">
                                    <a href="#" class="active" id="login-form-link">Login</a>
                                </div>
                                <div class="col-xs-6">
                                    <a href="#" id="register-form-link">Register</a>
                                </div>
                            </div>
                            <hr>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <form id="login-form" action="${pageContext.request.contextPath}/user" method="post" role="form" style="display: block;">
                                        <div class="form-group">
                                            <input type="text" name="username" id="username1" tabindex="1" class="form-control" placeholder="Username">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="password" id="password1" tabindex="2" class="form-control" placeholder="Password">
                                        </div>
                                        <input type="hidden" name="action" value="login"/>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-sm-6 col-sm-offset-3">
                                                    <input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                    <form id="register-form" action="${pageContext.request.contextPath}/user" method="post" role="form" style="display: none;">
                                        <div class="form-group">
                                            <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Name" value="">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="confmpassword" id="confmpassword" tabindex="2" class="form-control" placeholder="Retype Password">
                                        </div>
                                        <input type="hidden" name="action" value="add"/>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-sm-4 col-sm-offset-1">
                                                    <input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now">
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="footer">@ Ultra Electronics web store - Galle</div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/js.js"></script>
</body>
</html>