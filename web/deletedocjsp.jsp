<%-- 
    Document   : deletedocjsp
    Created on : 02-May-2021, 12:08:22
    Author     : lalin
--%>
<%@page import="model.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <%   
  
String appimentids=request.getParameter("docid");    

DBCon con4 = new DBCon();

boolean name1 =con4.deletedoc(appimentids);


if(name1==true){
    response.sendRedirect("admindocview.jsp");  
}
else{
out.print("request not successful");  

}










  
%>
