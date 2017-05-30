function validarCorreo(){
	debugger;
	var correo = document.getElementById("correo").value;
    var emailRegEx = /\w[a-z]+@[a-z]+\.[\w]+/i;
    var foundEmails = correo.match(emailRegEx);
    if ( foundEmails == null)
    {
        document.getElementById("correo").style.border="2px solid red";
        document.getElementById("correo").focus();
    }else{
    	document.getElementById("correo").style.border="1px solid gray";
    }
}