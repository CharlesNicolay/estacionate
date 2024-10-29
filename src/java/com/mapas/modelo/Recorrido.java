package com.mapas.modelo;
import java.util.Date;
import org.apache.tomcat.jni.Time;
public class Recorrido
{
    private int Id_Recorrido;
    Date Fecha;
    String Hora;
    private String Origen, Destino;
    Estacionamiento estacionamiento;
    private int Cod_Estacionamiento=estacionamiento.id;
    public Recorrido()
    {
        
    }
    public Recorrido(int Id_Recorrido, Date Fecha, String Hora,
            String Origen, String Destino,int Cod_Estacionamiento)
    {
        this.Id_Recorrido = Id_Recorrido;
        this.Fecha = Fecha;
        this.Hora = Hora;
        this.Origen = Origen;
        this.Destino = Destino;
        this.Cod_Estacionamiento = Cod_Estacionamiento;
    }
    public int getId_Recorrido() {return Id_Recorrido;}
    public void setId_Recorrido(int Id_Recorrido) {this.Id_Recorrido = Id_Recorrido;}
    public Date getFecha() {return Fecha;}
    public void setFecha(Date Fecha) {this.Fecha = Fecha;}
    public String getHora() {return Hora;}
    public void setHora(String Hora) {this.Hora = Hora;}
    public String getOrigen() {return Origen;}
    public void setOrigen(String Origen) {this.Origen = Origen;}
    public String getDestino() {return Destino;}
    public void setDestino(String Destino) {this.Destino = Destino;}
    public int getCod_Estacionamiento() {return Cod_Estacionamiento;}
    public void setCod_Estacionamiento(int Cod_Estacionamiento) {this.Cod_Estacionamiento = Cod_Estacionamiento;}
}