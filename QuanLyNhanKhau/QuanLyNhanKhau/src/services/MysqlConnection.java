package services;

import java.sql.*;
/**
 *
 * @author Hai
 */
public class MysqlConnection {
    public static Connection getMysqlConnection() throws SQLException, ClassNotFoundException {
        String hostName = "localhost";
        String dbName = "doublef";
        String userName = "root";
        String password = "";
        return getMysqlConnection(hostName, dbName, userName, password);
    }
    
    public static Connection getMysqlConnection(String hostName, String dbName, String userName, String password) 
        throws SQLException, ClassNotFoundException{
        //Class.forName("com.mysql.jdbc.Driver");
    	String connectionUrl = "jdbc:mysql://localhost:3306/doublef";
    	Connection conn = DriverManager.getConnection(connectionUrl, userName, password);
    	return conn;
    }
}
