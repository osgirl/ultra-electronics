<%@ page import="dto.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="controllers.ProductController" %>
<%@ page import="util.Properties" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Ultra Electronics</title>
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
        <div class="box" style="border-width: 20px">
            <%
                List<Product> latestProducts = new ProductController().getProductsByCategory(request.getParameter("category"));
                for(int i=0; i<latestProducts.size(); i=i+3){
            %>
            <div class="row" style="">
                <%
                    for(int j=i; j<i+3; j++){
                %>
                <div class="col-md-4 col-xs-4">
                    <div class="box" style="background: linear-gradient(#66e6f3, #1b8fd8) ; padding: 20px ; margin-top: 30px ; margin-right: 10px ; height: auto ; border-radius: 5px ">
                        <img src="product-images/<%=latestProducts.get(j).getProductId()+"."+Properties.getInstance().getProperty("product.image.type")%>" alt="<%=latestProducts.get(j).getProductName()%>" style="width: 100% ">
                        <span style="font-size: medium ; font-weight: bold ; color: #1B4F72"><%=latestProducts.get(j).getProductName()%></span>
                        <br>
                        <label style="">Price : <%=latestProducts.get(j).getUnitPrice()%> LKR</label>
                        <br>
                        <label style=""><%=(latestProducts.get(j).getQty()>0)?"Available":"Out Of Stock"%></label>
                        <br>
                        <form action="${pageContext.request.contextPath}/cart" method="post">
                            <input type="hidden" name="productId" value="<%=latestProducts.get(j).getProductId()%>">
                            <input type="hidden" name="action" value="add">
                            <input class="form-control" type="number" name="qty" id="qty" <%=(latestProducts.get(j).getQty()>0)?"":"disabled"%> style="display: inline-block; width: 80px">
                            <button type="submit" class="btn btn-success" <%=(latestProducts.get(j).getQty()>0)?"":"disabled"%>>Add to Cart</button>
                        </form>
                        <br>
                    </div>
                </div>
                <%
                    }
                %>
            </div>
            <%
                }
            %>
        </div>
        <br/><br/>
    </div>
</div>
<div class="footer">@ Ultra Electronics web store - Galle</div>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>