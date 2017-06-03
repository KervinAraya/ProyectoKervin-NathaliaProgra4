/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author kervin
 */
public class InicioSession {
   
    private String usuario;
    private String contrasena;
    private Conexion conexion;
    private String privilegio;
    public InicioSession(String usuario, String contrasena){
        conexion = new Conexion();
        this.usuario=usuario;
        this.contrasena=contrasena;
        
    }
    public String consultarUsuario(){
        String bandera="";
        Statement statement = null;
        try{
           statement = conexion.obtener().createStatement();
        }catch(Exception e){bandera="Error al conectar con la base de datos";}           
        if(bandera.equals("")){
            try{   
               ResultSet re = statement.executeQuery("SELECT usuario, privilegio FROM Usuarios WHERE usuario='"+usuario+"' and contrasena='"+contrasena+"'");
               while(re.next()){
                   bandera="1";
                   this.privilegio=re.getString("privilegio");
               }
            }catch(Exception e){bandera="Error al seleccionar el usuario";}
        }
        return bandera;
    }
    public String getUsuario(){
        return this.usuario;
    }
    public String getPrivilegio(){
        return this.privilegio;
    }
}
