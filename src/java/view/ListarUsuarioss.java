/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import Bean.BeanUsuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kervin
 */
@WebServlet(name = "ListarUsuarios", urlPatterns = {"/ListarUsuarios"})
public class ListarUsuarioss extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {                       
            ArrayList<BeanUsuario> listaUsuarios = (ArrayList<BeanUsuario>) request.getAttribute("ListaUsuarios");
            if(listaUsuarios!=null){
               for(BeanUsuario x: listaUsuarios){
                    out.println("<tr>");
                    out.println("<td>");
                    out.println(x.getCedula());
                    out.println("</td>");
                    out.println("<td>");
                    out.println(x.getNombre()+" "+x.getApellido1()+" "+x.getApellido2());
                    out.println("</td>");
                    out.println("<td>");
                    out.println(x.getCorreo());
                    out.println("</td>");
                    out.println("<td>");
                    out.println(x.getDireccion());
                    out.println("</td>");
                    out.println("<td>");
                    out.println(x.getTelefono());
                    out.println("</td>");
                    out.println("</tr>");
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
