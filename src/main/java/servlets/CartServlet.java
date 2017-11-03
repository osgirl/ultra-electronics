package servlets;

import shopping.Cart;
import shopping.ItemNotFoundException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by chathuri on 10/7/17.
 */
public class CartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if("add".equals(action)){
            HttpSession session = request.getSession();
            Cart shoppingCart = (Cart) session.getAttribute("cart");
            if(shoppingCart == null){
                shoppingCart = new Cart();
                session.setAttribute("cart", shoppingCart);
            }
            String productId = request.getParameter("productId");
            Integer qty = Integer.parseInt(request.getParameter("qty"));
            shoppingCart.addToCart(productId, qty);
            session.setAttribute("cart", shoppingCart);
        }else if("remove".equals(action)){
            HttpSession session = request.getSession();
            Cart shoppingCart = (Cart) session.getAttribute("cart");
            if(shoppingCart != null){
                String productId = request.getParameter("productId");
                try {
                    shoppingCart.removeItems(productId);
                } catch (ItemNotFoundException e) {
                    response.sendError(HttpServletResponse.SC_BAD_REQUEST);
                }
                session.setAttribute("cart", shoppingCart);
            }else{
                response.sendError(HttpServletResponse.SC_BAD_REQUEST);
            }
        }else if("clear".equals(action)){
            HttpSession session = request.getSession();
            Cart shoppingCart = (Cart) session.getAttribute("cart");
            if(shoppingCart != null){
                shoppingCart.clearCart();
            }else{
                response.sendError(HttpServletResponse.SC_BAD_REQUEST);
            }
        }
        response.sendRedirect("shopping_cart.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
