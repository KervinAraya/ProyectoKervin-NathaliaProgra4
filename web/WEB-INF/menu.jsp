<%-- 
    Document   : menu
    Created on : 24/05/2017, 03:15:55 PM
    Author     : kervin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<script src="js/inicio/script.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel='stylesheet' href='css/menu/style.css'>

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
    <% HttpSession sesion = request.getSession(); %>
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
                            <li class="<%if(request.getAttribute("active").equals("inicio"))out.println("active"); %>"><a href="principal" class="">Inicio</a></li>
                            <% if(sesion.getAttribute("privilege").equals("Admin")){
                                out.println("<li class=");
                                if(request.getAttribute("active").equals("socios"))out.println("active");
                                out.println(">");
                                out.println("<a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>Socios <span class='caret'></span></a>");
                                out.println("<ul class='dropdown-menu'>");  
                                        out.println("<li><a href='seleccionarverSocios'>Ver socios</a></li>");
                                        out.println("<li><a href='registrarSocio'>Añadir socio</a></li>");
                                        out.println("<li><a href='eliminarSocio'>Eliminar socio</a></li>");
                                        out.println("<li><a href='modificarSocio'>Modificar socio</a></li>");
                                 out.println("</ul>");           
                            out.println("</li>");
                            }
                            if(sesion.getAttribute("privilege").equals("Admin")){
                                out.println("<li class=");
                                if(request.getAttribute("active").equals("Usuarios"))out.println("active");
                                out.println(">");
                                out.println("<a href='#' class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>Usuarios <span class='caret'></span></a>");
                                out.println("<ul class='dropdown-menu'>");  
                                        out.println("<li><a href='seleccionarver'>Ver Usuario</a></li>");
                                        out.println("<li><a href='registrarUsuario'>Añadir Usuario</a></li>");
                                        out.println("<li><a href='eliminarUsuario'>Eliminar Usuario</a></li>");
                                        out.println("<li><a href='modificarUsuario'>Modificar Usuario</a></li>");
                                 out.println("</ul>");           
                              out.println("</li>");
                            }
                               %>
                          
                            <li class=" <%if(request.getAttribute("active").equals("productos"))out.println("active"); %>"><a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Productos <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="verProductos">Ver productos</a></li>
                                    <li><a href="registrarProducto"> Añadir productos</a></li>
                                    <li><a href="modificarProductos">Modificar productos</a></li>
                                    <li><a href="eliminarProducto">Eliminar productos</a></li>
                                    
                                        
                                </ul>
                            </li>
                            <li class=" <%if(request.getAttribute("active").equals("leche"))out.println("active"); %>"><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Leche <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="verVentas">Agregar Leche</a></li>
                                        <li><a href="vender">Ver leche</a></li>
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
                                