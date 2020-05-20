/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Beans;

public class BeanLogin {
    private Integer id_login;
    private String email_login;
    private String password_login;

    public BeanLogin(Integer id_login, String email_login, String password_login) {
        this.id_login = id_login;
        this.email_login = email_login;
        this.password_login = password_login;
    }

    public Integer getId_login() {
        return id_login;
    }

    public void setId_login(Integer id_login) {
        this.id_login = id_login;
    }

    public String getEmail_login() {
        return email_login;
    }

    public void setEmail_login(String email_login) {
        this.email_login = email_login;
    }

    public String getPassword_login() {
        return password_login;
    }

    public void setPassword_login(String password_login) {
        this.password_login = password_login;
    }
}
