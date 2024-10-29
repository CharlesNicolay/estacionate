package com.mapas.modelo;
import com.mapas.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class Recorrido_Conductores_DAO
{
    Conexion conexion=Conexion.Obtener_Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    public List listar()
    {
        List<Recorrido_Conductores> rec_con = new ArrayList();
        String sql="select * from Conductores_Recorrido";
        try
        {
            con = conexion.Obterner_Conexion();
            ps= con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next())
            {
                Recorrido_Conductores u= new Recorrido_Conductores();
                u.setCod_Conductor(rs.getInt(1));
                u.setCod_Recorrido(rs.getInt(2));
                rec_con.add(u);
            }
        }
        catch(SQLException e)
        {
            System.out.println("Error en Recorrido_Conductores-Listar:\n"+e);
        }
        return rec_con;
    }
    public void Agregar(Recorrido_Conductores rec_con)
    {
        String sql="insert into Conductores_Recorrido"
                + "(idConductores,idRecorrido)"
                + "values "
                + "(?,?)";
        try
        {
            con=conexion.Obterner_Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, rec_con.getCod_Conductor());
            ps.setInt(2, rec_con.getCod_Recorrido());
            ps.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println("Error en Recorrido_Conductores-Agregar:\n"+e);
        }
    }
}