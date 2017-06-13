/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import Bean.BeanSocio;
import Bean.BeanUsuario;
import Datos.InsertarSocio;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kervin
 */
@WebServlet(name = "ServletRegistrarSocio", urlPatterns = {"/ServletRegistrarSocio"})
public class ServletRegistrarSocio extends HttpServlet {

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
        BeanSocio beanSocio = new BeanSocio(request.getParameter("cedula"), request.getParameter("nombre"), request.getParameter("apellido1"), request.getParameter("apellido2"), request.getParameter("direccion"), request.getParameter("telefono"), request.getParameter("correo"),(String)request.getSession().getAttribute("user"));
        InsertarSocio insertarSocio = new InsertarSocio(beanSocio);
        String res=insertarSocio.insertarSocio();
        if(res.equals("1")){
            request.getRequestDispatcher("registrarSocio").forward(request, response);
        }else{
            request.setAttribute("error", res);
           request.getRequestDispatcher("ErrorLogin").forward(request, response);
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
