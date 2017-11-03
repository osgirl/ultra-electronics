<%
    //check if logged in or not
    if(session.getAttribute("username")==null){
        response.sendRedirect("user.jsp");
    }
%>
<%@ page import="shopping.Cart" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="controllers.ProductController" %>
<%@ page import="dto.Product" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Checkout Order</title>
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
            <h3 class="side-title">CHECKOUT</h3>
            <div class="details">
                <form id="checkout-form" action="${pageContext.request.contextPath}/order" method="post" role="form">
                    <%
                        Object cartObj = session.getAttribute("cart");
                        double totalCartAmount = 0.0;
                        if(cartObj instanceof Cart) {
                            HashMap<String, Integer> cartItems = ((Cart) cartObj).getAllCartItems();
                            ProductController productController = new ProductController();
                            for(String productId : cartItems.keySet()){
                                int qty = cartItems.get(productId);
                                Product product = productController.getProductsById(productId);
                                double productTotal = product.getUnitPrice()*qty;
                                totalCartAmount += productTotal;
                            }
                        }
                    %>
                    <h5>AMOUNT : <%=totalCartAmount%> LKR</h5>
                    <div class="form-group">
                        <input type="text" name="tel" id="tel" tabindex="1" class="form-control" placeholder="Telephone">
                    </div>
                    <div class="form-group">
                        <textarea name="address" id="address" tabindex="2" class="form-control" placeholder="Address"></textarea>
                    </div>
                    <input type="hidden" name="action" value="add"/>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-sm-4">
                                <input type="submit" name="checkout-submit" id="checkout-submit" tabindex="4" class="form-control btn btn-register" value="Checkout">
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
