<%-- 
    Document   : add_cor_v
    Created on : Dec 12, 2017, 12:15:12 PM
    Author     : Ritesh
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <%
            String c_id=request.getParameter("cor_id");
            String c_name=request.getParameter("cor_name");
            String c_email=request.getParameter("cor_email");
            String c_mobile=request.getParameter("cor_mobile");
            String c_amobile=request.getParameter("cor_a_mobile");
            String c_address=request.getParameter("cor_address");
            String c_joindate="0000000";///use java function
            int c_count=0;
            String c_pass=request.getParameter("cor_pass");

            
out.println(c_id+"<br>");
out.println(c_name+"<br>");
out.println(c_email+"<br>");
out.println(c_mobile+"<br>");
out.println(c_amobile+"<br>");
out.println(c_address+"<br>");
out.println(c_joindate+"<br>");
out.println(c_count+"<br>");
out.println(c_pass+"<br>");
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root", "1234");
        Statement st=con.createStatement();
        
        st.executeUpdate("insert into cor (cid,cname,cemail,cmobile,camobile,caddress,cjoindate,ccount,cpass) "
       + "values('"+c_id+"','"+c_name+"','"+c_email+"','"+c_mobile+"','"+c_amobile+"','"+c_address+"','"+c_joindate+"','"+c_count+"','"+c_pass+"')");
        
    
        
        
    }

catch(Exception e)
{
    out.println("Error occured");
    response.sendRedirect("error.jsp");  
}

    
            
            
            
        %>
        
        
        @ success or failed
        
        
    </body>
</html>
