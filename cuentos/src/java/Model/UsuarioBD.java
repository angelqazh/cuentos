/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Mauricio
 */
import Model.Beans.BeanUsuario;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class UsuarioBD {

    private Connection conexion = null;
    private Statement stm = null;
    private ResultSet ueaResultSet;

    public BeanUsuario buscar(String usuario, String contraseña) {
        BeanUsuario u = new BeanUsuario();
        System.out.println(usuario+" - "+contraseña);
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();

            ueaResultSet = stm.executeQuery(
                    "SELECT * FROM administrador WHERE(email = '"
                    + usuario + "' AND password ='"
                    + contraseña + "');"
            );

            if (!ueaResultSet.next()) {
                System.out.println(" No se encontraron registros en administrador");
                ueaResultSet = stm.executeQuery(
                        "SELECT * FROM participante WHERE(email = '"
                        + usuario + "' AND password ='"
                        + contraseña + "');"
                );

                if (!ueaResultSet.next()) {
                    System.out.println(" No se encontraron registros en participante");
                    ueaResultSet = stm.executeQuery(
                            "SELECT * FROM revisor WHERE(email = '"
                            + usuario + "' AND password ='"
                            + contraseña + "');"
                    );

                    if (!ueaResultSet.next()) {
                        System.out.println(" No se encontraron registros en revisor");
                        conexion.close();
                        u.setTipo("");
                        u.setUsuario("");
                        u.setContraseña("");
                        return u;
                    } else {
                        u.setTipo("revisor");
                        u.setUsuario(ueaResultSet.getString("email"));
                        u.setContraseña(ueaResultSet.getString("password"));
                        conexion.close();

                        return u;
                    }
                } else {
                    u.setTipo("participante");
                    u.setUsuario(ueaResultSet.getString("email"));
                    u.setContraseña(ueaResultSet.getString("password"));
                    conexion.close();

                    return u;
                }
            } else {
                u.setTipo("administrador");
                u.setUsuario(ueaResultSet.getString("email"));
                u.setContraseña(ueaResultSet.getString("password"));
                conexion.close();

                return u;
            }
        } catch (Exception e) {
            u.setTipo("");
            u.setUsuario("");
            u.setContraseña("");
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return u;
        }
    }
}
