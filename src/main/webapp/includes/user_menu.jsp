<%@ page import="shopping.Cart" %>
<ul class="nav navbar-nav navbar-right">
    <li class="header">
        <a href="shopping_cart.jsp" style="color: #ffffff">
            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
            &nbsp;
            <%
                Object cartObj = session.getAttribute("cart");
                Cart cart;
                if(cartObj instanceof Cart) {
                    cart = (Cart) cartObj;
                }else{
                    cart = new Cart();
                }
            %>
            <b>Shopping Cart ( <%=cart.getAllCartItems().size()%> )</b></a>
    </li>
    <li class="header">
        <a href="account_settings.jsp" style="color: #ffffff">
            <i class="fa fa-address-book" aria-hidden="true"></i>
            &nbsp;
            <b>My Account</b></a>
    </li>
</ul>