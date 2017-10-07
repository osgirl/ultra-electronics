package servlets;

import controllers.UserController;
import dto.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by chathuri on 10/5/17.
 */
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {//       String action = request.getParameter("action");

        String action = request.getParameter("action");
        if("add".equals(action)){
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            User user = new User();
            user.setUsername(username);
            user.setPassword(password);

            UserController userController = new UserController();
            userController.addCustomer(user);

            RequestDispatcher dispatcher = request.getRequestDispatcher("user.jsp");
            dispatcher.forward(request, response);
        }else if("update".equals(action)){
            //TODO: update password
        }else if("check".equals(action)){
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            User user = new User();
            user.setUsername(username);
            user.setPassword(password);

            UserController userController = new UserController();
            RequestDispatcher dispatcher;
            if(userController.login(user)){
                //TODO: ge the user role from sessions and redirect to correct jsp
                dispatcher = request.getRequestDispatcher("index.jsp");
            }else{
                dispatcher = request.getRequestDispatcher("user.jsp");
            }
            dispatcher.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
