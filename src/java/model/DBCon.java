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
}
