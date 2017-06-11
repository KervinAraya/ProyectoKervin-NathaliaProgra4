/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import Bean.BeanUsuario;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author kervin
 */
public class BuscarTodosUsuarios {
    
    private Conexion conexion;
    private ArrayList<BeanUsuario> listaUsuarios;
    public BuscarTodosUsuarios(){
        this.conexion = new Conexion();
        this.listaUsuarios = new ArrayList<>();
    }
    
    public String getUsuarios(){
        String bandera="";
        Statement statement = null;
        try{
           statement = conexion.obtener().createStatement();
        }catch(Exception e){bandera="Error al conectar con la base de datos";}           
        if(bandera.equals("")){
            try{   
               ResultSet re = statement.executeQuery("SELECT * FROM Usuarios");
               while(re.next()){
                   bandera="1";
                   BeanUsuario beanUsario = new BeanUsuario();
                   beanUsario.setCedula(re.getString("ced_usuario"));
                   beanUsario.setNombre(re.getString("nombre_usuario"));
                   beanUsario.setApellido1(re.getString("apellido1_usuario"));
                   beanUsario.setApellido2(re.getString("apellido2_usuario"));
                   beanUsario.setDireccion(re.getString("direccion_usuario"));
                   beanUsario.setTelefono(re.getString("telefono_usuario"));
                   beanUsario.setCorreo(re.getString("email_usuario"));
                   beanUsario.setUsuario(re.getString("usuario"));
                   beanUsario.setContrasena(re.getString("contrasena"));
                   beanUsario.setPrivilegio(re.getString("privilegios"));
                   beanUsario.setAvatar(re.getString("imagen_usuarios"));
                   listaUsuarios.add(beanUsario);
               }
            }catch(Exception e){bandera="Error "+e.getMessage();}
        }

        return bandera;
    }
    public ArrayList<BeanUsuario> getBenUsuarios(){
        return listaUsuarios;
    }
}
