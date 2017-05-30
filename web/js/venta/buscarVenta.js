function buscar(){
	var codigo = document.getElementById("txtSearch").value;
    var xhttp = new XMLHttpRequest();            
    xhttp.onreadystatechange = function() {          
        if (this.readyState == 4 && this.status == 200) {
            var ventas = JSON.parse(this.responseText);
			for(var i = 0; i < ventas.length; i++)
			{
                if(ventas[i].codigo==codigo){
                	document.getElementById("codigo").value=ventas[i].codigo;
                	document.getElementById("producto").value=ventas[i].producto;
                	document.getElementById("cantidad").value=ventas[i].cantidad;
                	document.getElementById("precio").value=ventas[i].precio;
               
                
                }
			}			
        }
    };
    xhttp.open("GET", "../ventas.json", true);
    xhttp.send();
}


function buscarTodos(){
    var xhttp = new XMLHttpRequest();            
    xhttp.onreadystatechange = function() {          
        if (this.readyState == 4 && this.status == 200) {
            var ventas = JSON.parse(this.responseText);
            var inerHtml="";
            for(var i = 0; i < ventas.length; i++)
            {
               inerHtml+="<tr>";
               inerHtml+="<td>";
               inerHtml+=ventas[i].codigo;
               inerHtml+="</td>";
               inerHtml+="<td>";
               inerHtml+=ventas[i].producto;
               inerHtml+="</td>";
               inerHtml+="<td>";
               inerHtml+=ventas[i].cantidad;
               inerHtml+="</td>";
               inerHtml+="<td>";
               inerHtml+=ventas[i].precio;
               inerHtml+="</td>";
               
              
               inerHtml+="<td><p data-placement='top' data-toggle='tooltip' title='Edit'><button class='btn btn-primary btn-xs'data-title='Edit' onclick='location.href='modificar.html'' data-target='#edit' ><span class='glyphicon glyphicon-pencil'></span></button></p></td><td><p data-placement='top' data-toggle='tooltip' title='Delete'><button class='btn btn-danger btn-xs' data-title='Delete' data-toggle='modal' data-target='#delete' ><span class='glyphicon glyphicon-trash'></span></button></p></td>"
               inerHtml+="</tr>";
               document.getElementById("filas").innerHTML = inerHtml;
            }           
        }
    };
    xhttp.open("GET", "../ventas.json", true);
    xhttp.send();
}