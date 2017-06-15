<%-- 
    Document   : modificar
    Created on : 14/06/2017, 09:21:45 AM
    Author     : kervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%request.setAttribute("active", "productos");%>
<jsp:include page="../menu.jsp" />
<title>Modificar Productos</title>
   <meta charset="UTF-8">
   <script src="js/eliminar/script.js" ></script>
   <script src="js/tablas/script.js" ></script>
   <link rel='stylesheet' href='css/formularios/eliminar.css'>
   <link rel='stylesheet' href='css/formularios/registro.css'>
   <link rel='stylesheet' href='css/formularios/tabla.css'>

    <main>
    <h1 class="well">MODIFICAR PRODUCTO</h1>
        <div class="col ">
        
          <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-2 col-lg-2 col-xl-2">
              <span class="srchLabel">BUSQUEDA</span>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
              <input placeholder="Buscar producto ..." type="text" class="typeahead tt-query" autocomplete="off" spellcheck="false" id="txtSearch">
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
              <button type="button" class="btn btn-primary btnSearchOptions">BUSCAR</button>
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
        

       <div class="container-formulario">
            
            <div class="col-lg-12well">
                <div class="row">
                    <form action="ServletActualizarProducto" method="POST">
                         
                        <div class="col-sm-12">
                             <div class="form-group">
                                <label>Codigo</label>
                                <input type="text" id="codigo"  placeholder="Ingrese el codigo" class="form-control" required>
                            </div> 
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label>Tipo de Producto lácteo</label>
                                    <input type="text" id="nombre" placeholder="Ingrese el producto" class="form-control" >
                                </div>
                                <div class="col-sm-6 form-group">
                                    <label>Precio:</label>
                                    <input type="text" id="precio" placeholder="Ingrese el precio" class="form-control" required>
                                </div>
                                <div class="col-sm-6 form-group">
                                    <label>Cantidad:</label>
                                    <input type="text" id="cantidad" placeholder="Ingrese la cantidad" class="form-control" required>
                                </div>
                            </div>                  
                            
                       
                        <button type="subtmit"  class="btnRegistro">Modificar</button>                   
                        </div>
                    </form> 
                 </div>
            </div>
        </div>
        </main>
    </body>
</html>