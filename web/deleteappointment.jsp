<%-- 
    Document   : deleteappointment
    Created on : 02-May-2021, 07:12:15
    Author     : lalin
--%>
<%@page import="model.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <%   
  
String appimentids=request.getParameter("appimentids");    

DBCon con4 = new DBCon();

boolean name1 =con4.deleteappointment(appimentids);


if(name1==true){
    out.print("appointment deleted");  
}
else{
out.print("request not successful");  

}










  
%>
