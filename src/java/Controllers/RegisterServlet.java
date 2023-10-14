package Controllers;

import DAO.RegisterDAO;
import Models.Register;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
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
        String confirPassword = request.getParameter("confirmPassword");
        String staff = request.getParameter("staff");

        Register register = new Register(name, lastName, staff, password, confirPassword, Boolean.parseBoolean(staff));
        
        registerDAO = new RegisterDAO();
        
        try
        {
            registerDAO.create(register);
            
        }
        catch (SQLException ex)
        {
            Logger.getLogger(RegisterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        catch(Exception e)
        {
            System.out.println("Useer created in the DB!" + e.getMessage());
        }
        
        response.sendRedirect("index.jsp");

    }

    @Override
    public String getServletInfo()
    {
        return "Short description";
    }// </editor-fold>

}
