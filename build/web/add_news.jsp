<%-- 
  
   

--%>

<%@page import="java.lang.String"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD News</title>
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
        
        
        <h1>ADD news</h1>
        <form action="add_news_s.jsp">
            NEWS ID : <input type="text" name="n_id"><br>
            NEWS TITLE : <input type="text" name="n_title"><br>
            NEWS CONTENT : <input type="text" name="n_content"><br>
            PHOTO LINK : <input type="text" name="n_link"><br>
            TYPE : 
            <br>
             : <input type="checkbox" name="tn">NATIONAL<br>
             : <input type="checkbox" name="ti">INTERNATIONAL<br>
             : <input type="checkbox" name="ts">SPORTS<br>
             : <input type="checkbox" name="tt">TECHNOLOGY<br>
             : <input type="checkbox" name="to">OTHERS<br>
            <br>
            REMARK : <input type="text" name="n_remark"><br>
            <input type="submit" value="PUBLISH">
            
            
        </form>
        
        
        
        
    </body>
</html>
