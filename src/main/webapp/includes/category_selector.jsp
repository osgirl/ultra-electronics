<%@ page import="java.util.List" %>
<%@ page import="dto.Category" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="controllers.CategoryController" %>
<%@ page import="dto.Product" %>
<%@ page import="controllers.ProductController" %>
<div class="col-md-3 col-xs-4">
    <div class="row">
        <div id="cat_box" class="single category box">
            <h3 class="side-title">CATEGORIES</h3>
            <ul class="list-unstyled">
                <%
                    List<Category> categories = new CategoryController().getAllCategories();
                    for(Category category : categories){
                %>
                <li><a href="category.jsp?category=<%=category.getCatId()%>" title=""><%=category.getCatname()%></a></li>
                <%
                    }
                %>
            </ul>
        </div>
    </div>
    <div class="row">
        <div id="new_arr_box" class="box" style="padding: 20px">
            <span style="color: white ; font-size: large ; font-weight: bold">New Arrivals</span>
            <br>
            <br>
            <%
                List<Product> latestProducts = new ProductController().getLatestProducts(2);
                for(Product product : latestProducts){
            %>
            <img style="width: 100%" src="images/<%=product.getProductId()%>.png " alt="<%=product.getProductName()%>">
            <br>
            <br>
            <span style="font-size: medium ; font-weight: bold ; color: #34495E"><%=product.getProductName()%></span>
            <br>
            <br>
            <%
                }
            %>
        </div>
    </div>
</div>