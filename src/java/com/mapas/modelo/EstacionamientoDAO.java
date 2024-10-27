/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mapas.modelo;

import com.mapas.config.Conexion;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author dkred
 */
public class EstacionamientoDAO {
    Connection con;
    Conexion cn = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    
    public List listar(){
        List<Estacionamiento> estacionamientos = new ArrayList();
        String sql="select * from estacionamientos";
        try{
            con = cn.getConnection();
            ps= con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Estacionamiento p= new Estacionamiento();
                p.setId(rs.getInt(1));
                p.setLatitud(rs.getString(2));
                p.setLongitud(rs.getString(3));
                p.setNombre(rs.getString(4));
                p.setCapacidad(rs.getInt(5));
                p.setId_caracteristica(rs.getInt(6));
                estacionamientos.add(p);
            }
        }catch(Exception e){
            
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
            con = cn.getConnection();
            ps= con.prepareStatement(sql);
            rs=ps.executeQuery();
            if(rs.next()){
                
            }
        }catch(Exception e){
            
        }
              
            
    }
    
}
