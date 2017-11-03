package servlets;

import controllers.OrderController;
import controllers.ProductController;
import dto.OrderDetail;
import dto.Product;
import dto.ProductOrder;
import shopping.Cart;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * Created by chathuri on 11/2/17.
 */
public class OrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if("add".equals(action)){

            HttpSession session = request.getSession(true);
            Object cartObj = session.getAttribute("cart");
            List<OrderDetail> orderDetails = new ArrayList<OrderDetail>();
            if(cartObj instanceof Cart) {
                HashMap<String, Integer> cartItems = ((Cart) cartObj).getAllCartItems();
                ProductController productController = new ProductController();
                for(String productId : cartItems.keySet()){
                    OrderDetail orderDetail = new OrderDetail();
                    orderDetail.setQty(cartItems.get(productId));
                    orderDetail.setProductId(productId);
                    orderDetails.add(orderDetail);
                }
            }

            ProductOrder productOrder = new ProductOrder();
            productOrder.setCustId((String)session.getAttribute("username"));
            productOrder.setAddress(request.getParameter("address"));
            productOrder.setTel(request.getParameter("tel"));
            productOrder.setOrderDetails(orderDetails);

            OrderController orderController = new OrderController();
            orderController.addOrder(productOrder);

            session.removeAttribute("cart");

            response.sendRedirect("index.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
