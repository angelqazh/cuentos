/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Persistencia;

import Model.Beans.BeanParticipante;
import Model.ConectaBD;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author angel
 */
public class Participante {

    private Connection conexion = null;
    private Statement stm = null;
    private ResultSet rs;
    private Integer id_participante;
    private String nombre_participante, apellido_participante, email_participante, biografia_participante, pass_participante;
    private int resultUpdate = 0;

    public ArrayList<BeanParticipante> lista() {
        ArrayList<BeanParticipante> lista = new ArrayList<BeanParticipante>();
        BeanParticipante p;
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            rs = stm.executeQuery("select * from participante");
            if (!rs.next()) {
                System.out.println(" No se encontraron registros");
                conexion.close();
                return null;
            } else {
                do {
                    id_participante = rs.getInt("id_participante");
                    nombre_participante = rs.getString("nombre");
                    apellido_participante = rs.getString("apellido");
                    email_participante = rs.getString("email");
                    pass_participante = rs.getString("password");
                    biografia_participante = rs.getString("biografia");
                    p = new BeanParticipante(id_participante, nombre_participante,
                            apellido_participante, email_participante, biografia_participante, null, pass_participante);
                    lista.add(p);
                } while (rs.next());
                conexion.close();
                return lista;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return null;
        }
    }

    public ArrayList<BeanParticipante> buscarRegistros(String cadena_busqueda) {
        ArrayList<BeanParticipante> lista = new ArrayList<BeanParticipante>();
        BeanParticipante p;
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            rs = stm.executeQuery("SELECT * FROM participante WHERE concat(id_participante,nombre,apellido,email,password,biografia) LIKE '%" + cadena_busqueda + "%'");
            if (!rs.next()) {
                System.out.println(" No se encontraron registros");
                conexion.close();
                return null;
            } else {
                do {
                    id_participante = rs.getInt("id_participante");
                    nombre_participante = rs.getString("nombre");
                    apellido_participante = rs.getString("apellido");
                    email_participante = rs.getString("email");
                    pass_participante = rs.getString("password");
                    biografia_participante = rs.getString("biografia");
                    p = new BeanParticipante(id_participante, nombre_participante,
                            apellido_participante, email_participante, biografia_participante, null, pass_participante);
                    lista.add(p);
                } while (rs.next());
                conexion.close();
                return lista;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return null;
        }
    }

    public boolean insertar(BeanParticipante p) {
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            String sql
                    = "INSERT INTO participante VALUES(null,'"
                    + p.getNombre_participante()
                    + "','" + p.getApellido_participante()
                    + "','" + p.getEmail_participante()
                    + "','" + p.getPass_participante()
                    + "','" + p.getBiografia_participante()
                    + "',null," + 1 + ");";
            System.out.println(sql);
            resultUpdate = stm.executeUpdate(sql);
            if (resultUpdate != 0) {
                conexion.close();
                return true;
            } else {
                conexion.close();;
                System.out.println("No se pudo insertar el participante.");
                return false;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return false;
        }
    }

    public boolean borrar(BeanParticipante p) {
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            resultUpdate = stm.executeUpdate(
                    "DELETE FROM participante WHERE(id_participante = "
                    + p.getId_participante() + ");"
            );
            if (resultUpdate != 0) {
                conexion.close();
                return true;
            } else {
                conexion.close();
                System.out.println("No se pudo borrar el participante.");
                return false;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return false;
        }
    }

    public boolean modificar(BeanParticipante p) {
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            String sql = "UPDATE participante SET nombre = '"
                    + p.getNombre_participante()
                    + "', apellido = '" + p.getApellido_participante()
                    + "', email = '" + p.getEmail_participante()
                    + "', password = '" + p.getPass_participante()
                    + "', biografia = '" + p.getBiografia_participante()
                    + "' WHERE id_participante = "
                    + p.getId_participante() + ";";
            System.out.println(sql);
            resultUpdate = stm.executeUpdate(sql);
            if (resultUpdate != 0) {
                conexion.close();
                return true;
            } else {
                conexion.close();;
                System.out.println("No se pudo modificar el participante.");
                return false;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return false;
        }
    }

}
