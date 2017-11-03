package controllers;

import dto.LoginInfoType;
import dto.User;
import util.Database;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;

/**
 * Created by chathuri on 9/22/17.
 */
public class UserController {

    private final String USER_TABLE_NAME = "user";

    public boolean addUser(User user){
        Connection connection = null;
        try {
            connection = new Database().connect();
            String sql1 = "SELECT 1 FROM "+USER_TABLE_NAME+" WHERE username='"+ user.getUsername()+"'";
            System.out.println(sql1);
            Statement statement1 = connection.createStatement();
            ResultSet resultSet = statement1.executeQuery(sql1);
            if(resultSet.next()) return false;

            String sql2 = "INSERT INTO "+USER_TABLE_NAME+" VALUES ('"
                    + user.getUsername()+"', '"
                    + user.getPassword()+"', '"
                    + user.getUserRole()+"')";
            Statement statement2 = connection.createStatement();
            statement2.execute(sql2);
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException ignored) { }
        }
        return true;
    }


    public boolean updateUser(User user) {
        Connection connection = null;
        try {
            connection = new Database().connect();
            String sql =    "UPDATE user SET " +
                    "username='"+user.getUsername()+"', " +
                    "password='"+user.getPassword()+"' " +
                    "WHERE username='"+user.getUsername()+"'";
            Statement statement2 = connection.createStatement();
            statement2.execute(sql);
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException ignored) { }
        }
        return true;
    }


    public HashMap<LoginInfoType, String> getLoginInfo(User user){
        HashMap<LoginInfoType, String> loginInfo = new HashMap<LoginInfoType, String>();
        Connection connection = null;
        try {
            connection = new Database().connect();
            String sql1 = "SELECT username,userrole FROM "+USER_TABLE_NAME+" WHERE username='"+ user.getUsername()+"' AND password='"+user.getPassword()+"'";
            Statement statement1 = connection.createStatement();
            ResultSet resultSet = statement1.executeQuery(sql1);
            if(resultSet.next()) {
                loginInfo.put(LoginInfoType.USERNAME, resultSet.getString("username"));
                loginInfo.put(LoginInfoType.USER_ROLE, resultSet.getString("userrole"));
            }

        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException ignored) { }
        }
        return loginInfo;
    }

    public boolean isUserExists(User user) {
        HashMap<LoginInfoType, String> loginInfo = getLoginInfo(user);
        if(loginInfo.containsKey(LoginInfoType.USERNAME) && loginInfo.containsKey(LoginInfoType.USER_ROLE)){
            return true;
        }
        return false;
    }
}
