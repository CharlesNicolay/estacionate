package com.mapas.modelo;
public class Recorrido_Conductores
{
    Recorrido recorrido;
    Conductor conductor;
    private int Cod_Conductor=conductor.getID_Conductor();
    private int Cod_Recorrido=recorrido.getId_Recorrido();
    public Recorrido_Conductores()
    {
        
    }
    public Recorrido_Conductores(int Cod_Conductor,int Cod_Recorrido)
    {
        this.Cod_Conductor = Cod_Conductor;
        this.Cod_Recorrido = Cod_Recorrido;
    }
    public int getCod_Conductor() {return Cod_Conductor;}
    public void setCod_Conductor(int Cod_Conductor) {this.Cod_Conductor = Cod_Conductor;}
    public int getCod_Recorrido() {return Cod_Recorrido;}
    public void setCod_Recorrido(int Cod_Recorrido) {this.Cod_Recorrido = Cod_Recorrido;}
}