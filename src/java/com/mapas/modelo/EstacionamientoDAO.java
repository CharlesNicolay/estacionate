package com.mapas.modelo;
import com.mapas.config.Conexion;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;
public class EstacionamientoDAO
{
    Conexion conexion=Conexion.Obtener_Conexion();//LLamamos al metodo Singleton
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    public List listar()
    {
        List<Estacionamiento> estacionamientos = new ArrayList();
        String sql="select * from estacionamientos";
        try
        {
            con = conexion.Obterner_Conexion();
            ps= con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next())
            {
                Estacionamiento p= new Estacionamiento();
                p.setId(rs.getInt(1));
                p.setLatitud(rs.getString(2));
                p.setLongitud(rs.getString(3));
                p.setNombre(rs.getString(4));
                p.setCapacidad(rs.getInt(5));
                estacionamientos.add(p);
            }
        }
        catch(SQLException e)
        {
            System.out.println("Error en EstacionamientoDAO_Listar:\n"+e);
        }
        return estacionamientos;
    }
    public void listarEstaconamiento(int id, HttpServletResponse response){
        String sql="select * from estacionamientos where id="+id;
        InputStream inputStream = null;
        OutputStream outputStream = null;
        BufferedInputStream bufferedInputStream = null;
        BufferedOutputStream bufferedOutputStream = null;
        
        try{
            outputStream=response.getOutputStream();
            con = conexion.Obterner_Conexion();
            ps= con.prepareStatement(sql);
            rs=ps.executeQuery();
            if(rs.next()){
                
            }
        }
        catch(IOException | SQLException e)
        {
            System.out.println("Error en Estacionamiento_ListarEstacionamiento:\n"+e);
        }
    }
}