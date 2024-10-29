package com.mapas.modelo;
public class Conductor
{
    private int ID_Conductor;
    private String Nombre,Apellido,Placa,Celular;
    public Usuarios usuario;
    private int Cod_Usuario=usuario.getId_Usuario();
    public Conductor()
    {
        
    }
    public Conductor(int ID_Conductor, String Nombre, String Apellido,
            String Placa, String Celular,int Cod_Usuario)
    {
        this.ID_Conductor = ID_Conductor;
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Placa = Placa;
        this.Celular = Celular;
        this.Cod_Usuario = Cod_Usuario;
    }
    public int getID_Conductor() {return ID_Conductor;}
    public void setID_Conductor(int ID_Conductor) {this.ID_Conductor = ID_Conductor;}
    public String getNombre() {return Nombre;}
    public void setNombre(String Nombre) {this.Nombre = Nombre;}
    public String getApellido() {return Apellido;}
    public void setApellido(String Apellido) {this.Apellido = Apellido;}
    public String getPlaca() {return Placa;}
    public void setPlaca(String Placa) {this.Placa = Placa;}
    public String getCelular() {return Celular;}
    public void setCelular(String Celular) {this.Celular = Celular;}
    public int getCod_Usuario() {return Cod_Usuario;}
    public void setCod_Usuario(int Cod_Usuario) {this.Cod_Usuario = Cod_Usuario;}
}