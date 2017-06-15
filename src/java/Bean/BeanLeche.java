/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Bean;

/**
 *
 * @author prueba
 */
public class BeanLeche {
    private String cedula;
    private String nombre;
    private String apellido1;
    private String apellido2;
    private String cantidadLeche;

    public BeanLeche(String cedula, String nombre, String apellido1, String apellido2, String cantidadLeche) {
        this.cedula = cedula;
        this.nombre = nombre;
        this.apellido1 = apellido1;
        this.apellido2 = apellido2;
        this.cantidadLeche = cantidadLeche;
    }

    public BeanLeche() {
        
        this.cedula="";
        this.nombre="";
        this.apellido1 = "";
        this.apellido2 = "";
        this.cantidadLeche = "";
        
        
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
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

    public String getCantidadLeche() {
        return cantidadLeche;
    }

    public void setCantidadLeche(String cantidadLeche) {
        this.cantidadLeche = cantidadLeche;
    }
    
    
   
    
}
