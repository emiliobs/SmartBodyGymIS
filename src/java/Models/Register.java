package Models;

/**
 *
 * @author Emilio
 */
public class Register
{

    private int id;
    private String name;
    private String last_name;
    private String mail;
    private String password;
    private String confirmation_password;
    private boolean staff;

    public Register()
    {
    }

    public Register(int id, String name, String last_name, String mail, String password, String confirmation_password, boolean staff)
    {
        this.id = id;
        this.name = name;
        this.last_name = last_name;
        this.mail = mail;
        this.password = password;
        this.confirmation_password = confirmation_password;
        this.staff = staff;
    }

    // Getters y setters
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

    public String getMail()
    {
        return mail;
    }

    public void setMail(String mail)
    {
        this.mail = mail;
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
