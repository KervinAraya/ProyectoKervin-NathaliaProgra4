<%-- 
    Document   : registrar
    Created on : 14/06/2017, 09:11:58 AM
    Author     : kervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Registrar Productos</title>
<%request.setAttribute("active", "productos");%>
<jsp:include page="../menu.jsp" />
<link rel='stylesheet' href='css/formularios/registro.css'>
<link rel='stylesheet' href='css/formularios/seleccionar.css'>
<script type="text/javascript">
        function SoloNumeros(e){
            
             var key = window.Event ? e.which : e.keyCode
            return (key >= 48 && key <= 57)
            

        }
    </script>
    <main>
        <div class="container-formulario">
            <h1 class="well">REGISTRAR PRODUCTOS</h1>
            <div class="col-lg-12well">
                <div class="row">
                    <form action="ServletRegistrarProducto" method="POST">
                         
                        <div class="col-sm-12">
                             <div class="form-group">
                                <label>Codigo</label>
                                <input type="text" id="cedula-empleada" name="codigo" placeholder="Ingrese el codigo" class="form-control" required>
                            </div> 
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label>Tipo de Producto lácteo</label>
                                    <input type="text" name="nombre" placeholder="Ingrese el producto" class="form-control" >
                                </div>
                                <div class="col-sm-6 form-group">
                                    <label>Precio:</label>
                                    <input type="text" name="precio" onkeypress="return SoloNumeros(event);"  placeholder="Ingrese el precio" class="form-control" required>
                                </div>
                            </div>                  
                            
                       
                        <button type="subtmit" class="btnRegistro">Registrar</button>                   
                        </div>
                    </form> 
                 </div>
            </div>
        </div>

    </main>

  </body>
</html>
