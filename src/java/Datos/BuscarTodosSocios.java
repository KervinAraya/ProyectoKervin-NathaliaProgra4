/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Bean.BeanSocio;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author kervin
 */
public class BuscarTodosSocios {
    
    private Conexion conexion;
    private ArrayList<BeanSocio> listaSocios;
    private int cantidadDatos;
    private int paginas;
    public BuscarTodosSocios(int paginas){
        this.conexion = new Conexion();
        this.paginas = paginas;
        this.listaSocios = new ArrayList<>();
    }
    
    public String getSocios(){
        String bandera="";
        Statement statement = null;
        try{
           statement = conexion.obtener().createStatement();
        }catch(Exception e){bandera="Error al conectar con la base de datos";}           
        if(bandera.equals("")){
            try{   
               int contador=0;
               int contadorParar=0;
               ResultSet re = statement.executeQuery("SELECT * FROM Socios");
               while(re.next()){
                   if(contador==paginas && contadorParar<=5){
                        bandera="1";
                        BeanSocio beanSocio = new BeanSocio();
                        beanSocio.setCedula(re.getString("ced_socio"));
                        beanSocio.setNombre(re.getString("nombre_socio"));
                        beanSocio.setApellido1(re.getString("apellido1_socio"));
                        beanSocio.setApellido2(re.getString("apellido2_socio"));
                        beanSocio.setDireccion(re.getString("direccion_socio"));
                        beanSocio.setTelefono(re.getString("telefono_socio"));
                        beanSocio.setCorreo(re.getString("email_socio"));
                        listaSocios.add(beanSocio);
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
            ResultSet resultSet = statement.executeQuery("SELECT COUNT(*) FROM Socios");
            resultSet.next();
            cantidadDatos = resultSet.getInt(1); 
        }catch(Exception e){bandera="Error "+e.getMessage();}
        
        return bandera;
    }
    public int getCantidadDatos(){
        return cantidadDatos;
    }
    public ArrayList<BeanSocio> getBenSocios(){
        return listaSocios;
    }
    
}
