<%-- 
    Document   : cor_dashboard
    Created on : Dec 12, 2017, 11:57:05 AM
    Author     : Shikha
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>
    </head>
    <body>
        <%
        String uname=(String)session.getAttribute("username");
        String uemail=(String)session.getAttribute("useremail");
        String islogin=(String)session.getAttribute("login");
        
        if(islogin!="true")
        {
            response.sendRedirect("cor_login.jsp");
        }
        out.print("<h1>Hello "+uname+"!</h1>");
        
        %>
        
        
        
    
     ADD NEWS:<a href="add_news.jsp">link</a><br> 
     SEE PROFILE:<a href="profile_cor.jsp">link</a><br>
     LOGOUT:<a href="logout.jsp">link</a>
     CHANGE PASSWORD:<a href="changepassword.jsp">link</a>
    </body>
</html>
