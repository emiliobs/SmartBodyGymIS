package Models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * The DatabaseConnection class provides a static method to establish a
 * connection to a MySQL database. It uses the JDBC driver to connect to the
 * specified database URL, username, and password.
 *
 * @author Emilio
 */
public class DatabaseConnection
{

    static Connection connection = null;
    private static final String URL = "jdbc:mysql://localhost:3306/smartbodygym"; // Database URL
    private static final String USER = "root"; // Database username
    private static final String PASSWORD = "root"; // Database password

    /**
     * Establishes a connection to the database using the provided URL,
     * username, and password.
     *
     * @return A Connection object representing the database connection.
     */
    public static Connection getConnection()
    {
        try
        {
            // Load the MySQL JDBC driver class
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Create a database connection using the specified URL, username, and password
            connection = DriverManager.getConnection(URL, USER, PASSWORD);

            // Uncomment the following line to print a message indicating a successful connection
            // System.out.println("Connected with DB.");
        }
        catch (Exception e)
        {
            System.out.println("Error - Class DatabaseConnection: " + e.getMessage());
        }

        return connection;
    }

    // Example of using the getConnection method
    // public static void main(String[] args)
    // {
    //     Connection dbConnection = DatabaseConnection.getConnection();
    //     // Use the dbConnection to perform database operations
    // }
}
