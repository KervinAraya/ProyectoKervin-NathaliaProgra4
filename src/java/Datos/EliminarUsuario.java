/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Bean.BeanUsuario;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author kervin
 */
public class EliminarUsuario {
    private String cedulaBuscar;
    private Conexion conexion;

    public EliminarUsuario(String cedulaBuscar){
        this.cedulaBuscar = cedulaBuscar;
        this.conexion = new Conexion();
      
    }
    
    public String deleteUsuario(){
        String bandera="";
        Statement statement = null;
        try{
           statement = conexion.obtener().createStatement();
        }catch(Exception e){bandera="Error al conectar con la base de datos";}           
        if(bandera.equals("")){
            try{   
               bandera = String.valueOf(statement.executeUpdate("DELETE FROM Usuarios WHERE ced_usuario='"+cedulaBuscar+"'"));
        
            }catch(Exception e){
                bandera="Error "+e.getMessage();
            }
        }
        conexion.cerrar();
        return bandera;
    }
}
