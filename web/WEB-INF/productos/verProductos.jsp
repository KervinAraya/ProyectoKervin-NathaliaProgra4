<%-- 
    Document   : verProductos
    Created on : 14/06/2017, 09:26:18 AM
    Author     : kervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Ver Todos los Productos</title>
    <%request.setAttribute("active", "productos");%>
    <jsp:include page="../menu.jsp" />
    <script src="js/tablas/script.js" ></script>
    <link rel='stylesheet' href='css/formularios/registro.css'>

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
                        	 <th>Modificar</th>
                        	 <th>Eliminar</th>
		                      
		                      
		                       
		                   </thead>
		    <tbody id="filas">
		    
		    
		    
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