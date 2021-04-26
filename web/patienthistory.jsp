<%-- 
    Document   : patienthistory
    Created on : 26-Apr-2021, 10:26:14
    Author     : lalin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="model.DBCon"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        
        
        
        
        
                                                    
                                                                           
                                             
        <%
            if(request.getParameter("docid") != null)
            {
            if(!request.getParameter("docid").equals(" "))
                    {
                        String dic =request.getParameter("docid");
                        
                      %><div class="row"><%  
                        
                        
                        
                            try {
                          
                                DBCon con = new DBCon();
                                PreparedStatement ps = con.createConnection().prepareStatement("SELECT * FROM doctor WHERE docid = ?"); 
                                ps.setString(1, dic);
                                ResultSet rs = ps.executeQuery();
                                while (rs.next()) {
                         %>
                        <div >
                    

                                
                  
               
            <div class="col-lg-14" style="
    margin-bottom: 5%; margin-top: 5%"  >
            <div class="member d-flex align-items-start">
                <div class="pic">
                    <img src="assets/img/doctors/doctors-1.jpg" class="img-fluid" alt=""></div>
              <div class="member-info">
                <h4><%=rs.getString(3)%> <%=rs.getString(4)%></h4>
                <span><%=rs.getString(5)%></span>
                <p><%=rs.getString(2)%></p>
                 <p><%=rs.getString(2)%></p>
                 <p><%=rs.getString(5)%></p>
                 <p><%=rs.getString(6)%></p>
                 <p><%=rs.getString(7)%></p>
                 <p><%=rs.getString(8)%></p>
             
                
            </div>
          </div>
                                
                              
                           
      
                   
                                
                                
                                
                                
                                
                                
                                
                                <%
                                        }
                                       // con.close();
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                    }
                                %>
                               
                        
                          </div>   
                        
                        
                         <%
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                    }
            else{
                out.println("<html> DEDICATED TOWARDS ENSURING THE BEST SERVICE </html>");
            }
            
            }
            else{
                out.println("<html> DEDICATED TOWARDS ENSURING THE BEST SERVICE </html>");
            }
            %>                                      
                                                   
      

                                             
                                             
                                             
                                             
                                             
                                 
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
    </body>
</html>
