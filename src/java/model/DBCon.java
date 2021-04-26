/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author User
 */
public class DBCon {
    public Connection createConnection() throws ClassNotFoundException, SQLException{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital", "root", "");
        return con; 
    }
    
    
    //Admin register/login-------------------------------------------------------------------------
    
    public boolean registerUser(String username, String email, String password){
        int x = 0;
        
        try{
            
            PreparedStatement st = createConnection().prepareStatement("insert into admin(username, email, password) values(?, ?, ?)");
            st.setString(1, username);
            st.setString(2, email);
            st.setString(3, password);
            
            x =st.executeUpdate();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return x == 1;
    }
    
    public boolean verifyUser(String email,String password) throws ClassNotFoundException, SQLException{
        boolean verified=false;
        
        PreparedStatement ps = createConnection().prepareStatement("SELECT * FROM admin WHERE email = ?");
        ps.setString(1, email);
        ResultSet rs = ps.executeQuery();
        
        if(rs.next() && password.equals(rs.getString("password"))){
            verified= true;
        }
        
        return verified;
    
    }
    
   //-------------------------------------end of admin login/register-----------------------------------------------
    
    
    
    
    
    
    
    //patient login and register------------------------------------------------------------------------------------
    
    
    
    
    public boolean registerPatient(String username, String firstname, String lastname, String email, String password, String dob, String gender, String bloodgroup, String allergy){
        int x = 0;
        
        try{
            
            PreparedStatement st = createConnection().prepareStatement("insert into patiant(username, firstname, lastname, email, password, dob, gender, bloodgroup, allergy) values(?, ?, ?, ?, ?, ?, ?, ?, ?)");
            st.setString(1, username);
            st.setString(2, firstname);
            st.setString(3, lastname);
            st.setString(4, email);
            st.setString(5, password);
            st.setString(6, dob);
            st.setString(7, gender);
            st.setString(8, bloodgroup);
            st.setString(9, allergy);
            
            x =st.executeUpdate();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return x == 1;
    }
    
    
    
    public boolean verifyPatient(String email,String password) throws ClassNotFoundException, SQLException{
        boolean verified=false;
        
        PreparedStatement ps = createConnection().prepareStatement("SELECT * FROM patiant WHERE email = ?");
        ps.setString(1, email);
        ResultSet rs = ps.executeQuery();
        
        if(rs.next() && password.equals(rs.getString("password"))){
            verified= true;
        }
        
        return verified;
    
    }
    //-----------------------------------------------end of patient login/register--------------------------------------------------
    
}
