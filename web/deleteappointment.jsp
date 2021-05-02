<%-- 
    Document   : deleteappointment
    Created on : 02-May-2021, 07:12:15
    Author     : lalin
--%>
<%@page import="model.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <%   
  
String appimentids=request.getParameter("appimentids");    //Getting Session Attribute

DBCon con4 = new DBCon();

boolean name1 =con4.deleteappointment(appimentids);

out.print(""+name1+"");  
%>
