/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Bean.BeanProductos;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author prueba
 */
public class BuscarTodosProductos {
    private Conexion conexion;
    private ArrayList<BeanProductos> listaProductos;
    private int cantidadDatos;
    private int paginas;
    public BuscarTodosProductos(int paginas){
        this.conexion = new Conexion();
        this.paginas = paginas;
        this.listaProductos = new ArrayList<>();
    }
    
    public String getProductos(){
        String bandera="";
        Statement statement = null;
        try{
           statement = conexion.obtener().createStatement();
        }catch(Exception e){bandera="Error al conectar con la base de datos";}           
        if(bandera.equals("")){
            try{   
               int contador=0;
               int contadorParar=0;
               ResultSet re = statement.executeQuery("SELECT * FROM Productos");
               while(re.next()){
                   if(contador==paginas && contadorParar<=5){
                        bandera="1";
                        BeanProductos beanProductos = new BeanProductos();
                        beanProductos.setCodigo(re.getString("codigo_producto"));
                        beanProductos.setNombre(re.getString("nombre_producto"));
                        beanProductos.setPrecio(re.getString("precio"));
                        beanProductos.setCantidad(re.getString("cantidad_productos"));
                      
                        listaProductos.add(beanProductos);
                        contadorParar++;
                        if(contadorParar==5){
                            break;
                        }
                   }else{
                       contador++;
                   }
                  
               }
            }catch(Exception e){bandera="Error "+e.getMessage();}
        }
        try{
            statement = conexion.obtener().createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT COUNT(*) FROM Productos");
            resultSet.next();
            cantidadDatos = resultSet.getInt(1); 
        }catch(Exception e){bandera="Error "+e.getMessage();}
        conexion.cerrar();
        return bandera;
    }
    public int getCantidadDatos(){
        return cantidadDatos;
    }
    public ArrayList<BeanProductos> getBeanProductos(){
        return listaProductos;
    }
    
}
