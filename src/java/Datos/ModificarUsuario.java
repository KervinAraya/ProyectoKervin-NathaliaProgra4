/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Bean.BeanUsuario;
import java.sql.Statement;

/**
 *
 * @author kervin
 */
public class ModificarUsuario {
    private String cedulaBuscar;
    private Conexion conexion;
    private BeanUsuario beanUsuario;

    public ModificarUsuario(BeanUsuario beanUsuario){
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
               bandera = String.valueOf(statement.executeUpdate("UPDATE Usuarios SET ced_usuario='"+beanUsuario.getCedula()+"',nombre_usuario='"+beanUsuario.getNombre()+"',apellido1_usuario='"+beanUsuario.getApellido1()+"',apellido2_usuario='"+beanUsuario.getApellido2()+"',direccion_usuario='"+beanUsuario.getDireccion()+"',telefono_usuario='"+beanUsuario.getTelefono()+"',email_usuario='"+beanUsuario.getCorreo()+"',usuario='"+beanUsuario.getUsuario()+"',contrasena='"+beanUsuario.getContrasena()+"' WHERE ced_usuario='"+cedulaBuscar+"'"));
        
            }catch(Exception e){
                bandera="Error "+e.getMessage();
            }
        }

        return bandera;
    }
    
}
