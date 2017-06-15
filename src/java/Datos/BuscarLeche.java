/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Bean.BeanLeche;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author prueba
 */
public class BuscarLeche {
     private Conexion conexion;
    private ArrayList<BeanLeche> listaLeche;
    private int cantidadDatos;
    private int paginas;
    public BuscarLeche(int paginas){
        this.conexion = new Conexion();
        this.paginas = paginas;
        this.listaLeche = new ArrayList<>();
    }
    
    public String getLeche(){
        String bandera="";
        Statement statement = null;
        try{
           statement = conexion.obtener().createStatement();
        }catch(Exception e){bandera="Error al conectar con la base de datos";}           
        if(bandera.equals("")){
            try{   
               int contador=0;
               int contadorParar=0;
               ResultSet re = statement.executeQuery("SELECT Socios.ced_socio,nombre_socio,apellido1_socio,apellido2_socio, litros FROM Leche inner join Socios on (Socios.ced_socio=Leche.ced_socio)");
               bandera="1";
               while(re.next()){
                   if(contador==paginas && contadorParar<=5){
                        bandera="1";
                        BeanLeche beanLeche = new BeanLeche();
                        beanLeche.setCedula(re.getString("ced_socio"));
                        beanLeche.setNombre(re.getString("nombre_socio"));
                        beanLeche.setApellido1(re.getString("apellido1_socio"));
                        beanLeche.setApellido2(re.getString("apellido2_socio"));
                         beanLeche.setCantidadLeche(re.getString("litros"));
                      
                        listaLeche.add(beanLeche);
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
            ResultSet resultSet = statement.executeQuery("SELECT COUNT(*) FROM Leche");
            resultSet.next();
            cantidadDatos = resultSet.getInt(1); 
        }catch(Exception e){bandera="Error "+e.getMessage();}
        conexion.cerrar();
        return bandera;
    }
    public int getCantidadDatos(){
        return cantidadDatos;
    }
    public ArrayList<BeanLeche> getBeanLeche(){
        return listaLeche;
    }
    
}
