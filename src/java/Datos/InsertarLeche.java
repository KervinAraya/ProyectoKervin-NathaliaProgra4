/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Bean.BeanLeche;
import java.sql.Statement;

/**
 *
 * @author kervin
 */
public class InsertarLeche {
    private BeanLeche beanLeche;
    private Conexion conexion;
    private String usuario;
    public InsertarLeche(BeanLeche beanLeche, String usuario){
        this.beanLeche=beanLeche;
        this.conexion = new Conexion();
        this.usuario = usuario;
    }
    public String insertarProducto(){
        String bandera="";
        Statement statement=null;
         try{
            statement = conexion.obtener().createStatement();
         }catch(Exception e){bandera="Error al conectar con la base de datos";}
        try{
            int cont = statement.executeUpdate("INSERT INTO Leche(ced_socio,usuario,litros) VALUES('"+beanLeche.getCedula()+"','"+usuario+"',"+Integer.parseInt(beanLeche.getCantidadLeche())+")");
            if(cont>0){
                bandera="1";
            }
            
        }catch(Exception e){
           bandera = "Error: ("+ e.getMessage() +") al insertar el producto";
                   
        }
        conexion.cerrar();
        return bandera;
    }
}
