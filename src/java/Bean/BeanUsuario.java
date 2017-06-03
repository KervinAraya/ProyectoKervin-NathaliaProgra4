/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

/**
 *
 * @author kervin
 */
public class BeanUsuario {
    
    private String nombre;
    private String apellido1;
    private String apellido2;
    private String cedula;
    private String telefono;
    private String correo;
    private String direccion;
    private String avatar;
    private String contrasena;
    private String usuario;
    private String privilegio;

    public BeanUsuario(String nombre, String apellido1, String apellido2, String cedula, String telefono, String correo, String direccion, String avatar, String contrasena, String usuario, String privilegio) {
        this.nombre = nombre;
        this.apellido1 = apellido1;
        this.apellido2 = apellido2;
        this.cedula = cedula;
        this.telefono = telefono;
        this.correo = correo;
        this.direccion = direccion;
        if(avatar.equals(null)){
            this.avatar="imagenesUsuarios/avatar.png";
        }else{
            this.avatar = "imagenesUsuarios/"+avatar;
        }
        this.contrasena = contrasena;
        this.usuario = usuario;
        this.privilegio = privilegio;
    }

    @Override
    public String toString() {
        return "BeanUsuario{" + "nombre=" + nombre + ", apellido1=" + apellido1 + ", apellido2=" + apellido2 + ", cedula=" + cedula + ", telefono=" + telefono + ", correo=" + correo + ", direccion=" + direccion + ", avatar=" + avatar + ", contrasena=" + contrasena + ", usuario=" + usuario + ", privilegio=" + privilegio + '}';
    }
    

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido1() {
        return apellido1;
    }

    public void setApellido1(String apellido1) {
        this.apellido1 = apellido1;
    }

    public String getApellido2() {
        return apellido2;
    }

    public void setApellido2(String apellido2) {
        this.apellido2 = apellido2;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getPrivilegio() {
        return privilegio;
    }

    public void setPrivilegio(String privilegio) {
        this.privilegio = privilegio;
    }
    
}
