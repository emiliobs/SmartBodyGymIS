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

public class RegisterDAO
{

    private Connection connection = null;

    public void create(Register register) throws SQLException
    {
        connection = DatabaseConnection.getConnection();
        String sql = "INSERT INTO Register (name, last_name, email, password, confirmation_password, staff) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement statement = connection.prepareStatement(sql))
        {
            statement.setString(1, register.getName());
            statement.setString(2, register.getLast_name());
            statement.setString(3, register.getEmail());
            statement.setString(4, register.getPassword());
            statement.setString(5, register.getConfirmation_password());
            statement.setBoolean(6, register.isStaff());
            statement.executeUpdate();
        }
    }

    public Register read(int id) throws SQLException
    {
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
                    register.setStaff(resultSet.getBoolean("staff"));
                    return register;
                }
            }
        }
        return null;
    }

    public List<Register> readAll() throws SQLException
    {
        List<Register> registers = new ArrayList<>();
        String sql = "SELECT * FROM Register";
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
                register.setStaff(resultSet.getBoolean("staff"));
                registers.add(register);
            }
        }
        return registers;
    }

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
            statement.setBoolean(6, register.isStaff());
            statement.setInt(7, register.getId());
            statement.executeUpdate();
        }
    }

    public void delete(int id) throws SQLException
    {
        String sql = "DELETE FROM Register WHERE id=?";
        try (PreparedStatement statement = connection.prepareStatement(sql))
        {
            statement.setInt(1, id);
            statement.executeUpdate();
        }
    }

//    public static void main(String[] args)
//    {
//        Register register = new Register("Emilio", "Barrera", "emilio@gmail.com", "55555", "55555", true);
//        RegisterDAO registerDAO = new RegisterDAO();
//        try
//        {
//            registerDAO.create(register);
//        }
//        catch (SQLException ex)
//        {
//            Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//
//    }

}
