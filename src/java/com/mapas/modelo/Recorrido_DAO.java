package com.mapas.modelo;

import com.mapas.config.Conexion;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Recorrido_DAO
{
    Conexion conexion=Conexion.Obtener_Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    public List listar()
    {
        List<Recorrido> recorrido = new ArrayList();
        String sql="select * from Usuarios";
        try
        {
            con = conexion.Obterner_Conexion();
            ps= con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next())
            {
                Recorrido u= new Recorrido();
                u.setId_Recorrido(rs.getInt(1));
                u.setFecha(rs.getDate(2));
                u.setHora(rs.getString(3));
                u.setOrigen(rs.getString(4));
                u.setDestino(rs.getString(5));
                u.setCod_Estacionamiento(rs.getInt(6));
                recorrido.add(u);
            }
        }
        catch(SQLException e)
        {
            System.out.println("Error en Recorrido_DAO-Listar:\n"+e);
        }
        return recorrido;
    }
    public void Agregar(Recorrido recorrido)
    {
        String sql="insert into Recorrido"
                + "(idRecorrido,fecha,hora,origen,destino,idEstacionamiento)"
                + "values "
                + "(?,?,?,?,?,?)";
        try
        {
            con=conexion.Obterner_Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, recorrido.getId_Recorrido());
            ps.setDate(2, (Date) recorrido.getFecha());
            ps.setString(3, recorrido.getHora());
            ps.setString(4, recorrido.getOrigen());
            ps.setString(5, recorrido.getDestino());
            ps.setInt(6, recorrido.getCod_Estacionamiento());
            ps.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println("Error en Recorrido_DAO-Agregar:\n"+e);
        }
    }
}