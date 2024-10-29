package com.mapas.modelo;
import com.mapas.config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class Usuarios_DAO
{
    Conexion conexion=Conexion.Obtener_Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    public List listar()
    {
        List<Usuarios> usuario = new ArrayList();
        String sql="select * from Usuarios";
        try
        {
            con = conexion.Obterner_Conexion();
            ps= con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next())
            {
                Usuarios u= new Usuarios();
                u.setId_Usuario(rs.getInt(1));
                u.setNombre(rs.getString(2));
                u.setClave(rs.getString(3));
                u.setRol(rs.getBoolean(4));
                usuario.add(u);
            }
        }
        catch(SQLException e)
        {
            System.out.println("Error en Usuarios_DAO-Listar:\n"+e);
        }
        return usuario;
    }
    public void Agregar(Usuarios usuario)
    {
        String sql="insert into Usuarios"
                + "(idUser,username,password,rol)"
                + "values "
                + "(?,?,?,?)";
        try
        {
            con=conexion.Obterner_Conexion();
            ps=con.prepareStatement(sql);
            ps.setInt(1, usuario.getId_Usuario());
            ps.setString(2, usuario.getNombre());
            ps.setString(3, usuario.getClave());
            ps.setBoolean(4, usuario.getRol(true));
            ps.executeUpdate();
        }
        catch(SQLException e)
        {
            System.out.println("Error en Usuarios_DAO-Agregar:\n"+e);
        }
    }
}