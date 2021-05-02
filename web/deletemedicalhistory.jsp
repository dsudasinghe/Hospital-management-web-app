<%-- 
    Document   : deletemedicalhistory
    Created on : 02-May-2021, 09:46:42
    Author     : lalin
--%>

<%@page import="model.DBCon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <%   
  
String hisids=request.getParameter("hisids");    

DBCon con4 = new DBCon();

boolean name1 =con4.deletehistory(hisids);


if(name1==true){
    out.print("history deleted");  
}
else{
out.print("request not successful");  

}










  
%>
