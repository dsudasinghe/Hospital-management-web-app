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
    
    
    
    //appointment------------------------------------------------------------------------------------
        
    public boolean addappointment(String username, String firstname, String lastname, String email){
        int x = 0;
        
        try{
            
            PreparedStatement st = createConnection().prepareStatement("insert into patiant(username, firstname, lastname, email) values(?, ?, ?, ?)");
            st.setString(1, "e");
            st.setString(2, "e");
            st.setString(3, "E");
            st.setString(4, "E");
            
            x =st.executeUpdate();
            
        }catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
        
        return x == 1;
    }
    
        //end appointment------------------------------------------------------------------------------------
    
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
    
    
    
    
    
    
    
    
    //-----------------------------------------------doctor login/register-----------------------------------
    
   
    
    public boolean registerDoctor(String docfirstname,String doclastname,String doc_nic,String password,String specialization,String availabledays,String availabletimes,String gender,String aboutme){
        int x = 0;
        
        try{
            
            PreparedStatement st = createConnection().prepareStatement("insert into doctor( docfirstname, doclastname, doc_nic, password, specialization, availabledays, availabletimes, gender, aboutme) values(?, ?, ?, ?, ?, ?, ?, ?, ?)");
            st.setString(1, docfirstname);
            st.setString(2, doclastname);
            st.setString(3, doc_nic);
            st.setString(4, password);
            st.setString(5, specialization);
            st.setString(6, availabledays);
            st.setString(7, availabletimes);
            st.setString(8, gender);
            st.setString(9, aboutme);
            
            x =st.executeUpdate();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return x == 1;
    }
    
    
    public boolean verifyDoctor(String doc_nic,String password) throws ClassNotFoundException, SQLException{
        boolean verified=false;
        
        PreparedStatement ps = createConnection().prepareStatement("SELECT * FROM doctor WHERE doc_nic = ?");
        ps.setString(1, doc_nic);
        ResultSet rs = ps.executeQuery();
        
        if(rs.next() && password.equals(rs.getString("password"))){
            verified= true;
        }
        
        return verified;
    
    }
    
    
 //------------------------------------------end of doctor register/login---------------------------------------------  
     
    public boolean apintmentss(String docid, String patientid, String date, String message){
        int x = 0;
        
        try{
            
            PreparedStatement st = createConnection().prepareStatement("insert into appointment(docid, patientid, date, message) values(?, ?, ?, ?)");
            st.setString(1, docid);
            st.setString(2, patientid);
            st.setString(3, date);
            st.setString(4, message);
      
            x =st.executeUpdate();
            
        }catch(Exception e){
            e.printStackTrace();
        }
        
        return true;
    }
    
    
    
    //------------------------------------------session management stuffs--------------------------------------------- 
    
    public String getidusingemail(String email) throws ClassNotFoundException, SQLException{
        //String idr = null;
        PreparedStatement ps = createConnection().prepareStatement("SELECT * FROM patiant WHERE email = ?");
        ps.setString(1, email);
        ResultSet rs = ps.executeQuery();
        
             while (rs.next())
              {
                  String idr = rs.getString("id");
                  
      
                  return idr;
              }
        return "0";
        
        
    
    }
    
        public String getFirstNameUsingId(String id) throws ClassNotFoundException, SQLException{
        //String idr = null;
        PreparedStatement ps = createConnection().prepareStatement("SELECT * FROM patiant WHERE id = ?");
        ps.setString(1, id);
        ResultSet rs = ps.executeQuery();
        
             while (rs.next())
              {
                  String idr = rs.getString("firstname");
                  
      
                  return idr;
              }
        return "0";
        
        
    
    }
    
         public String getLaststNameUsingId(String id) throws ClassNotFoundException, SQLException{
        //String idr = null;
        PreparedStatement ps = createConnection().prepareStatement("SELECT * FROM patiant WHERE id = ?");
        ps.setString(1, id);
        ResultSet rs = ps.executeQuery();
        
             while (rs.next())
              {
                  String idr = rs.getString("lastname");
                  
      
                  return idr;
              }
        return "0";
        
        
    
    }
    
    
         
      public String getfullpatientNameUsingId(String id) throws ClassNotFoundException, SQLException{
        //String idr = null;
        PreparedStatement ps = createConnection().prepareStatement("SELECT * FROM patiant WHERE id = ?");
        ps.setString(1, id);
        ResultSet rs = ps.executeQuery();
        
             while (rs.next())
              {
                  String idr = rs.getString("firstname");
                  String idr2 = rs.getString("lastname");
                   String idr3=idr+" "+idr2;
      
                  return idr3;
              }
        return "0";
        
        
    
    }
        
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
         
    
    
    public String getfulDocNameUsingId(String id) throws ClassNotFoundException, SQLException{
        //String idr = null;
        PreparedStatement ps = createConnection().prepareStatement("SELECT * FROM doctor WHERE docid = ?");
        ps.setString(1, id);
        ResultSet rs = ps.executeQuery();
        
             while (rs.next())
              {
                  String idr = rs.getString("docfirstname");
                  String idr2 = rs.getString("doclastname");
                  String idr3=idr+" "+idr2;
                  return idr3;
              }
        return "0";
        
        
    
    }
    
    
    
       public int getNumofAppointmentFordayUsingId(String id,String day) throws ClassNotFoundException, SQLException{
        //String idr = null;
        PreparedStatement ps = createConnection().prepareStatement("SELECT COUNT(appointmentid) FROM appointment WHERE docid = ?AND date=?");
        ps.setString(1, id);
        ps.setString(2, day);
               ResultSet rs = ps.executeQuery();
        
             while (rs.next())
              {
                  int numberOfRows = rs.getInt(1);
                  return numberOfRows;
              }
        return 0;
        
        
    
    }
    
    
    
    
    
    
    
    
    
    
    
     //------------------------------------------ doc session management stuffs--------------------------------------------- 
    
    
    public String getdocidusingnic(String doc_nic) throws ClassNotFoundException, SQLException{
        //String idr = null;
        PreparedStatement ps = createConnection().prepareStatement("SELECT * FROM doctor WHERE doc_nic = ?");
        ps.setString(1, doc_nic);
        ResultSet rs = ps.executeQuery();
        
             while (rs.next())
              {
                  String idr = rs.getString("docid");
                  
      
                  return idr;
              }
        return "0";
        
        
    
    }
    
    
    
        public boolean addToHistory(String patientid, String docid, String symptoms, String prescription, String date){
        int x = 0;
        
        try{
            
            PreparedStatement st = createConnection().prepareStatement("insert into phistory(patientid, docid, symptoms, prescription, date) values(?, ?, ?, ?, ?)");
            st.setString(1, patientid);
            st.setString(2, docid);
            st.setString(3, symptoms);
            st.setString(4, prescription);
            st.setString(5, date);
            x =st.executeUpdate();
            
        }catch(ClassNotFoundException | SQLException e){
        }
        
        return x == 1;
    }
    
    
    
    
    
  
         public String getadminidUsingemail(String id) throws ClassNotFoundException, SQLException{
        //String idr = null;
        PreparedStatement ps = createConnection().prepareStatement("SELECT * FROM patiant WHERE id = ?");
        ps.setString(1, id);
        ResultSet rs = ps.executeQuery();
        
             while (rs.next())
              {
                  String idr = rs.getString("lastname");
                  
      
                  return idr;
              }
        return "0";
        
        
    
    }  
    
    
    
    
       
         public String getadminidUsmail(String email) throws ClassNotFoundException, SQLException{
        //String idr = null;
        PreparedStatement ps = createConnection().prepareStatement("SELECT * FROM admin WHERE email = ?");
        ps.setString(1, email);
        ResultSet rs = ps.executeQuery();
        
             while (rs.next())
              {
                  String idr = rs.getString("username");
                  
      
                  return idr;
              }
        return "0";
        
         
         
    
        
         
         
         
         
         
       
        
        
    
    }  
    
      
         
         
        public int admingetNumofdoctors() throws ClassNotFoundException, SQLException{
        //String idr = null;
        PreparedStatement ps = createConnection().prepareStatement("SELECT COUNT(docid) FROM doctor");
               ResultSet rs = ps.executeQuery();
        
             while (rs.next())
              {
                  int numberOfRows = rs.getInt(1);
                  return numberOfRows;
              }
        return 0;
        
        
    
    }
    
          
         
           
        public int admingetNumofpatients() throws ClassNotFoundException, SQLException{
        //String idr = null;
        PreparedStatement ps = createConnection().prepareStatement("SELECT COUNT(id) FROM patiant");
               ResultSet rs = ps.executeQuery();
        
             while (rs.next())
              {
                  int numberOfRows = rs.getInt(1);
                  return numberOfRows;
              }
        return 0;
        
        
    
    }
         
         
         
         
         
         
   //----------------------------------------+++++++---------------------------------------------------------------------      
         
         
      
        public boolean deleteappointment(String apid){
        int x = 0;
        
        try{
            
            PreparedStatement st = createConnection().prepareStatement("DELETE FROM appointment WHERE appointmentid = ?;");
            st.setString(1, apid);
            x =st.executeUpdate();
            
        }catch(ClassNotFoundException | SQLException e){
        }
        
        return x == 1;
    }
    
       
       
       
     //-----------------------------------history ---------------------------  
       
       
       
       
       
       
             
        public boolean deletehistory(String hisd){
        int x = 0;
        
        try{
            
            PreparedStatement st = createConnection().prepareStatement("DELETE FROM phistory WHERE hisid = ?;");
            st.setString(1, hisd);
            x =st.executeUpdate();
            
        }catch(ClassNotFoundException | SQLException e){
        }
        
        return x == 1;
    }
    
       
       
       
       
       
       
       
        
     //-----------------------------------history ---------------------------  
       
       
       
       
       
       
             
        public boolean deletedoc(String doc){
        int x = 0;
        
        try{
            
            PreparedStatement st = createConnection().prepareStatement("DELETE FROM doctor WHERE docid = ?;");
            st.setString(1, doc);
            x =st.executeUpdate();
            
        }catch(ClassNotFoundException | SQLException e){
        }
        
        return x == 1;
    }
    
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
    
}


 
    
  