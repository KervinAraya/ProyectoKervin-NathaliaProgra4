function buscar(){
	var cedula = document.getElementById("cedulaBuscar").value;
    var xhttp = new XMLHttpRequest();            
    xhttp.onreadystatechange = function() {          
        if (this.readyState == 4 && this.status == 200) {
            var empleado = JSON.parse(this.responseText);
			for(var i = 0; i < empleado.length; i++)
			{
                if(empleado[i].cedula==cedula){
                	document.getElementById("nom").value=empleado[i].nombre+" "+empleado[i].apellidos;
                	document.getElementById("cedula").value=empleado[i].cedula;
                	document.getElementById("direccion").value=empleado[i].Direccion;
                	document.getElementById("telefono").value=empleado[i].telefono;
                	document.getElementById("correo").value=empleado[i].correo;
                	document.getElementById("pass").value=empleado[i].pass;
                	document.getElementById("salario").value=empleado[i].sueldo;
                }
			}			
        }
    };
    xhttp.open("GET", "../empleados.json", true);
    xhttp.send();
}
function buscarTodos(){
    var xhttp = new XMLHttpRequest();            
    xhttp.onreadystatechange = function() {          
        if (this.readyState == 4 && this.status == 200) {
            var empleado = JSON.parse(this.responseText);
            var inerHtml="";
			for(var i = 0; i < empleado.length; i++)
			{
               inerHtml+="<tr>";
               inerHtml+="<td>";
               inerHtml+=empleado[i].cedula;
               inerHtml+="</td>";
               inerHtml+="<td>";
               inerHtml+=empleado[i].nombre+" "+empleado[i].apellidos;
               inerHtml+="</td>";
               inerHtml+="<td>";
               inerHtml+=empleado[i].correo;
               inerHtml+="</td>";
               inerHtml+="<td>";
               inerHtml+=empleado[i].Direccion;
               inerHtml+="</td>";
               inerHtml+="<td>";
               inerHtml+=empleado[i].telefono;
               inerHtml+="</td>";
               inerHtml+="<td>";
               inerHtml+=empleado[i].sueldo;
               inerHtml+="</td>";
               inerHtml+="<td><p data-placement='top' data-toggle='tooltip' title='Edit'><button class='btn btn-primary btn-xs'data-title='Edit' onclick='location.href='modificar.html'' data-target='#edit' ><span class='glyphicon glyphicon-pencil'></span></button></p></td><td><p data-placement='top' data-toggle='tooltip' title='Delete'><button class='btn btn-danger btn-xs' data-title='Delete' data-toggle='modal' data-target='#delete' ><span class='glyphicon glyphicon-trash'></span></button></p></td>"
			   inerHtml+="</tr>";
			   document.getElementById("filas").innerHTML = inerHtml;
			}			
        }
    };
    xhttp.open("GET", "../empleados.json", true);
    xhttp.send();
}
function buscarTodosEliminar(){
    var xhttp = new XMLHttpRequest();  
    var cedula = document.getElementById("cedulaBuscar").value;          
    xhttp.onreadystatechange = function() {          
        if (this.readyState == 4 && this.status == 200) {
            var empleado = JSON.parse(this.responseText);
            var inerHtml="";
            for(var i = 0; i < empleado.length; i++)
            {   
              if(cedula==empleado[i].cedula){
                 inerHtml+="<tr>";
                     inerHtml+="<td>";
                     inerHtml+=empleado[i].cedula;
                     inerHtml+="</td>";
                     inerHtml+="<td>";
                     inerHtml+=empleado[i].nombre+" "+empleado[i].apellidos;
                     inerHtml+="</td>";
                     inerHtml+="<td>";
                     inerHtml+=empleado[i].correo;
                     inerHtml+="</td>";
                     inerHtml+="<td>";
                     inerHtml+=empleado[i].Direccion;
                     inerHtml+="</td>";
                     inerHtml+="<td>";
                     inerHtml+=empleado[i].telefono;
                     inerHtml+="</td>";
                     inerHtml+="<td>";
                     inerHtml+=empleado[i].sueldo;
                     inerHtml+="</td>";
                     inerHtml+="</tr>";
                    document.getElementById("filas").innerHTML = inerHtml;
              }
                    
            }     
        }
    };
    xhttp.open("GET", "../empleados.json", true);
    xhttp.send();
}