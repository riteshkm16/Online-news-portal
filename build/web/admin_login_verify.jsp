<%-- 
    Document   : admin_login_verify
    Created on : Dec 12, 2017, 9:39:36 AM
    Author     : Ritesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p>@ verify login</p>
	<%
            response.sendRedirect("admin_dashboard.jsp");  
	%>  

    </body>
</html>
