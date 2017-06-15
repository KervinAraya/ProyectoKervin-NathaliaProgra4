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
public class ModificarSocio {
    private String cedulaBuscar;
    private Conexion conexion;
    private BeanSocio beanUsuario;

    public ModificarSocio(BeanSocio beanUsuario){
        this.conexion = new Conexion();
        this.beanUsuario =  beanUsuario;
        this.cedulaBuscar = this.beanUsuario.getCedula();
    }
    
    public String updateUsuario(){
        String bandera="";
        Statement statement = null;
        try{
           statement = conexion.obtener().createStatement();
        }catch(Exception e){bandera="Error al conectar con la base de datos";}           
        if(bandera.equals("")){
            try{   
               bandera = String.valueOf(statement.executeUpdate("UPDATE Socios SET ced_socio='"+beanUsuario.getCedula()+"',nombre_socio='"+beanUsuario.getNombre()+"',apellido1_socio='"+beanUsuario.getApellido1()+"',apellido2_socio='"+beanUsuario.getApellido2()+"',direccion_socio='"+beanUsuario.getDireccion()+"',telefono_socio='"+beanUsuario.getTelefono()+"',email_socio='"+beanUsuario.getCorreo()+"' WHERE ced_socio='"+cedulaBuscar+"'"));
        
            }catch(Exception e){
                bandera="Error "+e.getMessage();
            }
        }
        conexion.cerrar();
        return bandera;
    }
}
