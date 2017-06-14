<%-- 
    Document   : vender
    Created on : 14/06/2017, 09:44:16 AM
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
   <div class="container-formulario">
                        <h1 class="well">REGISTRAR VENTA</h1>
    <form>
         
        <div class="col-sm-12">
             
                
            </div>
            
            <div class="row">
                <div class="col-sm-6 form-group">
                    <label>Codigo</label>
                    <input type="text" placeholder="Ingrese el codigo" class="form-control" >
                </div>
                <div class="col-sm-6 form-group">
                    <label>Cantidad:</label>
                    <input type="text" placeholder="Ingrese la cantidad" class="form-control" required>
                </div>
            </div> 

            
                   
                    <button type="subtmit" class="btnRegistro">Añadir</button>  


                        <div class="col-lg-12well">
                            <div class="row">
                                <div class="container">
                                 
                                           
                                  <table class="table table-hover">
                                    <thead>
                                      <tr>
                                        <th>Codigo</th>
                                        <th>Precio unitario</th>
                                        <th>Cantidad</th>
                                        <th>Total</th>
                                      </tr>
                                    </thead>
                                    <tbody>
                                      <tr tabindex="1">
                                        <td>Queso Tierno</td>
                                        <td>2400</td>
                                        <td>1</td>
                                        <td>2400</td>
                                      </tr>
                                      <tr tabindex="2">
                                        <td>Queso Mozarella</td>
                                        <td>4000</td>
                                        <td>2</td>
                                        <td>8000</td>
                                      </tr>
                                      <tr tabindex="3">
                                        <td></td>
                                        <td></td>
                                        <td>Total</td>
                                        <td>10400</td>
                                      </tr>
                                      
                                    </tbody>
                                  </table>
                                </div>                 
                    </div>
                    <div class="container">
                
                <div class="col-sm-6 form-group">
                    
                     <button type="subtmit" class="btnRegistro">Vender</button>  
        </div>
                </form> 
             </div>
             
    </div>

</main>

</body>
</html>