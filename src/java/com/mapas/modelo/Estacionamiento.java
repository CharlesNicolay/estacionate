package com.mapas.modelo;
public class Estacionamiento
{
    int id;
    String latitud;
    String longitud;
    String nombre;
    int capacidad;
    public Estacionamiento(int id,String latitud,String longitud,
            String nombre, int capacidad)
    {
    this.id = id;
    this.latitud = latitud;
    this.longitud = longitud;
    this.nombre = nombre;
    this.capacidad = capacidad;
    }
    Estacionamiento()
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    public int getId() {return id;}
    public void setId(int id) {this.id = id;}
    public String getLatitud() {return latitud;}
    public void setLatitud(String latitud) {this.latitud = latitud;}
    public String getLongitud() {return longitud;}
    public void setLongitud(String longitud) {this.longitud = longitud;}
    public String getNombre() {return nombre;}
    public void setNombre(String nombre) {this.nombre = nombre;}
    public int getCapacidad() {return capacidad;}
    public void setCapacidad(int capacidad) {this.capacidad = capacidad;}
}