<%-- 
    Document   : verProductos
    Created on : 14/06/2017, 09:26:18 AM
    Author     : kervin
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Bean.BeanProductos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Ver Todos los Productos</title>
    <%request.setAttribute("active", "productos");%>
    <jsp:include page="../menu.jsp" />
    <script src="js/tablas/script.js" ></script>
    <link rel='stylesheet' href='css/formularios/registro.css'>
        <script>
            function buscarPagina(pagina){
                $(document).ready(function(){
                    $.post('PaginarProductos',{
                        pagina : pagina
                    }, function(responseText){
                            $('#filas').html(responseText);
                    
                    });
                });
                
                
            }
        </script>    
 	<main>
 		<div class="container">
 		 <h1 class="well">VER TODOS LOS PRODUCTOS</h1>
		    <div class="row">
				
		        
		        <div class="col-md-12">
		        
		        <br>
		        <br>
		        <br>
		        <h4>
		        </h4>
		        <div class="table-responsive">

		                
		              <table id="mytable" class="table table-bordred table-striped">
		                   
		                   <thead>
		                 <th>Codigo</th>
                        	 <th>Producto Lácteo</th>
                        	 <th>Cantidad</th>
                        	 <th>Precio</th>
                        	
		                     
		                   </thead>
		    <tbody id="filas">
                        <%
                            ArrayList<BeanProductos> listaProductos = (ArrayList<BeanProductos>) request.getAttribute("ListaProductos");
                            if(listaProductos!=null){
                                for(BeanProductos b: listaProductos){
                                    out.println("<tr>");
                                    out.println("<td>");
                                    out.println(b.getCodigo());
                                    out.println("</td>");
                                    out.println("<td>");
                                    out.println(b.getNombre());
                                    out.println("</td>");
                                    out.println("<td>");
                                    out.println(b.getPrecio());
                                    out.println("</td>");
                                    out.println("<td>");
                                    out.println(b.getCantidad());
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