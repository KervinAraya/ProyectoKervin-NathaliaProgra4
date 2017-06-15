<%-- 
    Document   : eliminarUsuario
    Created on : 09/06/2017, 07:25:38 PM
    Author     : kervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <%request.setAttribute("active", "socios");%>
    <title>Eliminar Usuario</title>
    <jsp:include page="../menu.jsp" />
    <script src="js/eliminar/script.js" ></script>
    <script src="js/tablas/script.js" ></script>
    <link rel='stylesheet' href='css/formularios/eliminar.css'>
    <link rel='stylesheet' href='css/formularios/registro.css'>
    <link rel='stylesheet' href='css/formularios/tabla.css'>
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

 	<main>
      <h1 class="well">ELIMINAR SOCIO</h1>
		<div class="col ">
           
		  <div class="row">
                      <form action="ServletBuscarSocioEliminar" method="POST">
                        <div class="col-xs-12 col-sm-12 col-md-2 col-lg-2 col-xl-2">
                          <span class="srchLabel">BUSQUEDA</span>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">
                          <input placeholder="Buscar empleado ..." type="text" name="cedulaBuscar" onKeyPress="return maskara(event);" class="typeahead tt-query" autocomplete="off" spellcheck="false" id="cedulaBuscar">
                        </div>
                        <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4 col-xl-4">
                          <input type="submit" values="Buscar" class="btn btn-primary btnSearchOptions">
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
		

		</div>
		<div class="container" >
		    <div class="row" id="row">
				
		        
		        <div class="col-md-12" >
		        
		        <h4>
		        </h4>
		        <div class="table-responsive">

		                
	              <table id="mytable" class="table table-bordred table-striped">
	                   
	                   <thead>
	                   <th>Cedula</th>
	                   <th>Nombre Completo</th>
	                   <th>Correo Electronico</th>
	                   <th>Dirección</th>
	                   <th>Teléfono</th>	                     
	                 </thead>
                         
                     <tbody id="filas">
                         <jsp:useBean id="beanSocio" class="Bean.BeanSocio" scope="request"/> 
                         <tr>
                        <td><jsp:getProperty name="beanSocio" property="cedula"/></td>    
                        <td><jsp:getProperty name="beanSocio" property="nombre"/> <jsp:getProperty name="beanSocio" property="apellido1"/> <jsp:getProperty name="beanSocio" property="apellido2"/></td>   
                        <td><jsp:getProperty name="beanSocio" property="correo"/></td>   
                        <td><jsp:getProperty name="beanSocio" property="direccion"/></td>   
                        <td><jsp:getProperty name="beanSocio" property="telefono"/></td>   
                         </tr>
                         
                     </tbody>

               	</table>
             	</div>
		       </div>
                         <form action="ServletEliminarSocio" method="POST">
                             <input type="submit" value="Eliminar" class="btnRegistro">  
                         </form>
              
		    </div>
		    </div>
		</main>
	</body>
</html>
