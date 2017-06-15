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
    private int cantidadDatos;
    private int paginas;
    public BuscarTodosUsuarios(int paginas){
        this.conexion = new Conexion();
        this.paginas = paginas;
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
               int contador=0;
               int contadorParar=0;
               while(re.next()){
                   if(contador==paginas && contadorParar<=5){
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
                        contadorParar++;
                        if(contadorParar==5){
                            break;
                        }
                   }else{
                       contador++;
                   }
               }
            }catch(Exception e){bandera="Error "+e.getMessage();}
            try{
            statement = conexion.obtener().createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT COUNT(*) FROM Usuarios");
            resultSet.next();
            cantidadDatos = resultSet.getInt(1); 
        }catch(Exception e){bandera="Error "+e.getMessage();}
        }
        conexion.cerrar();
        return bandera;
    }
    public int getCantidadDatos(){
        return cantidadDatos;
    }
    public ArrayList<BeanUsuario> getBenUsuarios(){
        return listaUsuarios;
    }
}
