<%-- 
    Document   : vertodos
    Created on : 11/06/2017, 11:33:44 AM
    Author     : kervin
--%>

<%@page import="Bean.BeanSocio"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Bean.BeanUsuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%request.setAttribute("active", "socios");%>
    <jsp:include page="../menu.jsp" />
    <title>Ver Todos</title>
    <meta charset="UTF-8">
    <script src="js/tablas/script.js" ></script>	
    <link rel='stylesheet' href='css/formularios/registro.css'>
    


 	<main>
 		<div class="container">
 		 <h1 class="well">VER TODOS LOS ASOCIADOS</h1>
		    <div class="row">
		        <div class="col-md-12">
		        <br>
		        <br>
		        <h4>
		        </h4>
		        <div class="table-responsive">

		                
		              <table id="mytable" class="table table-bordred table-striped">
		                   <thead>
		                   <th>Cedula</th>
		                   <th>Nombre Completo</th>
		                   <th>Correo Electronico</th>
		                   <th>Dirección</th>
                                   <th>Teléfono</th>
		                   </thead>
		    <tbody id="filas">
		   <%             
                            ArrayList<BeanSocio> listaSocios = (ArrayList<BeanSocio>) request.getAttribute("ListaSocios");
                            if(listaSocios!=null){
                               for(BeanSocio x: listaSocios){
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
                        %>
		    
		    </tbody>
		        
		</table>

		<div class="clearfix"></div>
		<ul class="pagination pull-right">
		  <li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
		  <li class="active"><a href="#">1</a></li>
		  <li><a href="#">2</a></li>
		  <li><a href="#">3</a></li>
		  <li><a href="#">4</a></li>
		  <li><a href="#">5</a></li>
		  <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
		</ul>
		                
		            </div>
		            
		        </div>
			</div>
		</div>
 	</main>
 </body>
</html>