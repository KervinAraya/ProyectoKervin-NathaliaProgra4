<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   HttpSession sesion  = request.getSession(true);
   if(sesion.getAttribute("user")!=null){
       request.getRequestDispatcher("inicio.jsp").forward(request, response);
   }
    
 %>
<html>
<head>
	<meta charset="UTF-8">
	<title>
		Inicio de sesión
	</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
	<link rel='stylesheet prefetch' href='css/login/estiloletra.css'>
	<link rel="stylesheet" href="css/login/style.css">
	<script type="text/javascript" src="js/inicioSesion/script.js"></script>
	
</head>
<body>
	<div class="login-wrap">
		<div class="login-html">
			<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab"> Inicio Sesión</label>
			<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
			<div class="login-form">
				<div class="sign-in-htm">
                                    <form action="ServletLogin" method="post" >
						<div class="group">
							<labe for="user" class="label">Usuario</labe>
							<input id="user" type="text" name="user" class="input" required>
							
						</div>
						<div class="group">
							<label for="pass" class="label">Contraseña</label>
							<input id="pass" type="password" class="input" name="password" data-type="password" required>
						</div>
						<div class="group">
							<input id="check" type="checkbox" class="check" checked>
							<label for="check"><span class="icon"></span>Mantener sesión</label>
						</div>
						<div class ="group">
                                                    <input type="submit" value="Inicias sesión" class="button" />
						</div>
					</form> 
					<div class="hr"></div>							
					<img class="img-style" src="imagenes/logo.png">
				</div>
				
			</div>
		</div>

	</div>
</body>
</html>