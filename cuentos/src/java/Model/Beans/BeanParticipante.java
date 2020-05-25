/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Beans;

public class BeanParticipante {

    private Integer id_participante;
    private String nombre_participante;
    private String apellido_participante;
    private String email_participante;
    private String biografia_participante;
    private String foto_participante;
    private String pass_participante;

    public BeanParticipante(Integer id_participante, String nombre_participante, String apellido_participante, String email_participante, String biografia_participante, String foto_participante, String pass_participante) {
        this.id_participante = id_participante;
        this.nombre_participante = nombre_participante;
        this.apellido_participante = apellido_participante;
        this.email_participante = email_participante;
        this.biografia_participante = biografia_participante;
        this.foto_participante = foto_participante;
        this.pass_participante = pass_participante;
    }

    public Integer getId_participante() {
        return id_participante;
    }

    public void setId_participante(Integer id_participante) {
        this.id_participante = id_participante;
    }

    public String getNombre_participante() {
        return nombre_participante;
    }

    public void setNombre_participante(String nombre_participante) {
        this.nombre_participante = nombre_participante;
    }

    public String getApellido_participante() {
        return apellido_participante;
    }

    public void setApellido_participante(String apellido_participante) {
        this.apellido_participante = apellido_participante;
    }

    public String getEmail_participante() {
        return email_participante;
    }

    public void setEmail_participante(String email_participante) {
        this.email_participante = email_participante;
    }

    public String getBiografia_participante() {
        return biografia_participante;
    }

    public void setBiografia_participante(String biografia_participante) {
        this.biografia_participante = biografia_participante;
    }

    public String getFoto_participante() {
        return foto_participante;
    }

    public void setFoto_participante(String foto_participante) {
        this.foto_participante = foto_participante;
    }

    public String getPass_participante() {
        return pass_participante;
    }

    public void setPass_participante(String pass_participante) {
        this.pass_participante = pass_participante;
    }

}
