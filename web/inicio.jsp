<%-- 
    Document   : inicio
    Created on : 24/05/2017, 10:03:15 AM
    Author     : kervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
   HttpSession sesion  = request.getSession(true);
 %>
<!DOCTYPE html>
<html>
  
<head>
	<title>Inicio</title>
        <jsp:include page="menu.jsp" />

 	<main>
            <div class="[ container text-center ]"></div>
                <div class="[ container text-center ]">
                        <div class="[ row ]">
                                <div class="[ col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 ]" role="tabpanel">
                            <div class="[ col-xs-4 col-sm-12 ]">
                                <!-- Nav tabs -->
                                <ul class="[ nav nav-justified ]" id="nav-tabs" role="tablist">
                                <h2>Accesos rápidos</h2>
                                     <li role="presentation" class="">
                                        <a href="materiaprima/registro.html" >
                                            <img class="img-circle" src="imagenes/milk.ico" />
                                            <span class="quote"><i class="fa fa-quote-left"></i></span>
                                            <h4>Registro leche</h4>
                                            <br>
                                        </a>
                                    </li>
                                    <li role="presentation" class="">
                                        <a href="productos/sinnombre.html" >
                                            <img class="img-circle" src="imagenes/cheese.ico" />
                                            <span class="quote"><i class="fa fa-quote-left"></i></span>
                                            <h4>Agregar productos procesados</h4>
                                            <br>
                                        </a>
                                    </li>
                                    <li role="presentation" class="">
                                        <a href="ventas/añadir.html" >
                                            <img class="img-circle" src="imagenes/sell.png" />
                                            <span class="quote"><i class="fa fa-quote-left"></i></span>
                                            <h4>Vender</h4>
                                            <br>
                                        </a>
                                    </li>
                                    <li role="presentation" class="">
                                        <a href="productos/seleccionar.html" >
                                            <img class="img-circle" src="imagenes/inve.png" />
                                            <span class="quote"><i class="fa fa-quote-left"></i></span>
                                            <h4>Ver productos</h4>
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