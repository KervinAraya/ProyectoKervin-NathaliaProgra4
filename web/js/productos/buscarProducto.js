function buscar(){
	var codigo = document.getElementById("txtSearch").value;
    var xhttp = new XMLHttpRequest();            
    xhttp.onreadystatechange = function() {          
        if (this.readyState == 4 && this.status == 200) {
            var producto = JSON.parse(this.responseText);
			for(var i = 0; i < producto.length; i++)
			{
                if(producto[i].codigo==codigo){
                	document.getElementById("codigo").value=producto[i].codigo;
                	document.getElementById("producto").value=producto[i].producto;
                	document.getElementById("cantidad").value=producto[i].cantidad;
                	document.getElementById("precio").value=producto[i].precio;
               
                
                }
			}			
        }
    };
    xhttp.open("GET", "../productos.json", true);
    xhttp.send();
}


function buscarTodos(){
    var xhttp = new XMLHttpRequest();            
    xhttp.onreadystatechange = function() {          
        if (this.readyState == 4 && this.status == 200) {
            var producto = JSON.parse(this.responseText);
            var inerHtml="";
            for(var i = 0; i < producto.length; i++)
            {
               inerHtml+="<tr>";
               inerHtml+="<td>";
               inerHtml+=producto[i].codigo;
               inerHtml+="</td>";
               inerHtml+="<td>";
               inerHtml+=producto[i].producto;
               inerHtml+="</td>";
               inerHtml+="<td>";
               inerHtml+=producto[i].cantidad;
               inerHtml+="</td>";
               inerHtml+="<td>";
               inerHtml+=producto[i].precio;
               inerHtml+="</td>";
               
              
               inerHtml+="<td><p data-placement='top' data-toggle='tooltip' title='Edit'><button class='btn btn-primary btn-xs'data-title='Edit' onclick='location.href='modificar.html'' data-target='#edit' ><span class='glyphicon glyphicon-pencil'></span></button></p></td><td><p data-placement='top' data-toggle='tooltip' title='Delete'><button class='btn btn-danger btn-xs' data-title='Delete' data-toggle='modal' data-target='#delete' ><span class='glyphicon glyphicon-trash'></span></button></p></td>"
               inerHtml+="</tr>";
               document.getElementById("filas").innerHTML = inerHtml;
            }           
        }
    };
    xhttp.open("GET", "../productos.json", true);
    xhttp.send();
}

function buscarEliminar(){
    var xhttp = new XMLHttpRequest();  
    var codigo = document.getElementById("txtSearch").value;          
    xhttp.onreadystatechange = function() {          
        if (this.readyState == 4 && this.status == 200) {
            var producto = JSON.parse(this.responseText);
            var inerHtml="";
            for(var i = 0; i < producto.length; i++)
            {
           
              if(codigo==producto[i].codigo){
               inerHtml+="<tr>";
               inerHtml+="<td>";
               inerHtml+=producto[i].codigo;
               inerHtml+="</td>";
               inerHtml+="<td>";
               inerHtml+=producto[i].producto;
               inerHtml+="</td>";
               inerHtml+="<td>";
               inerHtml+=producto[i].cantidad;
               inerHtml+="</td>";
               inerHtml+="<td>";
               inerHtml+=producto[i].precio;
               inerHtml+="</td>";
               
              
               
               inerHtml+="</tr>";
               document.getElementById("filas").innerHTML = inerHtml;


              }

            }           
        }
    };
    xhttp.open("GET", "../productos.json", true);
    xhttp.send();
}