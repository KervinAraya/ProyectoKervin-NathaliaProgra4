<%-- 
    Document   : seleccionarver
    Created on : 03/06/2017, 10:19:55 AM
    Author     : kervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <%request.setAttribute("active", "usuarios");%>
<head>
	<title>Ver Socios</title>
	<meta charset="UTF-8">
        <link rel='stylesheet' href='css/inicio/style.css'>
        <jsp:include page="../menu.jsp"/>


 	<main>
          
		<div class="[ container text-center ]">
       
			<div class="[ row ]">
				<div class="[ col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 ]" role="tabpanel">
		            <div class="[ col-xs-4 col-sm-12 ]">
		                <!-- Nav tabs -->
		                <ul class="[ nav nav-justified ]" id="nav-tabs" role="tablist">
		                
		                     <li role="presentation" class="">
		                        <a href="verTodosUsuarios" id="izquierda">
		                            <img class="img-circle" src="imagenes/empleados.jpg"  style="width: 200px;height: 200px;" />
		                            <span class="quote"><i class="fa fa-quote-left"></i></span>
		                            <h4>VER TODOS</h4>
		                            <br>
		                        </a>
		                    </li>
		                    
		                    <li role="presentation" class="">
		                        <a href="seleccionarUsuario" id="derecha">
		                            <img class="img-circle" src="imagenes/empleado.jpg"  style="width: 200px;height: 200px;"  />
		                            <span class="quote"><i class="fa fa-quote-left"></i></span>
		                            <h4>EMPLEADO ESPECIFICO</h4>
		                            <br>
		                        </a>
		                    </li>
		                   
		                </ul>

		            </div>
		                   <img src="imagenes/logo.png" class="img-logo">
		        </div>
			</div>
		</div>	
 	</main>

</body>
</html>
