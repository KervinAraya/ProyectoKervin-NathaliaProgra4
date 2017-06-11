<%-- 
    Document   : seleccionar
    Created on : 09/06/2017, 03:04:03 PM
    Author     : kervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <%request.setAttribute("active", "usuarios");%>
  <jsp:include page="../menu.jsp" />
  <script src="js/eliminar/script.js" ></script>
  <script src="js/tablas/script.js" ></script>
  <link rel='stylesheet' href='css/formularios/eliminar.css'>
  <link rel='stylesheet' href='css/menu/style.css'>
  <link rel='stylesheet' href='css/formularios/registro.css'>
  <link rel='stylesheet' href='css/formularios/tabla.css'>
  <link rel='stylesheet' href='css/formularios/seleccionar.css'>
   <script type="text/javascript">
        function maskara(e){
            var texto = document.getElementById("cedulaBuscar").value;
            var temporal=texto;
            if(texto.length==1){
                temporal="";
                temporal=texto[0];
                temporal+="-";
            }
            if(texto.length==6){
                temporal="";
                for(var i=0;i<texto.length;i++){
                    if(i==5){
                        temporal+=texto[i];
                        temporal+="-";
                    }else{
                        temporal+=texto[i];
                    }
                }
            }
            if(texto.length>=10){
                temporal="";
                for(var i=0;i<texto.length;i++){
                    if(i<=9){
                        temporal+=texto[i];
                    }
                }
            }
            document.getElementById("cedulaBuscar").value=temporal;
             var key = window.Event ? e.which : e.keyCode
            return (key >= 48 && key <= 57)
        }

    </script>

    <script type="text/javascript">
        function fono(e){
            var texto=document.getElementById("telefono").value;
            var temporal=texto;
            if(texto.length==4){
                temporal="";
                for(var i=0;i<texto.length;i++){
                    if(i==3){
                        temporal+=texto[i];
                        temporal+="-";

                    }else{

                        temporal+=texto[i];
                        }
                }
            }
             if(texto.length>=8){
                    temporal="";
                for(var i=0;i<texto.length;i++){
                    if(i<=7){
                        temporal+=texto[i];
                    }
                }
            }
            document.getElementById("telefono").value=temporal;
             var key = window.Event ? e.which : e.keyCode
            return (key >= 48 && key <= 57)
            

        }
    </script>
 
  <main>
    <div class="col ">
         <h1 class="well">VER EMPLEADO </h1>
      <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-2 col-lg-2 col-xl-2">
          <span class="srchLabel">BUSQUEDA</span>
        </div>
          <form action="ServletBuscarUsuario" method="POST">
            <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">  
                <input placeholder="Buscar empleado ..." id="cedulaBuscar" onKeyPress="return maskara(event);" name="cedulaBuscar" type="text" class="typeahead tt-query" autocomplete="off" spellcheck="false" required>
            </div>
            <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
                <input type="submit" value="BUSCAR" class="btn btn-primary btnSearchOptions">
            </div>
          </form>
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
    <jsp:useBean id="beanUsuario" class="Bean.BeanUsuario" scope="request"/>     
    </div>
        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xs-offset-0 col-sm-offset-0 col-md-offset-3 col-lg-offset-3 toppad" >
          <div class="panel panel-info">
            <div class="panel-heading" id="barra">
                <input type="text" id="nom" class="panel-title" value="<jsp:getProperty name="beanUsuario" property="nombre"/> <jsp:getProperty name="beanUsuario" property="apellido1"/> <jsp:getProperty name="beanUsuario" property="apellido2"/>"  readonly="readonly" style="background-color: #DBE6B1">
            </div>

            <div class="panel-body">
              <div class="row">
                <div class="col-md-3 col-lg-3 " align="center"> <img alt="User Pic" src="imagenesUsuarios/avatar.png" class="img-circle img-responsive">
                
                 </div>   
                <div class=" col-md-9 col-lg-9 "> 
                  <table class="table table-user-information">
                    <tbody>
                    
                      <tr>
                        <td>Cedula</td>
                        <td><input type="text" value="<jsp:getProperty name="beanUsuario" property="cedula"/> " id="cedula" readonly="readonly"> </td>
                      </tr>
                      <tr>
                        <td>Dirección</td>
                        <td><input type="text" name=""  value="<jsp:getProperty name="beanUsuario" property="direccion"/> " id="direccion"  readonly="readonly"></td>
                      </tr>
                      <tr>
                        <td>Telefono</td>
                        <td><input type="text" name=""  value="<jsp:getProperty name="beanUsuario" property="telefono"/> " id="telefono" readonly="readonly"></td>
                      </tr>
                   
                        <tr>
                          <tr>
                            <td>Correo electrónico</td>
                            <td><input type="text" name="" value="<jsp:getProperty name="beanUsuario" property="correo"/> " id="correo"  readonly="readonly"></td>
                          </tr>
                          </tr>
                          <tr>
                            <td>Contraseña</td>
                            <td><input type="text" name=""  value="<jsp:getProperty name="beanUsuario" property="contrasena"/> " id="pass"  readonly="readonly"></td>
                        </tr>
                      <tr>
                        
                    </tbody>
                  </table>
                  
                  <a href="#" class="btn btn-primary" id="btnImprimir">Imprimir</a>
                  
                </div>
              </div>
            </div>
                
            
          </div>
        </div>
      </div>
    </div>

  </main>
  </body>
  </html>