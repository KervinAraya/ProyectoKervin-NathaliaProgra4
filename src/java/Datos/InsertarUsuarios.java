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
public class InsertarUsuarios {
    
    private BeanUsuario beanUsuarios;
    private Conexion conexion;
    public InsertarUsuarios(BeanUsuario beanUsuarios){
        this.beanUsuarios=beanUsuarios;
        this.conexion = new Conexion();
    }
    public String insertarUsuario(){
        String bandera="";
        Statement statement=null;
         try{
            statement = conexion.obtener().createStatement();
         }catch(Exception e){bandera="Error al conectar con la base de datos";}
        try{
            int cont = statement.executeUpdate("INSERT INTO Usuarios(ced_usuario,nombre_usuario,apellido1_usuario,apellido2_usuario,direccion_usuario,telefono_usuario,email_usuario,usuario,contrasena,privilegios,imagen_usuarios) VALUES('"+beanUsuarios.getCedula()+"','"+beanUsuarios.getNombre()+"','"+beanUsuarios.getApellido1()+"','"+beanUsuarios.getApellido2()+"','"+beanUsuarios.getDireccion()+"','"+beanUsuarios.getTelefono()+"','"+beanUsuarios.getCorreo()+"','"+beanUsuarios.getUsuario()+"','"+beanUsuarios.getContrasena()+"','"+beanUsuarios.getPrivilegio()+"','"+beanUsuarios.getAvatar()+"')");
            if(cont>0){
                bandera="1";
            }
            
        }catch(Exception e){
           bandera = "Error al insertar el usuario";
                   
        }
        conexion.cerrar();
        return bandera;
    }
}
