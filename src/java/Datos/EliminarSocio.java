/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import java.sql.Statement;

/**
 *
 * @author kervin
 */
public class EliminarSocio {
    private String cedulaBuscar;
    private Conexion conexion;

    public EliminarSocio(String cedulaBuscar){
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
               bandera = String.valueOf(statement.executeUpdate("DELETE FROM Socios WHERE ced_socio='"+cedulaBuscar+"'"));
        
            }catch(Exception e){
                bandera="Error "+e.getMessage();
            }
        }
        conexion.cerrar();
        return bandera;
    }
}
