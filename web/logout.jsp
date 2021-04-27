<%-- 
    Document   : logout
    Created on : 27-Apr-2021, 14:07:26
    Author     : lalin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession"%>

<%
        request.getSession().removeAttribute("patientids");
        response.sendRedirect("index.html");
        
%>
