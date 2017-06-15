<%-- 
    Document   : seleccionar
    Created on : 14/06/2017, 10:27:57 PM
    Author     : prueba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Ver Todos</title>
	<meta charset="UTF-8">
        <%request.setAttribute("active", "leche");%>
        <jsp:include page="../menu.jsp" />
	<script src="js/tablas/script.js" ></script>
        <link rel='stylesheet' href='css/formularios/registro.css'>
 
 	<main>
 		<div class="container">
 		 <h1 class="well">VER TODOS LOS MATERIALES PRIMOS</h1>
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
		                     <th>Cantidad</th>
		                    
		                      
		                   </thead>
		   <tbody id="filas">
                        <%
                            ArrayList<BeanLeche> listaLeche = (ArrayList<BeanLeche>) request.getAttribute("ListaLeche");
                            if(listaProductos!=null){
                                for(BeanLeche b: listaLeche){
                                    out.println("<tr>");
                                    out.println("<td>");
                                    out.println(b.getNombre());
                                    out.println("</td>");
                                    out.println("<td>");
                                    out.println(b.getApellido1());
                                    out.println("</td>");
                                    out.println("<td>");
                                    out.println(b.getApellido2());
                                    out.println("</td>");
                                    out.println("<td>");
                                    out.println(b.getCantidadLeche());
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
                    int contadorPaginasIni=0;
                    int numPaginas=0;
                    int numeroElementos=(Integer) request.getAttribute("Cantidad");
                    while(numeroElementos>=contadorPaginasIni){
                            
                        numPaginas++;
                        contadorPaginasIni+=5;
                        
                    }
                    for(int i=0;i<numPaginas;i++){
                        out.println("<li class='active'><a href='javascript:buscarPagina("+i+");'id='generarTabla'> "+(i+1)+"</a></li>");
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
