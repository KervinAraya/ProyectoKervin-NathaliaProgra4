<%-- 
    Document   : seleccionarver
    Created on : 11/06/2017, 11:29:15 AM
    Author     : kervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Ver Socios</title>
        <%request.setAttribute("active", "socios");%>
        <jsp:include page="../menu.jsp" />
	<script src="js/inicio/script.js"></script>
	<link rel='stylesheet' href='css/inicio/style.css'>
 	<main>
		<div class="[ container text-center ]">
			<div class="[ row ]">
				<div class="[ col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 ]" role="tabpanel">
		            <div class="[ col-xs-4 col-sm-12 ]">
		                <!-- Nav tabs -->
		                <ul class="[ nav nav-justified ]" id="nav-tabs" role="tablist">
		                
		                     <li role="presentation" class="">
		                        <a href="verTodosSocios" id="izquierda">
		                            <img class="img-circle" src="imagenes/lecheros.jpg"  style="width: 200px;height: 200px;" />
		                            <span class="quote"><i class="fa fa-quote-left"></i></span>
		                            <h4>VER TODOS</h4>
		                            <br>
		                        </a>
		                    </li>
		                    
		                    <li role="presentation" class="">
		                        <a href="seleccionarSocio" id="derecha">
		                            <img class="img-circle" src="imagenes/lechero.png"  style="width: 200px;height: 200px;"  />
		                            <span class="quote"><i class="fa fa-quote-left"></i></span>
		                            <h4>SOCIO ESPECIFICO</h4>
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