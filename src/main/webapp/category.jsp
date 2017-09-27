<%@ page import="dto.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="controllers.ProductController" %>
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
    <jsp:param name="menu" value="user_menu.html"/>
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
                        <img src="images/<%=latestProducts.get(j).getProductId()%>.png" alt="<%=latestProducts.get(j).getProductName()%>" style="width: 100% ">
                        <span style="font-size: medium ; font-weight: bold ; color: #1B4F72"><%=latestProducts.get(j).getProductName()%></span>
                        <br>
                        <br>
                        <label style=""><%=(latestProducts.get(j).getQty()>0)?"Available":"Out Of Stock"%></label>
                        <br>
                        <button type="button" class="btn btn-success">Buy It Now</button>
                        <button type="button" class="btn btn-primary">Add to wish list</button>
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