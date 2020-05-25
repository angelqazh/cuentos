package Controller;

import Model.Beans.BeanAdmin;
import Model.Beans.BeanParticipante;
import Model.Beans.BeanRevisor;
import Model.Persistencia.Administrador;
import Model.Persistencia.Participante;
import Model.Persistencia.Revisor;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author angel
 */
public class ServletDelete extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        if (request.getParameter("admin_b") != null) {

            Administrador admin = new Administrador();
            BeanAdmin bean = new BeanAdmin(
                    Integer.parseInt(request.getParameter("id")), "", "", "", "");
            boolean r = admin.borrar(bean);

            if (r) {
                ArrayList<BeanAdmin> lista = admin.lista();
                if (lista != null) {
                    for (BeanAdmin beanAdmin : lista) {
                        out.println("<tr>");
                        out.println("<th scope=\"row\">" + beanAdmin.getId_adm() + "</th>");
                        out.println("<td id=\"email_a_" + beanAdmin.getId_adm() + "\">" + beanAdmin.getEmail_adm() + "</td>");
                        out.println("<td id=\"password_a_" + beanAdmin.getId_adm() + "\">" + beanAdmin.getPassword_adm() + "</td>");
                        out.println("<td id=\"nombre_a_" + beanAdmin.getId_adm() + "\">" + beanAdmin.getNombre_completo_adm() + "</td>");
                        out.println("<td id=\"telefono_a_" + beanAdmin.getId_adm() + "\">" + beanAdmin.getTelefono_adm() + "</td>");
                        out.println("<td><button value=\"" + beanAdmin.getId_adm() + "\" type=\"button\" class=\"btn btn-outline-warning edit_a\">Editar</button></td>");
                        out.println("<td><button value=\"" + beanAdmin.getId_adm() + "\" type=\"button\" class=\"btn btn-outline-danger delete_a\">Eliminar</button></td>");
                        out.println("</tr>");
                    }
                }
            }
        } else if (request.getParameter("participante_b") != null) {

            Participante p = new Participante();
            BeanParticipante bean = new BeanParticipante(
                    Integer.parseInt(request.getParameter("id")), "", "", "", "", null, "");
            boolean r = p.borrar(bean);

            if (r) {
                ArrayList<BeanParticipante> lista = p.lista();
                if (lista != null) {
                    for (BeanParticipante beanP : lista) {
                        out.println("<tr>");
                        out.println("<th scope=\"row\">" + beanP.getId_participante() + "</th>");
                        out.println("<td id=\"nombre_p_" + beanP.getId_participante() + "\">" + beanP.getNombre_participante() + "</td>");
                        out.println("<td id=\"apellido_p_" + beanP.getId_participante() + "\">" + beanP.getApellido_participante() + "</td>");
                        out.println("<td id=\"email_p_" + beanP.getId_participante() + "\">" + beanP.getEmail_participante() + "</td>");
                        out.println("<td id=\"password_p_" + beanP.getId_participante() + "\">" + beanP.getPass_participante() + "</td>");
                        out.println("<td id=\"bio_p_" + beanP.getId_participante() + "\">" + beanP.getBiografia_participante() + "</td>");
                        out.println("<td><button value=\"" + beanP.getId_participante() + "\" type=\"button\" class=\"btn btn-outline-warning edit_p\">Editar</button></td>");
                        out.println("<td><button value=\"" + beanP.getId_participante() + "\" type=\"button\" class=\"btn btn-outline-danger delete_p\">Eliminar</button></td>");
                        out.println("</tr>");
                    }
                }
            }
        } else if (request.getParameter("revisor_b") != null) {

            Revisor r = new Revisor();
            BeanRevisor bean = new BeanRevisor(
                    Integer.parseInt(request.getParameter("id")), "", "", "", "");
            boolean res = r.borrar(bean);

            if (res) {
                ArrayList<BeanRevisor> lista = r.lista();
                if (lista != null) {
                    for (BeanRevisor beanR : lista) {
                        out.println("<tr>");
                        out.println("<th scope=\"row\">" + beanR.getId_revisor() + "</th>");
                        out.println("<td id=\"email_r_" + beanR.getId_revisor() + "\">" + beanR.getEmail_revisor() + "</td>");
                        out.println("<td id=\"password_r_" + beanR.getId_revisor() + "\">" + beanR.getPassword_revisor() + "</td>");
                        out.println("<td id=\"nombre_r_" + beanR.getId_revisor() + "\">" + beanR.getNombre_completo_revisor() + "</td>");
                        out.println("<td id=\"telefono_r_" + beanR.getId_revisor() + "\">" + beanR.getTelefono_revisor() + "</td>");
                        out.println("<td><button value=\"" + beanR.getId_revisor() + "\" type=\"button\" class=\"btn btn-outline-warning edit_r\">Editar</button></td>");
                        out.println("<td><button value=\"" + beanR.getId_revisor() + "\" type=\"button\" class=\"btn btn-outline-danger delete_r\">Eliminar</button></td>");
                        out.println("</tr>");
                    }
                }
            }
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
