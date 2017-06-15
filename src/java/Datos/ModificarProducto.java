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
public class ModificarProducto {
    private String codigoBuscar;
    private Conexion conexion;
    private BeanProductos beanProducto;
    
    public ModificarProducto(BeanProductos beanProducto){
        this.conexion = new Conexion();
        this.beanProducto =  beanProducto;
        this.codigoBuscar = this.beanProducto.getCodigo();
    }
    public String modificarProducto(){
        String bandera="";
        Statement statement = null;
        try{
           statement = conexion.obtener().createStatement();
        }catch(Exception e){bandera="Error al conectar con la base de datos";}           
        if(bandera.equals("")){
            try{   
               bandera = String.valueOf(statement.executeUpdate("UPDATE Productos SET codigo_producto='"+beanProducto.getCodigo()+"',nombre_producto='"+beanProducto.getNombre()+"',precio='"+beanProducto.getPrecio()+"',cantidad_productos='"+beanProducto.getCantidad()+"' WHERE codigo_producto='"+codigoBuscar+"'"));
        
            }catch(Exception e){
                bandera="Error "+e.getMessage();
            }
        }
        conexion.cerrar();
        return bandera;
    }
    
    
}
