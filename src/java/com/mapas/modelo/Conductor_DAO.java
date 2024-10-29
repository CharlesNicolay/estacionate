package com.mapas.modelo;
import com.mapas.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Conductor_DAO
{
    Conexion conexion=Conexion.Obtener_Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    public List listar()
    {
        List<Conductor> conductor = new ArrayList();
        String sql="select * from Conductores";
        try
        {
            con = conexion.Obterner_Conexion();
            ps= con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next())
            {
                Conductor u= new Conductor();
                u.setID_Conductor(rs.getInt(1));
                u.setNombre(rs.getString(2));
                u.setApellido(rs.getString(3));
                u.setPlaca(rs.getString(4));
                u.setCelular(rs.getString(5));
                u.setCod_Usuario(rs.getInt(6));
                conductor.add(u);
            }
        }
        catch(SQLException e)
        {
            System.out.println("Error en Conductor_DAO-Listar:\n"+e);
        }
        return conductor;
    }
    public void Agregar(Conductor conductor)
    {
        String sql="insert into Conductores"
                + "(idConductores,nombre,apellido,placa,celular,idUser)"
                + "values "
                + "(?,?,?,?,?,?)";
        try
        {
            con=conexion.Obterner_Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, conductor.getID_Conductor());
            ps.setString(2, conductor.getNombre());
            ps.setString(3, conductor.getApellido());
            ps.setString(4, conductor.getPlaca());
            ps.setString(5, conductor.getCelular());
            ps.setInt(6, conductor.getCod_Usuario());
            ps.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println("Error en Conductor_DAO-Agregar:\n"+e);
        }
    }
}