<%-- 
    Document   : profile_cor
    Created on : Dec 17, 2017, 6:58:01 PM
    Author     : Shikha
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>correspondant</title>
       
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
        
            
          try
            {    
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root", "1234");
                Statement st=con.createStatement();
                
             String sqlQ="SELECT * FROM cor where cemail="+'"'+uemail+'"';  
             ResultSet rs=st.executeQuery(sqlQ);
             if(rs.next())
             {
        %><h2> PROFILE </h2><%        
                 out.print("job id : "+rs.getString(1));%><br><%
                 out.print("NAME : "+rs.getString(2));%><br><%
                 out.print("EMAIL ID : "+rs.getString(3));%><br><%
                 out.print("CONTACT :"+rs.getString(4));%><br><%
                 out.print("MOBILE NO : "+rs.getString(5));%><br><%
                 out.print("ADDRESS : "+rs.getString(6));%><br><%
                 out.print("JOIN DATE : "+rs.getString(7));%><br><%
                 out.print("COUNT : "+rs.getString(8));%><br><%
                 
                 
                 
             }
             else
             {
                 out.println("ERROR");
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
