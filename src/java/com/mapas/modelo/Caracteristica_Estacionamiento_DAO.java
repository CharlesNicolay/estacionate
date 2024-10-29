package com.mapas.modelo;
import com.mapas.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class Caracteristica_Estacionamiento_DAO
{
    Conexion conexion=Conexion.Obtener_Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    public List listar()
    {
        List<Caracteristica_Estacionamiento> car_est = new ArrayList();
        String sql="select * from Estacionamiento_has_Caracteristicas";
        try
        {
            con = conexion.Obterner_Conexion();
            ps= con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next())
            {
                Caracteristica_Estacionamiento u= new Caracteristica_Estacionamiento();
                u.setCod_Estacionamiento(rs.getInt(1));
                u.setCod_Caracteristica(rs.getInt(2));
                car_est.add(u);
            }
        }
        catch(SQLException e)
        {
            System.out.println("Error en Caracteristica_Estacionamiento_DAO-Listar:\n"+e);
        }
        return car_est;
    }
    public void Agregar(Caracteristica_Estacionamiento car_est)
    {
        String sql="insert into Estacionamiento_has_Caracteristicas"
                + "(idEstacionamiento,idCaracteristicas)"
                + "values "
                + "(?,?)";
        try
        {
            con=conexion.Obterner_Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, car_est.getCod_Estacionamiento());
            ps.setInt(2, car_est.getCod_Caracteristica());
            ps.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println("Error en Caracteristica_Estacionamiento_DAO-Agregar:\n"+e);
        }
    }
}
