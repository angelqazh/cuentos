/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Beans;

public class BeanVoto {
    private Integer id_cuenta_facebook;
    private Integer voto;

    public BeanVoto(Integer id_cuenta_facebook, Integer voto) {
        this.id_cuenta_facebook = id_cuenta_facebook;
        this.voto = voto;
    }

    public Integer getId_cuenta_facebook() {
        return id_cuenta_facebook;
    }

    public void setId_cuenta_facebook(Integer id_cuenta_facebook) {
        this.id_cuenta_facebook = id_cuenta_facebook;
    }

    public Integer getVoto() {
        return voto;
    }

    public void setVoto(Integer voto) {
        this.voto = voto;
    }
}
