package servlets;

import controllers.UserController;
import dto.LoginInfoType;
import dto.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

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
            userController.addUser(user);

            response.sendRedirect("index.jsp");
        }else if("update".equals(action)){

            //TODO: get the username from sessions. check OrderServlet

            String username = request.getParameter("username");
            String password = request.getParameter("new-password");

            User user = new User();
            user.setUsername(username);
            user.setPassword(password);


            UserController userController = new UserController();
            userController.updateUser(user);

            response.sendRedirect("index.jsp");
        }else if("login".equals(action)){
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            User user = new User();
            user.setUsername(username);
            user.setPassword(password);

            UserController userController = new UserController();
            if(userController.isUserExists(user)){
                HashMap<LoginInfoType, String> loginInfo = userController.getLoginInfo(user);
                request.getSession().setAttribute("username", loginInfo.get(LoginInfoType.USERNAME));
                request.getSession().setAttribute("userrole", loginInfo.get(LoginInfoType.USER_ROLE));
                if("ADMIN".equals(loginInfo.get(LoginInfoType.USER_ROLE))){
                    response.sendRedirect("list_of_items.jsp");
                }else{
                    response.sendRedirect("index.jsp");
                }

            }else{
                response.sendRedirect("user.jsp");
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if("logout".equals(action)){
            request.getSession().removeAttribute("username");
            request.getSession().removeAttribute("userrole");
            response.sendRedirect("index.jsp");
        }
    }
}
