/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Beans.BeanAdmin;
import Model.Beans.BeanParticipante;
import Model.Beans.BeanRevisor;
import Model.Persistencia.Administrador;
import Model.Persistencia.Participante;
import Model.Persistencia.Revisor;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author angel
 */
public class ServletCreate extends HttpServlet {

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

        if (request.getParameter("admin") != null) {
            Administrador admin = new Administrador();
            BeanAdmin bean = new BeanAdmin(
                    null,
                    request.getParameter("email_a"),
                    request.getParameter("password_a"),
                    request.getParameter("nombre_a"),
                    request.getParameter("telefono_a"));
            admin.insertar(bean);
        } else if (request.getParameter("participante") != null) {
            Participante p = new Participante();
            BeanParticipante bean = new BeanParticipante(
                    null,
                    request.getParameter("nombre_p"),
                    request.getParameter("apellido_p"),
                    request.getParameter("email_p"),
                    request.getParameter("bio"),
                    null,
                    request.getParameter("password_p"));
            p.insertar(bean);
        } else if (request.getParameter("revisor") != null) {
            Revisor r = new Revisor();
            BeanRevisor bean = new BeanRevisor(
                    null,
                    request.getParameter("email_r"),
                    request.getParameter("password_r"),
                    request.getParameter("nombre_r"),
                    request.getParameter("telefono_r"));
            r.insertar(bean);
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
