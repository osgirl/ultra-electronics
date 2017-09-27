<%@ page import="java.util.List" %>
<%@ page import="dto.Product" %>
<%@ page import="controllers.ProductController" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Item List</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/css.css" rel="stylesheet">
    <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #ebebed">

<jsp:include page="includes/top_bar.jsp">
    <jsp:param name="menu" value="admin_menu.html"/>
</jsp:include>

<div class="row">

    <div class="col-md-12">
        <div class="box"
             style=" height: 100% ; margin: 20px ; margin-left: 0px ; margin-right: 5px ; padding-bottom: 20px ; background-color: white ; padding-left: 20px ; padding-right: 20px ; padding-top: 20px">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="row">
                        <div class="col col-xs-6">
                            <h3 class="panel-title">All Items</h3>
                        </div>
                        <div class="col col-xs-6 text-right">
                            <a href="admin_account.jsp">
                                <button type="button" class="btn btn-sm btn-primary btn-create">New Item</button>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="panel-body">
                    <table class="table table-striped table-bordered data-table" cellspacing="0" width="100%">
                        <thead>
                        <tr>
                            <th>Item ID</th>
                            <th>Item Name</th>
                            <th>Category</th>
                            <th>Qty</th>
                            <th>Unit Price (Rs)</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            List<Product> products = new ProductController().getAllProducts();
                            for(Product product : products){
                        %>
                        <tr>
                            <td><%=product.getProductId() %></td>
                            <td><%=product.getProductName() %></td>
                            <td><%=product.getCategory() %></td>
                            <td><%=product.getQty() %></td>
                            <td><%=product.getUnitPrice() %></td>
                            <td align="center">
                                <a href="admin_account.jsp" ><em class="fa fa-pencil"></em></a>
                                &nbsp;&nbsp;
                                <a href="admin_account.jsp" ><em class="fa fa-trash"></em></a>
                            </td>
                        </tr>

                        <%
                            }
                        %>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
</div>


<div class="footer">@ Ultra Electronics web store - Galle</div>


<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/dataTables.bootstrap.min.js"></script>
<script>
    $(".data-table").dataTable();
</script>
</body>
</html>