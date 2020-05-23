/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Beans;

/**
 *
 * @author Mauricio
 */
public class BeanUsuario {
    private String usuario,contraseña,tipo;

    public BeanUsuario(String usuario, String contraseña, String tipo) {
        this.usuario = usuario;
        this.contraseña = contraseña;
        this.tipo = tipo;
    }

    public BeanUsuario() {
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
}

