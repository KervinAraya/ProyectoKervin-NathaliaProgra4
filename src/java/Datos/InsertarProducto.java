/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Bean.BeanProductos;
import java.sql.Statement;

/**
 *
 * @author prueba
 */
public class InsertarProducto {
    private BeanProductos beanProductos;
    private Conexion conexion;
    
    public InsertarProducto(BeanProductos beanProductos){
        this.beanProductos=beanProductos;
        this.conexion = new Conexion();
    }
    public String insertarProducto(){
        String bandera="";
        Statement statement=null;
         try{
            statement = conexion.obtener().createStatement();
         }catch(Exception e){bandera="Error al conectar con la base de datos";}
        try{
            int cont = statement.executeUpdate("INSERT INTO Productos(codigo_Productos,nombre_Productos,precio) VALUES('"+beanProductos.getCodigo()+"','"+beanProductos.getNombre()+"','"+beanProductos.getPrecio()+"')");
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
