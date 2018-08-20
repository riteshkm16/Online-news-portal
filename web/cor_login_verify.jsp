<%-- 
    Document   : admin_login_verify
    Created on : Dec 12, 2017, 9:39:36 AM
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
        <h1>---login page------</h1>
        <p>@ verify login</p>
	<%
           
            String email=request.getParameter("email");
            String password=request.getParameter("password");
            try
            {    
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root", "1234");
                Statement st=con.createStatement();

             String sqlQ="SELECT * FROM cor where cemail="+'"'+email+'"';  
             ResultSet rs=st.executeQuery(sqlQ);
             if(rs.next())
             {
             String password2=rs.getString(9);
             if(password.equals(password2))
             {
                 out.println("login successful");
                 session.setAttribute("useremail",email);
                 session.setAttribute("login","true");
                 session.setAttribute("username", rs.getString(2));
                 response.sendRedirect("cor_dashboard.jsp");
             }
             else
             {
                 out.println("login failed");
                 %><a href="cor_login.jsp">login again</a><%
             }
             }
             else
             {
                 out.println("login failed");
                 %><a href="cor_login.jsp">login again</a><%    
             }
            }
            catch(Exception e)
            {
            out.println("Exceprtion occurred");
          //  response.sendRedirect("error.jsp");
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        %>  

    </body>
</html>
