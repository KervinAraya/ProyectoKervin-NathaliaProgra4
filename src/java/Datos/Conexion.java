/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author kervin
 */
public class Conexion {
   private static Connection conexion = null;
   public static Connection obtener() throws SQLException, ClassNotFoundException {        
        Class.forName("com.mysql.jdbc.Driver");
        conexion = (Connection) DriverManager.getConnection("jdbc:mysql://192.168.1.7/bdProgra", "progra", "");
      return conexion;
   }
   public static void cerrar(){
     
        try{
           conexion.close();
           conexion=null;
        }catch(Exception e){}
         
   }
   
    
}
