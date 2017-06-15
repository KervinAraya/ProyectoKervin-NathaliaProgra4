/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Bean.BeanProductos;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author prueba
 */
public class BuscarProducto {
    private String codigoBuscar;
    private Conexion conexion;
    private BeanProductos beanProductos;
    
    public BuscarProducto(String codigoBuscar){
        this.codigoBuscar=codigoBuscar;
        this.conexion=new Conexion();
        this.beanProductos=new BeanProductos();
    }
    
    public String getProducto(){
        String bandera="";
        Statement st=null;
        
        try{
            st=conexion.obtener().createStatement();
            
        }catch(Exception e){
            bandera="Error "+e.getMessage();
        
        }
        if(bandera.equals("")){
            try{
                 ResultSet rs=st.executeQuery("SELECT * FROM Productos WHERE codigo_producto='"+codigoBuscar+"'");
                 bandera="no se encontró el producto";
                 while(rs.next()){
                     bandera="1";
                     beanProductos.setCodigo(rs.getString("codigo_producto"));
                     beanProductos.setNombre(rs.getString("nombre_producto"));
                     beanProductos.setPrecio(rs.getString("precio"));
                     beanProductos.setCantidad(rs.getString("cantidad_productos")); 
                 }
            
            }catch(Exception e){
                 bandera="Error "+e.getMessage();
            }
        }
        conexion.cerrar();
        return bandera;
    }
    
    public BeanProductos getBeanProducto(){
        return beanProductos;
    }
    
}
