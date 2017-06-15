package Datos;

/**
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import Datos.Conexion;
import java.sql.Statement;

/**
 *
 * @author prueba
 */
public class EliminarProducto{
    private String codigoBuscar;
    private Conexion conexion;

    public EliminarProducto(String codigoBuscar){
        this.codigoBuscar = codigoBuscar;
        this.conexion = new Conexion();
      
    }
    
    public String eliminarProducto(){
        String bandera="";
        Statement statement = null;
        try{
           statement = conexion.obtener().createStatement();
        }catch(Exception e){bandera="Error al conectar con la base de datos";}           
        if(bandera.equals("")){
            try{   
               bandera = String.valueOf(statement.executeUpdate("DELETE FROM Productos WHERE codigo_producto='"+codigoBuscar+"'"));
        
            }catch(Exception e){
                bandera="Error "+e.getMessage();
            }
        }
        conexion.cerrar();
        return bandera;
    }
}
