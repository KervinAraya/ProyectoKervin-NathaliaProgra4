/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Bean.BeanSocio;
import java.sql.Statement;

/**
 *
 * @author kervin
 */
public class InsertarSocio {
    private BeanSocio beanSocio;
    private Conexion conexion;
    public InsertarSocio(BeanSocio beanSocio){
        this.beanSocio=beanSocio;
        this.conexion = new Conexion();
    }
    public String insertarSocio(){
        String bandera="";
        Statement statement=null;
         try{
            statement = conexion.obtener().createStatement();
         }catch(Exception e){bandera="Error al conectar con la base de datos";}
        try{
            int cont = statement.executeUpdate("INSERT INTO Socios(ced_socio,nombre_socio,apellido1_socio,apellido2_socio,direccion_socio,telefono_socio,email_socio,usuario) VALUES('"+beanSocio.getCedula()+"','"+beanSocio.getNombre()+"','"+beanSocio.getApellido1()+"','"+beanSocio.getApellido2()+"','"+beanSocio.getDireccion()+"','"+beanSocio.getTelefono()+"','"+beanSocio.getCorreo()+"','"+beanSocio.getUsuarioRegistro()+"')");
            if(cont>0){
                bandera="1";
            }
            
        }catch(Exception e){
           bandera = "Error: ("+ e.getMessage() +") al insertar el socio";
                   
        }
        conexion.cerrar();
        return bandera;
    }
}
