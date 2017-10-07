package util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Created by chathuri on 9/16/17.
 */
public class Database {
    Properties props = Properties.getInstance();

    private final String host = props.getProperty("database.host");
    private final String dbName = props.getProperty("database.name");
    private final String userId = props.getProperty("database.userid");
    private final String password = props.getProperty("database.password");

    public Connection connect() throws Exception{
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://" + host + "/" + dbName, userId, password);
    }
}
