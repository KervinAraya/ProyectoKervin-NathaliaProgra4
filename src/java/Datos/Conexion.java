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
      if (conexion == null) {
        
        Class.forName("com.mysql.jdbc.Driver");
        conexion = (Connection) DriverManager.getConnection("jdbc:mysql://192.168.43.3/DBProyecto", "progra", "");
        
      }
      return conexion;
   }
   public static void cerrar(){
      if (conexion != null) {
          try{
             conexion.close();
             conexion=null;
          }catch(Exception e){}
         
      }
   }
    
}
