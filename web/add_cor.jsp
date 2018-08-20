<%-- 
    Document   : add_cor
    Created on : Dec 12, 2017, 12:01:53 PM
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

        <p> add correspondent here</p>
        <h3>Fill following details</h3>
        <form action="add_cor_v.jsp">
           JOB ID : <input type="text" name="cor_id" ><br>
            
           NAME : <input type="text" name="cor_name" ><br>
            
           EMAIL : <input type="text" name="cor_email" ><br>
            
           MOBILE NO : <input type="text" name="cor_mobile" ><br>
           
           ALTERNATE MOBILE NO : <input type="text" name="cor_a_mobile" ><br>
            
           ADDRESS : <input type="text" name="cor_address" ><br>
            
           DATE OF JOINING :<input type="text" name="cor_jdate"><br>
           
           PASSWORD :<input type="password" name="cor_password"> <br>
               <input type="submit" value="submit">
        </form>

    </body>
</html>
