function buscar(){
	var cedula = document.getElementById("txtSearch").value;
    var xhttp = new XMLHttpRequest();            
    xhttp.onreadystatechange = function() {          
        if (this.readyState == 4 && this.status == 200) {
            var asociado = JSON.parse(this.responseText);
			for(var i = 0; i < asociado.length; i++)
			{
                if(asociado[i].cedula==cedula){
                	document.getElementById("nom").value=asociado[i].nombre+" "+asociado[i].apellidos;
                	document.getElementById("cedula").value=asociado[i].cedula;
                	document.getElementById("direccion").value=asociado[i].Direccion;
                	document.getElementById("telefono").value=asociado[i].telefono;
                	document.getElementById("correo").value=asociado[i].correo;
                
                }
			}			
        }
    };
    xhttp.open("GET", "../asociados.json", true);
    xhttp.send();
}


function buscarTodos(){
    var xhttp = new XMLHttpRequest();            
    xhttp.onreadystatechange = function() {          
        if (this.readyState == 4 && this.status == 200) {
            var asociado = JSON.parse(this.responseText);
            var inerHtml="";
            for(var i = 0; i < asociado.length; i++)
            {
               inerHtml+="<tr>";
               inerHtml+="<td>";
               inerHtml+=asociado[i].cedula;
               inerHtml+="</td>";
               inerHtml+="<td>";
               inerHtml+=asociado[i].nombre+" "+asociado[i].apellidos;
               inerHtml+="</td>";
               inerHtml+="<td>";
               inerHtml+=asociado[i].correo;
               inerHtml+="</td>";
               inerHtml+="<td>";
               inerHtml+=asociado[i].Direccion;
               inerHtml+="</td>";
               inerHtml+="<td>";
               inerHtml+=asociado[i].telefono;
               inerHtml+="</td>";
              
               inerHtml+="<td><p data-placement='top' data-toggle='tooltip' title='Edit'><button class='btn btn-primary btn-xs'data-title='Edit' onclick='location.href='modificar.html'' data-target='#edit' ><span class='glyphicon glyphicon-pencil'></span></button></p></td><td><p data-placement='top' data-toggle='tooltip' title='Delete'><button class='btn btn-danger btn-xs' data-title='Delete' data-toggle='modal' data-target='#delete' ><span class='glyphicon glyphicon-trash'></span></button></p></td>"
               inerHtml+="</tr>";
               document.getElementById("filas").innerHTML = inerHtml;
            }           
        }
    };
    xhttp.open("GET", "../asociados.json", true);
    xhttp.send();
}

function buscarEliminar(){
    var xhttp = new XMLHttpRequest();     

    var cedula = document.getElementById("txtSearch").value;       
    xhttp.onreadystatechange = function() {          
        if (this.readyState == 4 && this.status == 200) {
            var asociado = JSON.parse(this.responseText);
            var inerHtml="";
            for(var i = 0; i < asociado.length; i++)
            {
                if(cedula==asociado[i].cedula){
                    inerHtml+="<tr>";
                   inerHtml+="<td>";
                   inerHtml+=asociado[i].cedula;
                   inerHtml+="</td>";
                   inerHtml+="<td>";
                   inerHtml+=asociado[i].nombre+" "+asociado[i].apellidos;
                   inerHtml+="</td>";
                   inerHtml+="<td>";
                   inerHtml+=asociado[i].correo;
                   inerHtml+="</td>";
                   inerHtml+="<td>";
                   inerHtml+=asociado[i].Direccion;
                   inerHtml+="</td>";
                   inerHtml+="<td>";
                   inerHtml+=asociado[i].telefono;
                   inerHtml+="</td>";
                  
                  
                   inerHtml+="</tr>";
                   document.getElementById("filas").innerHTML = inerHtml;

                }
               
            }           
        }
    };
    xhttp.open("GET", "../asociados.json", true);
    xhttp.send();
}