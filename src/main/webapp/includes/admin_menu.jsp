<style>
    .dropdown-menu,
    .dropdown-menu:hover{
        background-color: #333 !important;
    }
    .dropdown-menu li a{
        padding-top: 15px;
        padding-bottom: 15px;
        color: #ffffff;
    }
    .nav .open > a, .nav .open > a:hover, .nav .open > a:focus {
        background-color: #969991 !important;
    }
</style>
<ul class="nav navbar-nav navbar-right">
    <li class="dropdown header">
        <a style="color: white ; font-weight: bold" href="#" class="dropdown-toggle" data-toggle="dropdown">
            <i class="fa fa-dashboard" aria-hidden="true"></i>
            &nbsp; <b>Administration</b> &nbsp;<b class="caret"></b>
        </a>
        <ul class="dropdown-menu">
            <li>
                <a href="list_of_items.jsp">
                    <i class="fa fa-list" aria-hidden="true"></i>
                    &nbsp; <b>Product List</b>
                </a>
            </li>
            <li>
                <a href="manage_products.jsp">
                    <i class="fa fa-cog" aria-hidden="true"></i>
                    &nbsp; <b>Product Management</b></a>
            </li>
            <li>
                <a href="to_send.jsp">
                    <i class="fa fa-envelope-open-o" aria-hidden="true"></i>
                    &nbsp; <b>Order Management</b>
                </a>
            </li>
        </ul>
    </li>
    <li class="header">
        <a href="${pageContext.request.contextPath}/user?action=logout" style="color: #ffffff">
            <i class="fa fa-user-circle" aria-hidden="true"></i>
            &nbsp;
            <b><%=(String)session.getAttribute("username")%> (Logout)</b></a>
    </li>
</ul>