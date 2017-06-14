<%-- 
    Document   : eliminarProducto
    Created on : 14/06/2017, 09:30:54 AM
    Author     : kervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Eliminar Productos</title>
<%request.setAttribute("active", "productos");%>
<jsp:include page="../menu.jsp" />
<script src="js/eliminar/script.js" ></script>
<script src="js/tablas/script.js" ></script>
<link rel='stylesheet' href='css/formularios/eliminar.css'>
<link rel='stylesheet' href='css/formularios/registro.css'>
<link rel='stylesheet' href='css/formularios/tabla.css'>

  <main>
  <h1 class="well">ELIMINAR PRODUCTO</h1>
        <div class="col ">
         
          <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-2 col-lg-2 col-xl-2">
              <span class="srchLabel">BUSQUEDA</span>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
              <input placeholder="Buscar producto ..." type="text" class="typeahead tt-query" autocomplete="off" spellcheck="false" id="txtSearch">
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
              <button type="button" onclick="buscarEliminar();" class="btn btn-primary btnSearchOptions">BUSCAR</button>
            </div>
          </div>
          <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-10 col-lg-12 col-xl-12">
              <span class="engAlpha">
                    <div class="pagination pagination-large">
                       <ul class="pager">
                       </ul>
                    </div>
                 </span>
            </div>
          </div>
        </div>
  
        </div>
        <div class="container" >
            <div class="row" id="row">
                
                
                <div class="col-md-12" >
                
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
                </div>
               </div>

               <button type="subtmit" class="btnRegistro">Eliminar</button>  
            </div>
 
            </div>
            
        </main>
    </body>
</html>