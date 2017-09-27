<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Account</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/css.css" rel="stylesheet">
    <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body style="background-color: #ebebed">

<jsp:include page="includes/top_bar.jsp">
    <jsp:param name="menu" value="admin_menu.html"/>
</jsp:include>

<div class="row">
    <div class="col-md-12" >
        <div class="box" style=" height: 100% ; margin: 20px ; margin-left: 0px ; margin-right: 5px ; padding-bottom: 20px ; background-color: white ; padding-right: 20px ; padding-left: 20px">

            <div class="row">
                <div class="row" style="">
                    <div class="box" style="height: 100% ; background-color: #1b8fd8 ; margin-top: 20px ; margin-right: 40px ; margin-left: 40px ;  padding: 5px ; padding-left: 10px">
                        <span style="color: white ; font-size: medium ; font-weight: bold ">Add or Update Items</span>
                    </div>
                </div>
                <div class="row" style="">
                    <div class="box" style="height: 100% ;  margin-top: 20px ; margin-right: 40px ; margin-left: 40px ; padding-top: 10px ; padding-bottom: 10px   ">
                        <div class="panel panel-login">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-6">
                                        <a href="#" class="active" id="login-form-link">Item</a>
                                    </div>
                                    <div class="col-xs-6">
                                        <a href="#" id="register-form-link">Catagory</a>
                                    </div>
                                </div>
                                <hr>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <form id="login-form" action="https://phpoll.com/login/process" method="post" role="form" style="display: block;">
                                            <div class="form-group">
                                                <input type="text" name="Item_id" id="Item_id" tabindex="1" class="form-control" placeholder="Item_id" value="">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="Item_name" id="Item_name" tabindex="1" class="form-control" placeholder="Item_name" value="">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="Item_Description" id="Item_Description" tabindex="1" class="form-control" placeholder="Item_Description" value="">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="Quantity_on_hand" id="Quantity_on_hand" tabindex="1" class="form-control" placeholder="Quantity_on_hand" value="">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="Unit_Price" id="Unit_Price" tabindex="1" class="form-control" placeholder="Unit_Price" value="">
                                            </div>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-sm-4 col-sm-offset-1">
                                                        <input type="submit" name="add-item-submit" id="add-item-submit" tabindex="4" class="form-control btn btn-register" value="Add Item">
                                                    </div>
                                                    <div class="col-sm-4 col-sm-offset-1">
                                                        <input type="submit" name="updated-item-submit" id="updated-item-submit" tabindex="4" class="form-control btn btn-register" value="Update Item">
                                                    </div>
                                                </div>
                                            </div>

                                        </form>
                                        <form id="register-form" action="https://phpoll.com/register/process" method="post" role="form" style="display: none;">
                                            <div class="form-group">
                                                <input type="text" name="Catagory_id" id="Catagory_id" tabindex="1" class="form-control" placeholder="Catagory_id" value="">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="Catagory_name" id="Catagory_name" tabindex="1" class="form-control" placeholder="Catagory_name" value="">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="Catagory_Description" id="Catagory_Description" tabindex="1" class="form-control" placeholder="Catagory_Description" value="">
                                            </div>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-sm-4 col-sm-offset-1">
                                                        <input type="submit" name="add-cat-submit" id="add-cat-submit" tabindex="4" class="form-control btn btn-register" value="Add Catagory">
                                                    </div>
                                                    <div class="col-sm-4 col-sm-offset-1">
                                                        <input type="submit" name="updated-cat-submit" id="updated-cat-submit" tabindex="4" class="form-control btn btn-register" value="Update Catagory">
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

            <br><br>



        </div>
    </div>
</div>


<div class="footer">@ Ultra Electronics web store - Galle</div>


<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/js.js"></script>
</body>
</html>