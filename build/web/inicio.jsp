<%-- 
    Document   : inicio
    Created on : 24/05/2017, 10:03:15 AM
    Author     : kervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
   HttpSession sesion  = request.getSession(true);
 
   //  <%@include file="page_name.jsp" %> 
 %>
<!DOCTYPE html>
<html>
  
<head>
	<title>Inicio</title>
	<meta charset="UTF-8">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<script src="js/inicio/script.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel='stylesheet' href='css/menu/style.css'>
	<link rel='stylesheet' href='css/inicio/style.css'>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

</head>

<body>
 	<header>
      <div class="navbar-wrapper">
        <div class="container-fluid">
            <nav class="navbar navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        </button>
                       
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="inicio.jsp" class="">Inicio</a></li>
                            <% if(sesion.getAttribute("privilege").equals("Admin")){
                                out.println("<li class=' dropdown'>");
                                out.println("<a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>Socios <span class='caret'></span></a>");
                                out.println("<ul class='dropdown-menu'>");  
                                        out.println("<li><a href='asociados/seleccionver.html'>Ver socios</a></li>");
                                        out.println("<li><a href='asociados/registro.html'>Añadir socio</a></li>");
                                        out.println("<li><a href='asociados/eliminar.html'>Eliminar socio</a></li>");
                                        out.println("<li><a href='asociados/modificar.html'>Modificar socio</a></li>");
                                 out.println("</ul>");           
                            out.println("</li>");
                            }
                               %>
                            <li class="dropdown"><a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Empleados <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="empleados/seleccionver.html">Ver empleados</a></li>
                                        <li><a href="empleados/registro.html">Añadir empleado</a></li>
                                        <li><a href="empleados/eliminar.html">Eliminar empleado</a></li>
                                        <li><a href="empleados/modificar.html">Modificar empleado</a></li>
                                    </ul>
                                </li>
                            <li class=" dropdown"><a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Productos <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="productos/seleccionar.html">Ver productos</a></li>
                                    <li><a href="productos/registro.html">Registrar productos</a></li>
                                    <li><a href="productos/sinnombre.html"> Añadir productos</a></li>
                                    <li><a href="productos/eliminar.html">Eliminar productos</a></li>
                                    <li><a href="productos/modificar.html">Modificar productos</a></li>
                                        
                                </ul>
                            </li>
                            <li class=" dropdown"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Ventas <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                        <li><a href="ventas/seleccionar.html">Ver ventas</a></li>
                                        <li><a href="ventas/añadir.html">Añadir venta</a></li>
                                        <li><a href="ventas/reembolso.html">Reembolso</a></li>
                                </ul>
                            </li>
                            <li class=" down"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Materia prima <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="materiaprima/seleccionar.html">Ver productos lacteos</a></li>
                                    <li><a href="materiaprima/registro.html">Registrar producto lacteo</a></li>
                                    <li><a href="materiaprima/modificar.html">Modificar producto lacteo</a></li>

                                </ul>
                            </li>
                                <li class=" down"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pagos <span class="caret"></span></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="pagos/pago.html">Realizar pago de producto lacteo</a></li>
                                        
                                    </ul>
                                </li>
                        </ul>
                        <ul class="nav navbar-nav pull-right">
                            <li class=" dropdown"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${sessionScope.user}  <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                  
                                    <li class=""><a href="ServletSignOut">Cerrar sesión</a></li>
                                    
                                    
                                </ul>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </nav>
        </div>
    </div>
  </header>
 	<main>
 		<div class="[ container text-center ]">
</div>
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