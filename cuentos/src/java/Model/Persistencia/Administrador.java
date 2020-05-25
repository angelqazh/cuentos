package Model.Persistencia;

import Model.Beans.BeanAdmin;
import Model.ConectaBD;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author angel
 */
public class Administrador {

    private Connection conexion = null;
    private Statement stm = null;
    private ResultSet rs;
    private Integer id_adm;
    private String email_adm, password_adm, nombre_completo_adm, telefono_adm;
    private int resultUpdate = 0;

    public ArrayList<BeanAdmin> lista() {
        ArrayList<BeanAdmin> lista = new ArrayList<BeanAdmin>();
        BeanAdmin admin;
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            rs = stm.executeQuery("select * from administrador");
            if (!rs.next()) {
                System.out.println(" No se encontraron registros");
                conexion.close();
                return null;
            } else {
                do {
                    id_adm = rs.getInt("id_admin");
                    email_adm = rs.getString("email");
                    password_adm = rs.getString("password");
                    nombre_completo_adm = rs.getString("nombre_completo");
                    telefono_adm = rs.getString("telefono");
                    admin = new BeanAdmin(id_adm, email_adm, password_adm, nombre_completo_adm, telefono_adm);
                    lista.add(admin);
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

    public ArrayList<BeanAdmin> buscarRegistros(String cadena_busqueda) {
        ArrayList<BeanAdmin> lista = new ArrayList<BeanAdmin>();
        BeanAdmin admin;
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            rs = stm.executeQuery("SELECT * FROM administrador WHERE concat(id_admin,email,password,nombre_completo,telefono) LIKE '%" + cadena_busqueda + "%'");
            if (!rs.next()) {
                System.out.println(" No se encontraron registros");
                conexion.close();
                return null;
            } else {
                do {
                    id_adm = rs.getInt("id_admin");
                    email_adm = rs.getString("email");
                    password_adm = rs.getString("password");
                    nombre_completo_adm = rs.getString("nombre_completo");
                    telefono_adm = rs.getString("telefono");
                    admin = new BeanAdmin(id_adm, email_adm, password_adm, nombre_completo_adm, telefono_adm);
                    lista.add(admin);
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

    public boolean insertar(BeanAdmin admin) {
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            String sql
                    = "INSERT INTO administrador VALUES(null,'"
                    + admin.getEmail_adm()
                    + "','" + admin.getPassword_adm()
                    + "','" + admin.getNombre_completo_adm()
                    + "','" + admin.getTelefono_adm() + "');";
            System.out.println(sql);
            resultUpdate = stm.executeUpdate(sql);
            if (resultUpdate != 0) {
                conexion.close();
                return true;
            } else {
                conexion.close();;
                System.out.println("No se pudo insertar el administrador.");
                return false;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return false;
        }
    }

    public boolean borrar(BeanAdmin admin) {
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            resultUpdate = stm.executeUpdate(
                    "DELETE FROM administrador WHERE(id_admin = "
                    + admin.getId_adm() + ");"
            );
            if (resultUpdate != 0) {
                conexion.close();
                return true;
            } else {
                conexion.close();
                System.out.println("No se pudo borrar el administrador.");
                return false;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return false;
        }
    }

    public boolean modificar(BeanAdmin admin) {
        try {
            ConectaBD conectaBD = new ConectaBD();
            conexion = conectaBD.getConexion();
            stm = conexion.createStatement();
            resultUpdate = stm.executeUpdate("UPDATE administrador SET email = '"
                    + admin.getEmail_adm()
                    + "', password = '" + admin.getPassword_adm()
                    + "', nombre_completo = '" + admin.getNombre_completo_adm()
                    + "', telefono = '" + admin.getTelefono_adm()
                    + "' WHERE id_admin = "
                    + admin.getId_adm() + ";");
            if (resultUpdate != 0) {
                conexion.close();
                return true;
            } else {
                conexion.close();;
                System.out.println("No se pudo modificar el administrador.");
                return false;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos.");
            e.printStackTrace();
            return false;
        }
    }

}
