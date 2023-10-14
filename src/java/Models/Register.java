package Models;

/**
 * The Register class represents user registration information, including user
 * ID, name, last name, email, password, confirmation password, and a flag
 * indicating whether the user is staff. It provides constructors and getter and
 * setter methods for these attributes.
 *
 * @author Emilio
 */
public class Register
{

    private int id; // Unique user ID
    private String name; // User's first name
    private String last_name; // User's last name
    private String email; // User's email address
    private String password; // User's password
    private String confirmation_password; // Password confirmation
    private boolean staff; // Indicates if the user is a staff member

    /**
     * Constructor for creating a Register object with all attributes.
     *
     * @param id Unique user ID
     * @param name User's first name
     * @param last_name User's last name
     * @param email User's email address
     * @param password User's password
     * @param confirmation_password Password confirmation
     * @param staff Indicates if the user is a staff member
     */
    public Register(int id, String name, String last_name, String email, String password, String confirmation_password, boolean staff)
    {
        this.id = id;
        this.name = name;
        this.last_name = last_name;
        this.email = email;
        this.password = password;
        this.confirmation_password = confirmation_password;
        this.staff = staff;
    }

    /**
     * Constructor for creating a Register object without a user ID.
     *
     * @param name User's first name
     * @param last_name User's last name
     * @param email User's email address
     * @param password User's password
     * @param confirmation_password Password confirmation
     * @param staff Indicates if the user is a staff member
     */
    public Register(String name, String last_name, String email, String password, String confirmation_password, boolean staff)
    {
        this.name = name;
        this.last_name = last_name;
        this.email = email;
        this.password = password;
        this.confirmation_password = confirmation_password;
        this.staff = staff;
    }

    /**
     * Default constructor for creating an empty Register object.
     */
    public Register()
    {
    }

    // Getters and setters for the class attributes
    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getLast_name()
    {
        return last_name;
    }

    public void setLast_name(String last_name)
    {
        this.last_name = last_name;
    }

    public String getEmail()
    {
        return email;
    }

    public void setEmail(String email)
    {
        this.email = email;
    }

    public String getPassword()
    {
        return password;
    }

    public void setPassword(String password)
    {
        this.password = password;
    }

    public String getConfirmation_password()
    {
        return confirmation_password;
    }

    public void setConfirmation_password(String confirmation_password)
    {
        this.confirmation_password = confirmation_password;
    }

    public boolean isStaff()
    {
        return staff;
    }

    public void setStaff(boolean staff)
    {
        this.staff = staff;
    }
}
