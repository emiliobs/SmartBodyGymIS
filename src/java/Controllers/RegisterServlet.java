package Controllers;

import DAO.RegisterDAO;
import Models.Register;

import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * The RegisterServlet class handles user registration requests. It receives user data from a form and
 * creates a new user registration record in the database using the RegisterDAO.
 *
 * @author Emilio
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet
{
    RegisterDAO registerDAO;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        // This method can be used to process requests if needed.
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String name = request.getParameter("name");
        String lastName = request.getParameter("lastName");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String staff = request.getParameter("staff");

        // Create a new Register object with the provided user data
        Register register = new Register(name, lastName, staff, password, confirmPassword, Boolean.parseBoolean(staff));

        registerDAO = new RegisterDAO();

        try
        {
            // Create the user registration record in the database
            registerDAO.create(register);
        }
        catch (SQLException ex)
        {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch (Exception e)
        {
            System.out.println("User created in the DB! " + e.getMessage());
        }

        // Redirect the user to a different page, such as the index.jsp page
        response.sendRedirect("index.jsp");
    }

    @Override
    public String getServletInfo()
    {
        return "Handles user registration requests.";
    }
}
