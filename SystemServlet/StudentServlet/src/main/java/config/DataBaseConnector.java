package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseConnector {
    private final String URL = "jdbc:mysql://localhost:3306/grading_system";
    private final String USERNAME = "root";
    private final String PASSWORD = "msmdNOVIC2792001!";
    private static DataBaseConnector connection;

    private DataBaseConnector(){}

    public Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException e) {
            throw new SQLException("MySQL JDBC Driver not found.", e);
        }
    }

    public void closeConnection(Connection connection) {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public static DataBaseConnector getInstance(){
        if(connection == null){
            connection = new DataBaseConnector();
        }

        return connection;
    }



}
