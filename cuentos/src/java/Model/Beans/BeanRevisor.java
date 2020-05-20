/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Beans;

public class BeanRevisor {
    private Integer id_revisor;
    private String email_revisor;
    private String password_revisor;
    private String nombre_completo_revisor;
    private String telefono_revisor;   

    public BeanRevisor(Integer id_revisor, String email_revisor, String password_revisor, String nombre_completo_revisor, String telefono_revisor) {
        this.id_revisor = id_revisor;
        this.email_revisor = email_revisor;
        this.password_revisor = password_revisor;
        this.nombre_completo_revisor = nombre_completo_revisor;
        this.telefono_revisor = telefono_revisor;
    }

    public Integer getId_revisor() {
        return id_revisor;
    }

    public void setId_revisor(Integer id_revisor) {
        this.id_revisor = id_revisor;
    }

    public String getEmail_revisor() {
        return email_revisor;
    }

    public void setEmail_revisor(String email_revisor) {
        this.email_revisor = email_revisor;
    }

    public String getPassword_revisor() {
        return password_revisor;
    }

    public void setPassword_revisor(String password_revisor) {
        this.password_revisor = password_revisor;
    }

    public String getNombre_completo_revisor() {
        return nombre_completo_revisor;
    }

    public void setNombre_completo_revisor(String nombre_completo_revisor) {
        this.nombre_completo_revisor = nombre_completo_revisor;
    }

    public String getTelefono_revisor() {
        return telefono_revisor;
    }

    public void setTelefono_revisor(String telefono_revisor) {
        this.telefono_revisor = telefono_revisor;
    }

}
