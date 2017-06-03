<%-- 
    Document   : registrarEmpleado
    Created on : 01/06/2017, 09:32:27 AM
    Author     : kervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%request.setAttribute("active", "usuarios");%>
    <title>Registrar Usuarios</title>
    <meta charset="UTF-8">
    <jsp:include page="../menu.jsp" />
     <script src="js/formulario/script.js" ></script>     
    <link rel='stylesheet' href='css/formularios/registro.css'>   
    <script src="js/correo.js"></script>
    <script type="text/javascript">
        function maskara(e){
            var texto = document.getElementById("cedula").value;
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
            document.getElementById("cedula").value=temporal;
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
         
    
</head>
    <main>
        <div class="container-formulario">
            <h1 class="well">FORMULARIO EMPLEADOS </h1>
            <div class="col-lg-12well">
                <div class="row">
                    <form action="ServletRegistrarUsuario" method="POST">
                         <div class="container">
                            <div class="row">
                                
                                <div class="col-md-4 col-md-offset-4">
                                    <div class="form-group">
                                      <div class="main-img-preview">
                                          <img class="thumbnail img-preview" width="150px" height="150px" src="imagenes/avatar.png" title="Preview Logo">
                                      </div>
                                      <div class="input-group">
                                        <input id="fakeUploadLogo" class="form-control fake-shadow" placeholder="Eligir imagen" disabled="disabled">
                                        <div class="input-group-btn">
                                          <div class="fileUpload btn btn-danger fake-shadow">
                                            <span><i class="glyphicon glyphicon-upload"></i> Adjuntar imagen</span>
                                            <input id="logo-id" name="avatar" type="file" class="attachment_upload">
                                          </div>
                                        </div>
                                      </div>
                                      <p class="help-block">* Adjunte su imagen de perfil.</p>
                                    </div>
                                </div>
                            </div>
                        </div>  
                        <div class="col-sm-12">
                             <div class="form-group">
                                <label>Cédula</label>
                                <input type="text" name="cedula" id="cedula" onKeyPress="return maskara(event);" placeholder="Ingrese el numero de cédula" class="form-control" required>
                            </div> 
                            <div class="form-group">
                                <label>Nombre de usuario</label>
                                <input type="text" id="telefono" name="usuario" placeholder="Usuarios" class="form-control" required>
                            </div> 
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label>Nombre</label>
                                    <input type="text" name="nombre" placeholder="Ingrese el nombre" class="form-control" required>
                               </div>
                                <div class="col-sm-6 form-group">
                                    <label>Primer apellido</label>
                                    <input type="text" name="apellido1" placeholder="Ingrese el apellido" class="form-control" required>
                                </div>
                                 <div class="col-sm-6 form-group">
                                    <label>Segundo apellido</label>
                                    <input type="text" name="apellido2" placeholder="Ingrese el apellido" class="form-control" required>
                                </div>
                            </div>                  
                              <div class="form-group">
                                <label>Direccion</label>
                                <input type="text" id="direccion" name="direccion" placeholder="Direccion" class="form-control" required>
                            </div>       
                            <div class="form-group">
                                <label>Teléfono</label>
                                <input type="text" id="telefono" name="telefono" placeholder="Ingrese el numero de telefono" onKeyPress="return fono(event)" class="form-control" required>
                            </div>      
                            <div class="form-group">
                                <label>Correo Electronico</label>
                                <input type="text" id="correo" name="correo" onblur="validarCorreo();" placeholder="Ingrese la direccion de correo electronico" class="form-control">
                            </div> 
                            <div class="form-group">
                                <label>Contraseña</label>
                                <input type="password" name="contrasena" placeholder="****" class="form-control" required>
                            </div>  
                            <div class="form-group">
                                <label>Tipo Usuario</label>
                                <select name="privilegio" class="form-control" required>
                                    <option>Admin</option>
                                    <option>Empleado</option>
                                </select>
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
