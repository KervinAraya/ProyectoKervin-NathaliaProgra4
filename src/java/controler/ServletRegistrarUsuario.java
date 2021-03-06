/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import Bean.BeanUsuario;
import Datos.InsertarUsuarios;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kervin
 */
@WebServlet(name = "ServletRegistrarUsuario", urlPatterns = {"/ServletRegistrarUsuario"})
@MultipartConfig
public class ServletRegistrarUsuario extends HttpServlet {  
    
    private static final long serialVersionUID = 1L;

    @SuppressWarnings("unused")
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    
        BeanUsuario beanUsuario = new BeanUsuario(request.getParameter("nombre"), request.getParameter("apellido1"), request.getParameter("apellido2"), request.getParameter("cedula"), request.getParameter("telefono"), request.getParameter("correo"), request.getParameter("direccion"), request.getParameter("avatar"), request.getParameter("contrasena"), request.getParameter("usuario"), request.getParameter("privilegio"));
        InsertarUsuarios insertarUsuarios = new InsertarUsuarios(beanUsuario);
        String res=insertarUsuarios.insertarUsuario();
        if(res.equals("1")){
            request.getRequestDispatcher("registrarUsuario").forward(request, response);
        }else{
            request.setAttribute("error", res);
           request.getRequestDispatcher("ErrorLogin").forward(request, response);
        }
    }
    	private void copy(InputStream inputStream, OutputStream outputStream, int bufferSize) throws IOException {
		int lengthStream;
		byte[] buff = new byte[bufferSize];
		while ((lengthStream = inputStream.read(buff)) > 0) {
			outputStream.write(buff, 0, lengthStream);
		}
		outputStream.flush();
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
