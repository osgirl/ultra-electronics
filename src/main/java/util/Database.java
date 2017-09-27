package util;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * Created by chathuri on 9/16/17.
 */
public class Database {
    private final String host = "localhost:3306";
    private final String dbName = "UltraElectronics";
    private final String userId = "root";
    private final String password = "ggtrvt";

    public Connection connect() throws Exception{
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection("jdbc:mysql://" + host + "/" + dbName, userId, password);
    }
}
