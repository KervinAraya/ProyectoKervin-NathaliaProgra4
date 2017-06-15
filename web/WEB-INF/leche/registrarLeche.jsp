<%-- 
    Document   : registrarLeche
    Created on : 14/06/2017, 10:25:42 PM
    Author     : kervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Registro de Leche</title>
    <%request.setAttribute("active", "leche");%>
    <jsp:include page="../menu.jsp" />    
    <script src="js/tablas/script.js" ></script>
    <link rel='stylesheet' href='css/formularios/registro.css'>
    <link rel='stylesheet' href='css/formularios/combo.css'>
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
   <main>
        <div class="container-formulario">
            <h1 class="well">REGISTRAR LECHE</h1>
            <div class="col-lg-12well">
                <div class="row">
                    
                         
                        <div class="col-sm-12">
                            <form action="" method="POST">
                             <div class="form-group">
                                <label>Cedula</label>
                                <input type="text" id="cedula" name="cedula" onKeyPress="return maskara(event);" placeholder="Ingrese el nombre" class="form-control" required>
                            </div> 
                                <input type="subtmit" value="Buscar" class="btnRegistro"> 
                           </form>
                            <div class="row">
                                <form action="" method="POST">
                                <div class="col-sm-6 form-group">
                                    <label>Cedula</label>
                                    <input type="text" name="cedula" class="form-control" readonly="readonly"  required >
                                </div>
                                <div class="col-sm-6 form-group">
                                    <label>Nombre</label>
                                    <input type="text" placeholder="" name="nombre" class="form-control" readonly="readonly" required >
                                </div>
                                <div class="col-sm-6 form-group">
                                    <label>Cantidad:</label>
                                    <input type="text" name="cantidad" placeholder="Ingrese la cantidad" class="form-control" required>
                                </div>
                                <input type="subtmit" value="Registrar" class="btnRegistro">
                                </form>
                            </div>                  
                             
                                           
                        </div>
                     
                 </div>
            </div>
        </div>

    </main>

  </body>
</html>
