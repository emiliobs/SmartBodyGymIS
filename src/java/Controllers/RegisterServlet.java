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
 * The RegisterServlet class handles user registration requests. It receives
 * user data from a form and creates a new user registration record in the
 * database using the RegisterDAO.
 *
 * @author Emilio
 */
@WebServlet(name = "RegisterServlet", urlPatterns =
{
    "/RegisterServlet"
})
public class RegisterServlet extends HttpServlet
{

    RegisterDAO registerDAO;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {

        String name = request.getParameter("name");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("password_two");
        String staff = request.getParameter("staff");
        
        if (staff == null)
        {
            staff = "User";
        }
        int result = 0;
        String message = "Sorry, Error to Save a new User in the DB!";

        // Create a new Register object with the provided user data
        Register register = new Register(name, lastName, email, password, confirmPassword, staff);

        registerDAO = new RegisterDAO();

        try
        {
            if (request.getParameter("btnSave") != null)
            {
//                // Create the user registration record in the database
                result = registerDAO.create(register);

                if (result == 0)
                {
                    message = "You are now a SmartBody Member!";
                }

                request.setAttribute("message", message);
                request.getRequestDispatcher("/index.jsp").forward(request, response);

            }
            else if (request.getParameter("btnLogin") != null)
            {
                if (email.equalsIgnoreCase("emilio@hotmail.com") && password.equalsIgnoreCase("55555"))
                {
                 
                    message = "Great,You are now logged in!";
                    request.setAttribute("message", message);
                    request.getRequestDispatcher("/activities.jsp").forward(request, response);
                }
                else
                {
                    message = "Sorry, Email or Password Incorrect!";
                    request.setAttribute("message", message);
                    request.getRequestDispatcher("/login.jsp").forward(request, response);
                }

            }
            else if (request.getParameter("btnEdit") != null)
            {
//                if (result != 0)
//                {
//                    message = "Data edited Successfuly.";
//                }

            }
            else if (request.getParameter("btnDelete") != null)
            {
                int id = Integer.parseInt(request.getParameter("id"));

                result = registerDAO.delete(id);

                if (result != 0)
                {
                    message = "Data was Delete Successful.";

                }

                request.setAttribute("message", message);
                request.getRequestDispatcher("/registeredusers.jsp").forward(request, response);

            }

        }
        catch (SQLException ex)
        {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch (Exception e)
        {
            System.out.println("Sorry, Error:  " + e.getMessage());
        }

        // Redirect the user to a different page, such as the index.jsp page     
        //response.sendRedirect("index.jsp");
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
        processRequest(request, response);
    }

    @Override
    public String getServletInfo()
    {
        return "Handles user registration requests.";
    }
}
