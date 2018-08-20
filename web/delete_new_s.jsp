<%-- 
    Document   : add_news_s
    Created on : Dec 12, 2017, 4:07:42 PM
    Author     : Ritesh
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>news</title>
    </head>
    <body>
        <h3>DELETING YOUR NEWS</H3>
        <%
            java.util.Date d= new java.util.Date();
            String da=d.toString();
            out.println("Current date and Time is "+da);
        
        
        String n_id=request.getParameter("n_id");
        out.println(n_id);
        try
        {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root", "1234");
        Statement st=con.createStatement();

        st.executeUpdate("DELETE FROM ne WHERE neid='"+n_id+ "'");
    
            
            out.println("news deleted");
        }
        catch(Exception e)
        {
            out.println("Error occurred");
        }
        
        
        
        
        
        
        
        
        
        
        %>
    </body>
</html>
