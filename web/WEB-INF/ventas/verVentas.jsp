<%-- 
    Document   : verVentas
    Created on : 14/06/2017, 09:52:27 AM
    Author     : kervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Añadir venta</title>
<%request.setAttribute("active", "ventas");%>
<jsp:include page="../menu.jsp" />
  <script src="js/venta/añadir.js"></script>
 <link rel='stylesheet' href='css/formularios/registro.css'>
   <link rel='stylesheet' href='css/formularios/seleccionar.css'>
   
    <main>
        <div class="container">
         <h1 class="well">VER TODAS LAS VENTAS</h1>
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