package Models;

/**
 *
 * @author Emilio
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection
{

    static Connection connection = null;
    private static final String URL = "jdbc:mysql://localhost:3306/smartbodygym";
    private static final String USER = "root";
    private static final String PASSWORD = "root";

    public static Connection getConnection()
    {
        try
        {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(URL, USER, PASSWORD);
            //System.out.println("Connected with DB.");

        }
        catch (Exception e)
        {
            System.out.println("Error - Class ConnectionWithDB: " + e.getMessage());
        }

        return connection;
    }

//    public static void main(String[] args)
//    {
//        DatabaseConnection.getConnection();
//    }

}
