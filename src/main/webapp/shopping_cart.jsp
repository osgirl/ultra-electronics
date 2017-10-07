<%@ page import="shopping.Cart" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="controllers.ProductController" %>
<%@ page import="dto.Product" %>
<%@ page import="util.Properties" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shopping Cart</title>
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
        <div class="box"
             style=" height: 100% ; margin: 20px ; margin-left: 0px ; margin-right: 5px ; padding-bottom: 20px ; background-color: white">

            <div class="row" style="">
                <div class="box" style=" margin: 10px 40px; padding-top: 10px; padding-bottom: 10px  ">
                    <div class="col-md-12 col-xs-12" style="height: 100% ; padding: 0px">
                        <div class="box" style="height: 100% ; width: 100% ; border: 2px solid ; border-color: #616A6B ; padding: 5px ; padding-top: 15px  ">
                            <img style="width: 50px" src="images/cart.ico" alt="cart">
                            <label id="totalAmount" style="font-size:large; font-weight: bold "></label>
                            <button style="margin-left: 25px " type="button" class="btn btn-primary">Proceed to Checkout</button>&nbsp;&nbsp;&nbsp;&nbsp;
                            <label style="font-weight: bold; color: white; border-radius: 2px; background-color: green; padding: 5px 10px">MONEY BACK GUARANTEE</label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" style="">
                <div class="box"
                     style="height: 30px ; background-color: #1b8fd8 ; margin-top: 20px ; margin-right: 40px ; margin-left: 40px ;  padding: 5px ; padding-left: 10px">
                    <span style="color: white ; font-size: medium ; font-weight: bold ">Shopping Cart</span>
                </div>
            </div>

            <%
            Object cartObj = session.getAttribute("cart");
            double totalCartAmount = 0.0;
            if(cartObj instanceof Cart) {
                HashMap<String, Integer> cartItems = ((Cart) cartObj).getAllCartItems();
                ProductController productController = new ProductController();
                for(String productId : cartItems.keySet()){
                    int qty = cartItems.get(productId);
                    Product product = productController.getProductsById(productId);
            %>

            <div class="row" style="">
                <div class="box" style="height: 230px ;  margin-top: 20px ; margin-right: 40px ; margin-left: 40px ; padding-top: 10px ; padding-bottom: 10px ; border: 2px solid ; border-color: gray   ">
                    <div class="col-md-3 col-xs-4" style="height: 100% ">
                        <div class="box" style="height: 100% ; width: 100% ; border: 2px solid ; border-color: #616A6B ; padding: 5px ; padding-top: 15px  ">
                            <img src="product-images/<%=product.getProductId()+"."+Properties.getInstance().getProperty("product.image.type")%>" alt="<%=product.getProductName()%>" style="width: 100% ">
                        </div>
                    </div>
                    <div class="col-md-9 col-xs-8" style="height: 100% ">
                        <div class="box" style="height: 100% ; width: 100% ; margin-left: -10px ; margin-right: -10px ">
                            <h5 style="font-weight: bold"><%=product.getProductName()%></h5>
                            <p><%=product.getProductDescription()%></p>
                            <span style="font-weight: bold">Unit Price (Rs) : <%=product.getUnitPrice()%></span><br>
                            <span style="font-weight: bold">No of Units : <%=qty%></span><br>
                            <%
                            double productTotal = product.getUnitPrice()*qty;
                            totalCartAmount += productTotal;
                            %>
                            <span style="font-weight: bold">Total Price (Rs) : <%=productTotal%></span><br><br>
                            <form action="${pageContext.request.contextPath}/cart" method="post">
                                <input type="hidden" name="productId" value="<%=product.getProductId()%>">
                                <input type="hidden" name="action" value="remove">
                                <button type="submit" class="btn btn-danger">Remove Item</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <%
                }
            }
            %>

        </div>
    </div>
</div>
<div class="footer">@ Ultra Electronics web store - Galle</div>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<script>
    $('#totalAmount').html("<%=totalCartAmount%> LKR");
</script>
</body>
</html>