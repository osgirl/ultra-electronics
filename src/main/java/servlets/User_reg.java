package servlets;

import util.Database;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by chathuri on 9/23/17.
 */
@WebServlet(name = "User_Reg")
public class User_reg extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        String user_id, user_name, user_address, user_phone,user_email,user_password;
        user_id = request.getParameter("user_id").toString();
        user_name = request.getParameter("user_name").toString();
        user_address = request.getParameter("user_address").toString();
        user_phone = request.getParameter("user_phone").toString();
        user_email = request.getParameter("user_email").toString();
        user_password = request.getParameter("user_password").toString();

        Connection connection = null;
        try {
            connection = new Database().connect();

            String sql = "INSERT INTO customer VALUES ('"+user_id+"','"+user_name+"', '"+user_address+"', '"+user_phone+"', '"+user_email+"', '"+user_password+"');";

            PreparedStatement pst = (PreparedStatement) connection.prepareStatement(sql);
            pst.execute();
            System.out.println("Successfull");


        } catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
