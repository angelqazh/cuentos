/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Persistencia;

import Model.Beans.BeanRevisor;
import Model.ConectaBD;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author angel
 */
public class Revisor {
    
    private Connection conexion = null;
    private Statement stm = null;
    private ResultSet rs;
    private Integer id_revisor;
    private String email_revisor, password_revisor, nombre_completo_revisor, telefono_revisor;
    private int resultUpdate = 0;

    public ArrayList<BeanRevisor> lista() {
        ArrayList<BeanRevisor> lista = new ArrayList<BeanRevisor>();
        BeanRevisor r;
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            rs = stm.executeQuery("select * from revisor");
            if (!rs.next()) {
                System.out.println(" No se encontraron registros");
                conexion.close();
                return null;
            } else {
                do {
                    id_revisor = rs.getInt("id_revisor");
                    email_revisor = rs.getString("email");
                    password_revisor = rs.getString("password");
                    nombre_completo_revisor = rs.getString("nombre_completo");
                    telefono_revisor = rs.getString("telefono");
                    r = new BeanRevisor(id_revisor, email_revisor, password_revisor, nombre_completo_revisor, telefono_revisor);
                    lista.add(r);
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

    public ArrayList<BeanRevisor> buscarRegistros(String cadena_busqueda) {
        ArrayList<BeanRevisor> lista = new ArrayList<BeanRevisor>();
        BeanRevisor r;
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            rs = stm.executeQuery("SELECT * FROM revisor WHERE concat(id_revisor,email,password,nombre_completo,telefono) LIKE '%" + cadena_busqueda + "%'");
            if (!rs.next()) {
                System.out.println(" No se encontraron registros");
                conexion.close();
                return null;
            } else {
                do {
                    id_revisor = rs.getInt("id_revisor");
                    email_revisor = rs.getString("email");
                    password_revisor = rs.getString("password");
                    nombre_completo_revisor = rs.getString("nombre_completo");
                    telefono_revisor = rs.getString("telefono");
                    r = new BeanRevisor(id_revisor, email_revisor, password_revisor, nombre_completo_revisor, telefono_revisor);
                    lista.add(r);
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

    public boolean insertar(BeanRevisor r) {
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            String sql
                    = "INSERT INTO revisor VALUES(null,'"
                    + r.getEmail_revisor()
                    + "','" + r.getPassword_revisor()
                    + "','" + r.getNombre_completo_revisor()
                    + "','" + r.getTelefono_revisor()+ "',1);";
            System.out.println(sql);
            resultUpdate = stm.executeUpdate(sql);
            if (resultUpdate != 0) {
                conexion.close();
                return true;
            } else {
                conexion.close();;
                System.out.println("No se pudo insertar el revisor.");
                return false;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return false;
        }
    }

    public boolean borrar(BeanRevisor r) {
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            resultUpdate = stm.executeUpdate(
                    "DELETE FROM revisor WHERE(id_revisor = "
                    + r.getId_revisor() + ");"
            );
            if (resultUpdate != 0) {
                conexion.close();
                return true;
            } else {
                conexion.close();
                System.out.println("No se pudo borrar el revisor.");
                return false;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return false;
        }
    }

    public boolean modificar(BeanRevisor r) {
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            resultUpdate = stm.executeUpdate("UPDATE revisor SET email = '"
                    + r.getEmail_revisor()
                    + "', password = '" + r.getPassword_revisor()
                    + "', nombre_completo = '" + r.getNombre_completo_revisor()
                    + "', telefono = '" + r.getTelefono_revisor()
                    + "' WHERE id_revisor = "
                    + r.getId_revisor() + ";");
            if (resultUpdate != 0) {
                conexion.close();
                return true;
            } else {
                conexion.close();;
                System.out.println("No se pudo modificar el revisor.");
                return false;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return false;
        }
    }
}
