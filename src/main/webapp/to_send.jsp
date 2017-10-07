<%@ page import="dto.OrderDetail" %>
<%@ page import="controllers.OrderDetailController" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Send List</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/css.css" rel="stylesheet">
    <link href="font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
</head>
<body style="background-color: #ebebed">

<jsp:include page="includes/top_bar.jsp">
    <jsp:param name="menu" value="admin_menu.jsp"/>
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
                    </div>
                </div>
                <div class="panel-body">


                    <table class="table table-striped table-bordered data-table" cellspacing="0" width="100%">
                        <thead>
                        <tr>
                            <th>Order ID</th>
                            <th>Product Id</th>
                            <th>Qty</th>
                            <th>Customer Id</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            List<OrderDetail> orderDetails = new OrderDetailController().getAllOrders();
                            for(OrderDetail orderDetail : orderDetails){
                        %>
                        <tr>
                            <td><%=orderDetail.getOrderId() %></td>
                            <td><%=orderDetail.getProductId() %></td>
                            <td><%=orderDetail.getQty() %></td>
                            <td><%=orderDetail.getCustId() %></td>
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