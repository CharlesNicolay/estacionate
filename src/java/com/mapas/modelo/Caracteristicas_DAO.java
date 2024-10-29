package com.mapas.modelo;

import com.mapas.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Caracteristicas_DAO
{
    Conexion conexion=Conexion.Obtener_Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    public List listar()
    {
        List<Caracteristicas> caracteristica = new ArrayList();
        String sql="select * from Caracteristicas";
        try
        {
            con = conexion.Obterner_Conexion();
            ps= con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next())
            {
                Caracteristicas u= new Caracteristicas();
                u.setId_Caracteristicas(rs.getInt(1));
                u.setNombre(rs.getString(2));
                caracteristica.add(u);
            }
        }
        catch(SQLException e)
        {
            System.out.println("Error en Caracteristicas_DAO-Listar:\n"+e);
        }
        return caracteristica;
    }
    public void Agregar(Caracteristicas caracteristicas)
    {
        String sql="insert into Caracteristicas"
                + "(idCaracteristicas,nombre)"
                + "values "
                + "(?,?)";
        try
        {
            con=conexion.Obterner_Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, caracteristicas.getId_Caracteristicas());
            ps.setString(2, caracteristicas.getNombre());
            ps.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println("Error en Caracteristicas_DAO-Agregar:\n"+e);
        }
    }
}