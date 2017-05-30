function inisioSesion(){
	
	var user = document.getElementById("user").value;
	var password = document.getElementById("pass").value;
	var bandera=false;
            var xhttp = new XMLHttpRequest();            
            xhttp.onreadystatechange = function() {          
                if (this.readyState == 4 && this.status == 200) {
                    var usuarios = JSON.parse(this.responseText);
                                       
					for(var i = 0; i < usuarios.length; i++)
					{
                        if(usuarios[i].user==user && usuarios[i].password==password){
                        	if(usuarios[i].tipo=="1"){
								document.location.href="inicio.html";
							}else{
								document.location.href="inicioEmpleadas.html";
							}
                        }
					}										
                }
            };
            xhttp.open("GET", "usuario.json", true);
            xhttp.send();
}