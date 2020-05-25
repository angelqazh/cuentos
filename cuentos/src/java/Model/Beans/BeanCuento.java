/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Beans;

public class BeanCuento {
    private Integer id_cuento;
    private String nombre_cuento;
    private String genero_cuento;
    private String link_cuento;
    private String contenido_cuento; 
    private String imagen_cuento;

    public BeanCuento(Integer id_cuento, String nombre_cuento, String genero_cuento, String link_cuento, String contenido_cuento, String imagen_cuento) {
        this.id_cuento = id_cuento;
        this.nombre_cuento = nombre_cuento;
        this.genero_cuento = genero_cuento;
        this.link_cuento = link_cuento;
        this.contenido_cuento = contenido_cuento;
        this.imagen_cuento = imagen_cuento;
    }

    public BeanCuento() {
    }

    public Integer getId_cuento() {
        return id_cuento;
    }

    public void setId_cuento(Integer id_cuento) {
        this.id_cuento = id_cuento;
    }

    public String getNombre_cuento() {
        return nombre_cuento;
    }

    public void setNombre_cuento(String nombre_cuento) {
        this.nombre_cuento = nombre_cuento;
    }

    public String getGenero_cuento() {
        return genero_cuento;
    }

    public void setGenero_cuento(String genero_cuento) {
        this.genero_cuento = genero_cuento;
    }

    public String getLink_cuento() {
        return link_cuento;
    }

    public void setLink_cuento(String link_cuento) {
        this.link_cuento = link_cuento;
    }

    public String getContenido_cuento() {
        return contenido_cuento;
    }

    public void setContenido_cuento(String contenido_cuento) {
        this.contenido_cuento = contenido_cuento;
    }

    public String getImagen_cuento() {
        return imagen_cuento;
    }

    public void setImagen_cuento(String imagen_cuento) {
        this.imagen_cuento = imagen_cuento;
    }
}
