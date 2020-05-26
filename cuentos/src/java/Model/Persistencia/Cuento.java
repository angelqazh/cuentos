/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.Persistencia;

import Model.Beans.BeanCuento;
import Model.ConectaBD;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Mauricio
 */
public class Cuento {

    private Connection conexion = null;
    private Statement stm = null;
    private ResultSet rs;
    private int resultUpdate = 0;

    public ArrayList<BeanCuento> lista2() {
        int cont = 0;
        ArrayList<BeanCuento> lista = new ArrayList<BeanCuento>();
        BeanCuento c;
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            rs = stm.executeQuery("select * from cuento");
            if (!rs.next()) {
                System.out.println(" No se encontraron registros");
                conexion.close();
                return null;
            } else {
                do {
                    c = new BeanCuento();

                    c.setId_cuento(rs.getInt("id_cuento"));
                    c.setContenido_cuento(rs.getString("contenido"));
                    c.setNombre_cuento(rs.getString("nombre_cuento"));
                    c.setGenero_cuento(rs.getString("genero"));
                    c.setImagen_cuento(rs.getString("imagen"));
                    c.setLink_cuento(rs.getString("link"));

                    lista.add(c);
                    cont++;
                } while (rs.next() && cont < 3);
                conexion.close();
                return lista;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return null;
        }
    }

    public ArrayList<BeanCuento> lista() {
        ArrayList<BeanCuento> lista = new ArrayList<BeanCuento>();
        BeanCuento c;
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            rs = stm.executeQuery("select * from cuento");
            if (!rs.next()) {
                System.out.println(" No se encontraron registros");
                conexion.close();
                return null;
            } else {
                do {
                    c = new BeanCuento();

                    c.setId_cuento(rs.getInt("id_cuento"));
                    c.setContenido_cuento(rs.getString("contenido"));
                    c.setNombre_cuento(rs.getString("nombre_cuento"));
                    c.setGenero_cuento(rs.getString("genero"));
                    c.setImagen_cuento(rs.getString("imagen"));
                    c.setLink_cuento(rs.getString("link"));

                    lista.add(c);
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

    public BeanCuento buscar(Integer c) {
        BeanCuento cuento = new BeanCuento();

        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            rs = stm.executeQuery(
                    "SELECT * FROM cuento WHERE(id_cuento = "
                    + c + ");"
            );
            if (!rs.next()) {
                System.out.println("no se encontro nada");
                conexion.close();
                return cuento;
            } else {
                cuento.setId_cuento(rs.getInt("id_cuento"));
                cuento.setContenido_cuento(rs.getString("contenido"));
                cuento.setNombre_cuento(rs.getString("nombre_cuento"));
                cuento.setGenero_cuento(rs.getString("genero"));
                cuento.setImagen_cuento(rs.getString("imagen"));
                cuento.setLink_cuento(rs.getString("link"));
                conexion.close();
                return cuento;

            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return cuento;
        }
    }

    public boolean borrar(int c) {
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            resultUpdate = stm.executeUpdate(
                    "DELETE FROM cuento WHERE(id_cuento = "
                    + c + ");"
            );
            if (resultUpdate != 0) {
                conexion.close();
                return true;
            } else {
                conexion.close();
                System.out.println("No se pudo borrar el cuento.");
                return false;

            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return false;
        }
    }

    public boolean aprobar(int c) {
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            resultUpdate = stm.executeUpdate("UPDATE cuento SET aprobado = 'true' WHERE id_cuento = "
                    + c + ";");
            if (resultUpdate != 0) {
                conexion.close();
                return true;
            } else {
                conexion.close();;
                System.out.println("No se pudo aprobar el.");
                return false;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return false;
        }
    }
}
