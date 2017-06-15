/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Bean.BeanSocio;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author kervin
 */
public class BuscarSocio {
    
    private String cedulaBuscar;
    private Conexion conexion;
    private BeanSocio beanUsario;
    public BuscarSocio(String cedulaBuscar){
        this.cedulaBuscar = cedulaBuscar;
        this.conexion = new Conexion();
        this.beanUsario = new BeanSocio();
    }
    
    public String getSocio(){
        String bandera="";
        Statement statement = null;
        try{
           statement = conexion.obtener().createStatement();
        }catch(Exception e){bandera="Error al conectar con la base de datos";}           
        if(bandera.equals("")){
            try{   
               ResultSet re = statement.executeQuery("SELECT * FROM Socios WHERE ced_socio='"+cedulaBuscar+"'");
               bandera = "No se encontró el usuario";
               while(re.next()){
                   bandera="1";
                   beanUsario.setCedula(re.getString("ced_socio"));
                   beanUsario.setNombre(re.getString("nombre_socio"));
                   beanUsario.setApellido1(re.getString("apellido1_socio"));
                   beanUsario.setApellido2(re.getString("apellido2_socio"));
                   beanUsario.setDireccion(re.getString("direccion_socio"));
                   beanUsario.setTelefono(re.getString("telefono_socio"));
                   beanUsario.setCorreo(re.getString("email_socio"));
                   beanUsario.setUsuarioRegistro(re.getString("usuario"));
               }
            }catch(Exception e){bandera="Error "+e.getMessage();}
        }
        conexion.cerrar();
        return bandera;
    }
    
    public BeanSocio getBenSocio(){
        return beanUsario;
    }
}
