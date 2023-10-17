package DAO;

import Models.DatabaseConnection;
import Models.Register;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * The RegisterDAO class provides methods for performing database operations
 * related to the Register model. These operations include creating, reading,
 * updating, and deleting user registration records.
 */
public class RegisterDAO
{

    private Connection connection = null;

    /**
     * Inserts a new user registration record into the database.
     *
     * @param register The Register object containing user information to be
     * inserted.
     * @throws SQLException if a database error occurs.
     */
    public int create(Register register) throws SQLException
    {
        int result = 0;

        connection = DatabaseConnection.getConnection();
        String sql = "INSERT INTO Register (name, last_name, email, password, confirmation_password, staff) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql))
        {
            statement.setString(1, register.getName());
            statement.setString(2, register.getLast_name());
            statement.setString(3, register.getEmail());
            statement.setString(4, register.getPassword());
            statement.setString(5, register.getConfirmation_password());
            statement.setString(6, register.getStaff());
            result = statement.executeUpdate();
        }

        return result;
    }

    /**
     * Retrieves a user registration record by its unique ID.
     *
     * @param id The unique ID of the user registration record to retrieve.
     * @return The Register object representing the user's information, or null
     * if not found.
     * @throws SQLException if a database error occurs.
     */
    public Register read(int id) throws SQLException
    {
        connection = DatabaseConnection.getConnection();
        String sql = "SELECT * FROM Register WHERE id = ?";
        try (PreparedStatement statement = connection.prepareStatement(sql))
        {
            statement.setInt(1, id);
            try (ResultSet resultSet = statement.executeQuery())
            {
                if (resultSet.next())
                {
                    Register register = new Register();
                    register.setId(resultSet.getInt("id"));
                    register.setName(resultSet.getString("name"));
                    register.setLast_name(resultSet.getString("last_name"));
                    register.setEmail(resultSet.getString("email"));
                    register.setPassword(resultSet.getString("password"));
                    register.setConfirmation_password(resultSet.getString("confirmation_password"));
                    register.setStaff(resultSet.getString("staff"));
                    return register;
                }
            }
        }
        return null;
    }

    /**
     * Retrieves all user registration records from the database.
     *
     * @return A list of Register objects representing user information.
     * @throws SQLException if a database error occurs.
     */
    public List<Register> readAll() throws SQLException
    {
        connection = DatabaseConnection.getConnection();
        List<Register> registers = new ArrayList<>();
        String sql = "SELECT * FROM  register";
        try (PreparedStatement statement = connection.prepareStatement(sql); ResultSet resultSet = statement.executeQuery())
        {
            while (resultSet.next())
            {
                Register register = new Register();
                register.setId(resultSet.getInt("id"));
                register.setName(resultSet.getString("name"));
                register.setLast_name(resultSet.getString("last_name"));
                register.setEmail(resultSet.getString("email"));
                register.setPassword(resultSet.getString("password"));
                register.setConfirmation_password(resultSet.getString("confirmation_password"));
                register.setStaff(resultSet.getString("staff"));
                registers.add(register);
            }
        }
        return registers;
    }

    /**
     * Updates an existing user registration record in the database.
     *
     * @param register The Register object containing updated user information.
     * @throws SQLException if a database error occurs.
     */
    public void update(Register register) throws SQLException
    {
        String sql = "UPDATE Register SET name=?, last_name=?, email=?, password=?, confirmation_password=?, staff=? WHERE id=?";
        try (PreparedStatement statement = connection.prepareStatement(sql))
        {
            statement.setString(1, register.getName());
            statement.setString(2, register.getLast_name());
            statement.setString(3, register.getEmail());
            statement.setString(4, register.getPassword());
            statement.setString(5, register.getConfirmation_password());
            statement.setString(6, register.getStaff());
            statement.setInt(7, register.getId());
            statement.executeUpdate();
        }
    }

    /**
     * Deletes a user registration record from the database by its unique ID.
     *
     * @param id The unique ID of the user registration record to be deleted.
     * @throws SQLException if a database error occurs.
     */
    public int delete(int id) throws SQLException
    {
         connection = DatabaseConnection.getConnection();
        int result = 0;

        String sql = "DELETE FROM Register WHERE id=?";
        try (PreparedStatement statement = connection.prepareStatement(sql))
        {
            statement.setInt(1, id);
          result =  statement.executeUpdate();
        }
        catch(Exception e)
        {
            System.out.println("ERROR: " + e.getMessage());
        }
        return result;

    }

    //Example of using the RegisterDAO class
//    public static void main(String[] args)
//    {
//        RegisterDAO registerDAO = new RegisterDAO();
//        try
//        {
//             List< Register> registers = registerDAO.readAll();
//             
//             for (Register register : registers)
//            {
//                System.out.println("Datas : " + register.getName());
//            }
//            
//        }
//        catch (SQLException ex)
//        {
//            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//
//    }
}
