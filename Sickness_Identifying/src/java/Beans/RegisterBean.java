package Beans;

import java.io.Serializable;

public class RegisterBean implements Serializable
{
    private String username, passsowrd, email,name;
     private int cellphone;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPasssowrd() {
        return passsowrd;
    }

    public void setPasssowrd(String passsowrd) {
        this.passsowrd = passsowrd;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getCellphone() {
        return cellphone;
    }

    public void setCellphone(int cellphone) {
        this.cellphone = cellphone;
    }
}
