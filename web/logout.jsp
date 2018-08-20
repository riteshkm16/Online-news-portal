<%-- 
    Document   : logout
    Created on : Dec 17, 2017, 6:57:43 PM
    Author     : Shikha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <body>
    <%
    
        
        
        try{
       
            
        session.setAttribute("login","false");
        session.invalidate();
        out.println("logout");
        }
        catch(Exception e)
        {
        out.print("error occurred");
        response.sendRedirect("error,jsp");
        }            

    
    %>
    
    
    
    </body>
</html>
