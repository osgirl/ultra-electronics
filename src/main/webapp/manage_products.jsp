<%
    //check if logged in or not
    if(session.getAttribute("username")==null || !"ADMIN".equals(session.getAttribute("userrole"))){
        response.sendRedirect("index.jsp");
    }
%>

<%@ page import="dto.Category" %>
<%@ page import="controllers.CategoryController" %>
<%@ page import="java.util.List" %>
<%@ page import="dto.Product" %>
<%@ page import="controllers.ProductController" %>
<%@ page import="dto.Inventory" %>
<%@ page import="controllers.InventoryController" %>
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
    <jsp:param name="menu" value="admin_menu.jsp"/>
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
                                    <div class="col-xs-2">
                                        <a href="#" class="active" id="add-product-link">Add Item</a>
                                    </div>
                                    <div class="col-xs-2">
                                        <a href="#" id="add-category-link">Add Catagory</a>
                                    </div>
                                    <div class="col-xs-2">
                                        <a href="#" id="add-inventory-link">Add Inventory</a>
                                    </div>
                                    <div class="col-xs-2">
                                        <a href="#" id="update-product-link">update Item</a>
                                    </div>
                                    <div class="col-xs-2">
                                        <a href="#" id="update-category-link">update Catagory</a>
                                    </div>
                                    <div class="col-xs-2">
                                        <a href="#" id="update-inventory-link">update Inventory</a>
                                    </div>
                                </div>
                                <hr>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <form id="add-product" action="${pageContext.request.contextPath}/product?action=add" method="post" enctype="multipart/form-data" role="form" style="display: block;">

                                            <!--TODO: this should be automatically filled with next available product id -->
                                            <div class="form-group">
                                                <input type="text" name="productId" id="productId" tabindex="1" class="form-control" placeholder="Product ID" value="">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="productName" id="productName" tabindex="1" class="form-control" placeholder="Product Name" value="">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="productDescription" id="productDescription" tabindex="1" class="form-control" placeholder="Product Description" value="">
                                            </div>

                                            <div class="form-group">
                                                <select name="categoryId" id="categoryId" class="form-control" placeholder="Category ID">
                                                    <%
                                                     List<Category> categories = new CategoryController().getAllCategories();
                                                     for(Category category : categories){
                                                    %>
                                                    <option value="<%=category.getCatId()%>"><%=category.getCatname()%></option>
                                                    <%
                                                     }
                                                    %>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="unitPrice" id="unitPrice" tabindex="1" class="form-control" placeholder="Unit Price" value="">
                                            </div>
                                            <div class="form-group">
                                                <input type="file" name="itemImage" id="itemImage" tabindex="1" class="form-control" placeholder="Item Image">
                                            </div>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-sm-4 col-sm-offset-1">
                                                        <input type="submit" name="add-item-submit" id="add-item-submit" tabindex="4" class="form-control btn btn-register" value="Add Item">
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <form id="add-category" action="${pageContext.request.contextPath}/category" method="post" role="form" style="display: none;">
                                            <div class="form-group">
                                                <input type="text" name="categoryId" id="categoryId1" tabindex="1" class="form-control" placeholder="Catagory id" value="">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="categoryName" id="categoryName" tabindex="1" class="form-control" placeholder="Catagory name" value="">
                                            </div>
                                            <input type="hidden" name="action" value="add">
                                            <div class="form-group">
                                                <input type="text" name="categoryDescription" id="categoryDescription" tabindex="1" class="form-control" placeholder="Catagory Description" value="">
                                            </div>
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-sm-4 col-sm-offset-1">
                                                        <input type="submit" name="add-cat-submit" id="add-cat-submit" tabindex="4" class="form-control btn btn-register" value="Add Catagory">
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <form id="add-inventory" action="${pageContext.request.contextPath}/inventory" method="post" role="form" style="display: none;">
                                            <div class="form-group">
                                                <input type="text" name="productId1" id="productId1" tabindex="1" class="form-control" placeholder="Inventory Id" value="">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="qty" id="qty" tabindex="1" class="form-control" placeholder="Quantity" value="">
                                            </div>
                                            <input type="hidden" name="action" value="add">
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-sm-4 col-sm-offset-1">
                                                        <input type="submit" name="add-inventory-submit" id="add-inventory-submit" tabindex="4" class="form-control btn btn-register" value="Add Catagory">
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <form id="update-product" action="${pageContext.request.contextPath}/product" method="post" role="form" style="display: none;">
                                            <div class="form-group">
                                                <select name="productId2" id="productId2" class="form-control">
                                                    <option selected="selected" hidden="hidden">--Select Product Name--</option>
                                                    <%
                                                        List<Product> products = new ProductController().getAllProducts();
                                                        for(Product product : products){
                                                    %>
                                                    <option value="<%=product.getProductId()%>"><%=product.getProductName()%></option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="productName2" id="productName2" tabindex="1" class="form-control" placeholder="Product Name">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="productDescription2" id="productDescription2" tabindex="1" class="form-control" placeholder="Product Description">
                                            </div>
                                            <div class="form-group">
                                                <select name="categoryId3" id="categoryId3" class="form-control">
                                                    <option selected="selected" hidden="hidden">Category Name</option>
                                                    <%
                                                        for(Category category : categories){
                                                    %>
                                                    <option value="<%=category.getCatId()%>"><%=category.getCatname()%></option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="unitPrice2" id="unitPrice2" tabindex="1" class="form-control" placeholder="Unit Price">
                                            </div>
                                            <input type="hidden" name="action" value="update">
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-sm-4 col-sm-offset-1">
                                                        <input type="submit" name="update-item-submit2" id="update-item-submit2" tabindex="4" class="form-control btn btn-register" value="Update Item">
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <form id="update-category" action="${pageContext.request.contextPath}/category" method="post" role="form" style="display: none;">
                                            <div class="form-group">
                                                <select name="categoryId2" id="categoryId2" class="form-control">
                                                    <option selected="selected" hidden="hidden">--Select Category Name--</option>
                                                    <%
                                                        List<Category> categories1 = new CategoryController().getAllCategories();
                                                        for(Category category : categories1){
                                                    %>
                                                    <option value="<%=category.getCatId()%>"><%=category.getCatname()%></option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="categoryName2" id="categoryName2" tabindex="1" class="form-control" placeholder="Catagory name" value="">
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="categoryDescription2" id="categoryDescription2" tabindex="1" class="form-control" placeholder="Catagory Description" value="">
                                            </div>
                                            <input type="hidden" name="action" value="update">
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-sm-4 col-sm-offset-1">
                                                        <input type="submit" name="update-cat-submit" id="update-cat-submit" tabindex="4" class="form-control btn btn-register" value="Update Catagory">
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <form id="update-inventory" action="${pageContext.request.contextPath}/inventory" method="post" role="form" style="display: none;">
                                            <div class="form-group">
                                                <select name="inventoryId2" id="inventoryId2" class="form-control">
                                                    <option selected="selected" hidden="hidden">--Select Inventory Id--</option>
                                                    <%
                                                        List<Inventory> inventories = new InventoryController().getAllInventories();
                                                        for(Inventory inventory : inventories){
                                                    %>
                                                    <option value="<%=inventory.getProductId()%>"><%=inventory.getProductId()%></option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                            <div class="form-group">
                                                <input type="text" name="qty2" id="qty2" tabindex="1" class="form-control" placeholder="Quantity" value="">
                                            </div>
                                            <input type="hidden" name="action" value="update">
                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-sm-4 col-sm-offset-1">
                                                        <input type="submit" name="update-inventory-submit" id="update-inventory-submit" tabindex="4" class="form-control btn btn-register" value="Update Inventory">
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
<script src="js/url.min.js"></script>
<script>
    $('#productId2').on('change', function () {
        var selectedValue = this.value;
        $.ajax({
            url: '${pageContext.request.contextPath}/product',
            data: { id : selectedValue},
            success: function (product) {
                $('#productName2').val(product.productName);
                $('#productDescription2').val(product.productDescription);
                $('#categoryId3').val(product.categoryId);
                $('#unitPrice2').val(product.unitPrice);
            }
        })
    });

    $('#categoryId2').on('change', function () {
        var selectedValue = this.value;
        $.ajax({
            url: '${pageContext.request.contextPath}/category',
            data: { id : selectedValue},
            success: function (category) {
                console.info(category);
                $('#categoryName2').val(category.catname);
                $('#categoryDescription2').val(category.catDescription);
            }
        })
    });

    $( document ).ready(function() {
        var action = $.url('?action');
        if("add-category" == action){
            $('#add-category-link').click();
            console.info("add-category clicked");
        }else if("add-inventory" == action){
            $('#add-inventory-link').click();
        }else if("update-product" == action){
            $('#update-product-link').click();
            $('#productId2').val($.url('?id')).change();
        }else if("update-category" == action){
            $('#update-category-link').click();
        }else if("update-inventory" == action){
            $('#update-inventory-link').click();
        }
    });
</script>
</body>
</html>