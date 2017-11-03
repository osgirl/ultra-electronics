<%
    //check if logged in or not
    if(session.getAttribute("username")==null){
        response.sendRedirect("user.jsp");
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Accout Settings</title>
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
    <div class="col-md-9 col-xs-8">
        <div class="single category box" style="border-radius: 2px; margin-top: 20px">
            <h3 class="side-title">CHANGE PASSWORD</h3>
            <div class="details">
                <form id="change-pw-form" action="${pageContext.request.contextPath}/user" method="post" role="form">
                    <div class="form-group">
                        <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Name" value="<%=(String)session.getAttribute("username")%>" disabled>
                    </div>
                    <div class="form-group">
                        <input type="password" name="old-password" id="old-password" tabindex="2" class="form-control" placeholder="Old Password">
                    </div>
                    <div class="form-group">
                        <input type="password" name="new-password" id="new-password" tabindex="2" class="form-control" placeholder="New Password">
                    </div>
                    <input type="hidden" name="action" value="update"/>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-4 col-sm-offset-1">
                                <input type="submit" name="change-pw-submit" id="change-pw-submit" tabindex="4" class="form-control btn btn-register" value="Change Password">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="footer">@ Ultra Electronics web store - Galle</div>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
