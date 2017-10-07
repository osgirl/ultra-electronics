package servlets;

import com.google.gson.Gson;
import controllers.CategoryController;
import dto.Category;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by chathuri on 9/27/17.
 */

public class CategoryServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        if("add".equals(action)){
            String categoryId = request.getParameter("categoryId");
            String categoryName = request.getParameter("categoryName");
            String categoryDescription = request.getParameter("categoryDescription");

            Category category = new Category();
            category.setCatId(categoryId);
            category.setCatname(categoryName);
            category.setCatDescription(categoryDescription);

            CategoryController categoryController = new CategoryController();
            categoryController.addCategory(category);

            RequestDispatcher dispatcher = request.getRequestDispatcher("admin_account.jsp");
            dispatcher.forward(request, response);
        }else if("update".equals(action)){
            String catId = request.getParameter("categoryId2");
            String catName = request.getParameter("categoryName2");
            String catDescription = request.getParameter("categoryDescription2");

            Category category = new Category();
            category.setCatId(catId);
            category.setCatname(catName);
            category.setCatDescription(catDescription);

            CategoryController categoryController = new CategoryController();
            categoryController.updateCategory(category);

            RequestDispatcher dispatcher = request.getRequestDispatcher("admin_account.jsp");
            dispatcher.forward(request, response);
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String categoryId = request.getParameter("id");
        if(categoryId!=null){
            CategoryController categoryController = new CategoryController();
            String categoryJson = new Gson().toJson(categoryController.getCategoryById(categoryId));
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write(categoryJson);
        }else{

        }
    }
}
