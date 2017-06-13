<%-- 
    Document   : agregarSocio
    Created on : 11/06/2017, 10:29:21 AM
    Author     : kervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Registrar Socios</title>
    <meta charset="UTF-8">
    <%request.setAttribute("active", "socios");%>
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
    
    <main>
        <div class="container-formulario">
            <h1 class="well">FORMULARIO ASOCIADOS</h1>
            <div class="col-lg-12well">
                <div class="row">
                    <form action="ServletRegistrarSocio" method="POST">
                        <div class="container">
                            <div class="row">
                                
                                <div class="col-md-4 col-md-offset-4">
                                    <div class="form-group">
                                      <div class="main-img-preview">
                                        <img class="thumbnail img-preview" src="imagenesUsuarios/avatar.png" title="Preview Logo">
                                      </div>
                                      <div class="input-group">
                                        <input id="fakeUploadLogo" class="form-control fake-shadow" placeholder="Eligir imagen" disabled="disabled">
                                        <div class="input-group-btn">
                                          <div class="fileUpload btn btn-danger fake-shadow">
                                            <span><i class="glyphicon glyphicon-upload"></i> Adjuntar imagen</span>
                                            <input id="logo-id" name="logo" type="file" class="attachment_upload">
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
                                <input type="text" name="cedula" placeholder="Ingrese el numero de cédula" id="cedula" onkeypress="return maskara(event);" class="form-control" required>
                            </div> 
                            <div class="row">
                                <div class="col-sm-6 form-group">
                                    <label>Nombre</label>
                                    <input type="text" name="nombre" placeholder="Ingrese el nombre" class="form-control" required>
                                </div>
                                <div class="col-sm-6 form-group">
                                    <label>Primer apellido Apellido</label>
                                    <input type="text" name="apellido1" placeholder="Ingrese el apellido" class="form-control" required>
                                </div>
                                <div class="col-sm-6 form-group">
                                    <label>Segundo Apellido</label>
                                    <input type="text" name="apellido2" placeholder="Ingrese el apellido" class="form-control" required>
                                </div>
                            </div>                  
                            <div class="form-group">
                                <label>Dirección</label>
                                <textarea placeholder="Ingrese la direccion" name="direccion" rows="3" class="form-control" required></textarea>
                            </div>            
                        <div class="form-group">
                            <label>Teléfono</label>
                            <input type="text" id="telefono" name="telefono" placeholder="Ingrese el numero de telefono" onkeypress="return fono(event);" class="form-control" required>
                        </div>      
                        <div class="form-group">
                            <label>Correo Electronico</label>
                            <input type="text" id="correo" name="correo" onblur="validarCorreo();" placeholder="Ingrese la direccion de correo electronico" class="form-control">
                        </div> 
                            <input type="submit" class="btnRegistro" value="Registrar">                 
                        </div>
                    </form> 
                 </div>
            </div>
        </div>

    </main>
</body>
</html>