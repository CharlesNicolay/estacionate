/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mapas.modelo;

/**
 *
 * @author dkred
 */
public class Estacionamiento {
    int id;
    String latitud;
    String longitud;
    String nombre;
    int capacidad;
    int id_caracteristica;
    
    public Estacionamiento(int id,String latitud,String longitud, String nombre, int capacidad, int id_caracteristica)
    {
    this.id = id;
    this.latitud = latitud;
    this.longitud = longitud;
    this.nombre = nombre;
    this.capacidad = capacidad;
    this.id_caracteristica = id_caracteristica;
    }

    Estacionamiento() {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLatitud() {
        return latitud;
    }

    public void setLatitud(String latitud) {
        this.latitud = latitud;
    }

    public String getLongitud() {
        return longitud;
    }

    public void setLongitud(String longitud) {
        this.longitud = longitud;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(int capacidad) {
        this.capacidad = capacidad;
    }

    public int getId_caracteristica() {
        return id_caracteristica;
    }

    public void setId_caracteristica(int id_caracteristica) {
        this.id_caracteristica = id_caracteristica;
    }
    
}
