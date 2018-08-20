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
     <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>  

    </head>
    <body>
        <h3>correspondants details </h3>
        <br><br>
        <%
    
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root", "1234");
        Statement st=con.createStatement();
      %>
      <div class="container">
          <div class="jumbotron">
      <table class="table-bordered table-info">
      <%
ResultSet rs=st.executeQuery("Select * from cor");
      
        out.print("<tr>");
        out.print("<td>");
        out.print(" JOB ID ");
        out.print("</td><td>");
        out.print(" NAME ");
        out.print("</td><td>");
        out.print(" Email ");
        out.print("</td><td>");
        out.print(" Mobile ");
        out.print("</td><td>");
        out.print("Alternate mobile ");
        out.print("</td><td>");
        out.print(" Address ");
        out.print("</td><td>");
        out.print(" JOining date ");
        out.print("</td><td>");
        out.print(" COUNT ");
        out.print("</td><td>");
        out.print("Password");
        out.print(" </td> ");
        out.print("</tr>");      




while(rs.next())
{
    
%><tr><%
        out.print("<td>");
        out.print(rs.getString(1));
        out.print("</td><td>");
        out.print(rs.getString(2));
        out.print("</td><td>");
        out.print(rs.getString(3));
        out.print("</td><td>");
        out.print(rs.getString(4));
        out.print("</td><td>");
        out.print(rs.getString(5));
        out.print("</td><td>");
        out.print(rs.getString(6));
        out.print("</td><td>");
        out.print(rs.getString(7));
        out.print("</td><td>");
        out.print(rs.getString(8));
        out.print("</td><td>");
        out.print(rs.getString(9));
        out.print("</td>");

%></tr><%
}   

      %>
        
      </table> 
      </div>   
      </div>
       <% 
        
        
        
        
        
    }

catch(Exception e)
{
    out.println("Error occured");
    response.sendRedirect("error.jsp");  
}
%>
        
	  <script src="bootstrap/js/jquery.min.js"></script>  
	  <script src="bootstrap/css/bootstrap.min.js"></script>  
        
    </body>
</html>
