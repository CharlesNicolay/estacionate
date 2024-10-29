package com.mapas.modelo;
public class Caracteristicas
{
    private int Id_Caracteristicas;
    private String Nombre;
    public Caracteristicas()
    {
        
    }
    public Caracteristicas(int Id_Caracteristicas, String Nombre)
    {
        this.Id_Caracteristicas = Id_Caracteristicas;
        this.Nombre = Nombre;
    }
    public int getId_Caracteristicas() {return Id_Caracteristicas;}
    public void setId_Caracteristicas(int Id_Caracteristicas) {this.Id_Caracteristicas = Id_Caracteristicas;}
    public String getNombre() {return Nombre;}
    public void setNombre(String Nombre) {this.Nombre = Nombre;}
}