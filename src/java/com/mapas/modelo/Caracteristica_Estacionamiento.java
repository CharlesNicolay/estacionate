package com.mapas.modelo;
public class Caracteristica_Estacionamiento
{
    Estacionamiento estacionamiento;
    Caracteristicas caracteristicas;
    private int Cod_Estacionamiento=estacionamiento.id;
    private int Cod_Caracteristica=caracteristicas.getId_Caracteristicas();
    public Caracteristica_Estacionamiento()
    {
        
    }
    public Caracteristica_Estacionamiento(int Cod_Estacionamiento,int Cod_Caracteristica)
    {
        this.Cod_Estacionamiento = Cod_Estacionamiento;
        this.Cod_Caracteristica = Cod_Caracteristica;
    }
    public int getCod_Estacionamiento() {return Cod_Estacionamiento;}
    public void setCod_Estacionamiento(int Cod_Estacionamiento) {this.Cod_Estacionamiento = Cod_Estacionamiento;}
    public int getCod_Caracteristica() {return Cod_Caracteristica;}
    public void setCod_Caracteristica(int Cod_Caracteristica) {this.Cod_Caracteristica = Cod_Caracteristica;}
}