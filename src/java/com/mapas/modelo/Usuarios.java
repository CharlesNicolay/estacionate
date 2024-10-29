package com.mapas.modelo;
public class Usuarios
{
    private int Id_Usuario;
    private String Nombre,Clave;
    private boolean rol;
    public Usuarios()
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    public Usuarios(int Id_Usuario, String Nombre,
            String Clave, boolean rol)
    {
        this.Id_Usuario = Id_Usuario;
        this.Nombre = Nombre;
        this.Clave = Clave;
        this.rol = rol;
    }
    public int getId_Usuario() {return Id_Usuario;}
    public void setId_Usuario(int Id_Usuario) {this.Id_Usuario = Id_Usuario;}
    public String getNombre() {return Nombre;}
    public void setNombre(String Nombre) {this.Nombre = Nombre;}
    public String getClave() {return Clave;}
    public void setClave(String Clave) {this.Clave = Clave;}
    public boolean isRol() {return rol;}
    public void setRol(boolean rol) {this.rol = rol;}
    boolean getRol(boolean b)
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }
}