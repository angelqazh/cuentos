/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Beans;

public class BeanAdmin {
    private Integer id_adm;
    private String email_adm;
    private String password_adm;
    private String nombre_completo_adm;
    private String telefono_adm;

    public BeanAdmin(Integer id_adm, String email_adm, String password_adm, String nombre_completo_adm, String telefono_adm) {
        this.id_adm = id_adm;
        this.email_adm = email_adm;
        this.password_adm = password_adm;
        this.nombre_completo_adm = nombre_completo_adm;
        this.telefono_adm = telefono_adm;
    }
     
    public Integer getId_adm() {
        return id_adm;
    }

    public void setId_adm(Integer id_adm) {
        this.id_adm = id_adm;
    }

    public String getEmail_adm() {
        return email_adm;
    }

    public void setEmail_adm(String email_adm) {
        this.email_adm = email_adm;
    }

    public String getPassword_adm() {
        return password_adm;
    }

    public void setPassword_adm(String password_adm) {
        this.password_adm = password_adm;
    }

    public String getNombre_completo_adm() {
        return nombre_completo_adm;
    }

    public void setNombre_completo_adm(String nombre_completo_adm) {
        this.nombre_completo_adm = nombre_completo_adm;
    }

    public String getTelefono_adm() {
        return telefono_adm;
    }

    public void setTelefono_adm(String telefono_adm) {
        this.telefono_adm = telefono_adm;
    }
   
}
