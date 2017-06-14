<%-- 
    Document   : verTodos
    Created on : 09/06/2017, 04:56:20 PM
    Author     : kervin
--%>

<%@page import="Bean.BeanUsuario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <%request.setAttribute("active", "usuarios");%>
    <title>Ver Todos</title>
    <jsp:include page="../menu.jsp" />
    <script src="js/tablas/script.js" ></script> 
    <link rel='stylesheet' href='css/formularios/registro.css'>
    <script src="js/empleados/scriptBuscarEmpleado.js"></script>
    <script>
        function buscarPagina(pagina){
            $(document).ready(function() {                   
                    $.post('PaginarTodosUsuarios', {
                            pagina : pagina
                    }, function(responseText) {
                            $('#filas').html(responseText);
                    });
            });
        }
    </script>
 	<main>
 		<div class="container">
 		 <h1 class="well">VER TODOS LOS EMPLEADOS</h1>
		    <div class="row">
				
		        
		        <div class="col-md-12">
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
                        %>
		    </tbody>
		        
		</table>

		<div class="clearfix"></div>
		<ul class="pagination pull-right">
		  <li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
		 <%
                     int contadoPaginasIniciales = 0;
                     int numPaginas=0;
                     int numeroElementos = (Integer) request.getAttribute("Cantidad");
                     while(numeroElementos>=contadoPaginasIniciales){
                         numPaginas++;
                         contadoPaginasIniciales+=5;
                     }
                     for(int a=0;a<numPaginas;a++){
                         out.println("<li class='active'><a href='javascript:buscarPagina("+a+");' id='generarTabla'> "+(a+1)+"</a></li>");
                     }
                  %>
		  <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
		</ul>
		                
        </div>
        </div>
        </div>
        </div>
 	</main>
 </body>
</html>