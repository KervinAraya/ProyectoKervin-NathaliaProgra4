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
    public BuscarTodosSocios(){
        this.conexion = new Conexion();
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
               ResultSet re = statement.executeQuery("SELECT * FROM Socios");
               while(re.next()){
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
               }
            }catch(Exception e){bandera="Error "+e.getMessage();}
        }

        return bandera;
    }
    public ArrayList<BeanSocio> getBenSocios(){
        return listaSocios;
    }
    
}
