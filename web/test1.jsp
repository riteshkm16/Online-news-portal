<%-- 
    Document   : test1
    Created on : Dec 13, 2017, 9:44:51 PM
    Author     : Shikha
--%>

<%@page import="java.util.Enumeration"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        <%
        
            
            
        String uname=request.getParameter("name");
    
        out.println(uname);
        %>
</html>
