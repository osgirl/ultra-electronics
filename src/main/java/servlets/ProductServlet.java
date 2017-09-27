package servlets;

import controllers.ProductController;
import dto.Product;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by chathurabuddi on 9/27/2017.
 */
public class ProductServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if("add".equals(action)){
            String productId = request.getParameter("productId");
            String productName = request.getParameter("productName");
            String productDescription = request.getParameter("productDescription");
            String categoryId = request.getParameter("categoryId");
            String unitPrice = request.getParameter("unitPrice");

            Product product = new Product();
            product.setProductId(productId);
            product.setProductName(productName);
            product.setProductDescription(productDescription);
            product.setCategoryId(categoryId);
            product.setUnitPrice(Double.parseDouble(unitPrice));

            ProductController productController = new ProductController();
            productController.addProduct(product);

            RequestDispatcher dispatcher = request.getRequestDispatcher("admin_account.jsp");
            dispatcher.forward(request, response);
        }else if("update".equals(action)){

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
