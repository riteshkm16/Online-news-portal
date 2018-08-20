<%-- 
    Document   : home
    Created on : Dec 12, 2017, 11:50:25 AM
    Author     : Ritesh
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	  <head>  
	     <title>home</title>  
	     <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>  
	  </head>  
	  <body>  





<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">    
		
<div class="container">

	
	
	
		<a class="navbar-brand" href="#"><img src="images/logo.png" alt="logo"></a>    
			<ul class="navbar-nav">      
				<li class="nav-item">        
						<a class="nav-link" href="#">HOME</a>
    			</li>  
		
				<li class="nav-item">        
						<a class="nav-link" href="national.jsp">NATIONAL</a>
    			</li>  
				
				<li class="nav-item">        
						<a class="nav-link" href="international.jsp">INTERNATIONAL</a>
    			</li>  
				
				<li class="nav-item">        
						<a class="nav-link" href="sports.jsp">SPORTS</a>
    			</li>  
				
				<li class="nav-item">        
						<a class="nav-link" href="technology.jsp">TECHNOLOGY</a>
    			</li>  

    			<li class="nav-item">        
    					<a class="nav-link" href="others.jsp">OTHERS</a>     
         		</li>   
    			<li class="nav-item">        
    					<a class="nav-link" href="contact.jsp">CONTACT US</a>     
         		</li>   
    	
    		</ul> 




</div>
</nav>  





<div>
<br>
<br>
<br>
<%
   
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root", "1234");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("Select * from ne");

      
        
while(rs.next())
{
  %>    
<div class="container">
	
	<div class="jumbotron">
            <h3><strong><%=rs.getString(2) %></strong></h3>
		<h5>
                    <% 
                    out.println(" by "+ rs.getString(11));
                    String lastUpdate=rs.getString(13);
                    lastUpdate=lastUpdate.substring(4,10)+" , "+lastUpdate.substring(24);
                    out.println(" "+lastUpdate);
                    %>
                </h5>    
		<img width="100%" src="
                     <%
                     String imageLink=rs.getString(4);
                     
                     if(imageLink=="")
                     {
                         imageLink="images/default.png";
                     }
                     out.println(imageLink);
                     %>
                " alt="not available">

                
                
		<br>
                <p>
                <% 
                out.println(rs.getString(3));
                %>
                </p>
                
                <a href="
                   <%
                   //remark is kink to read more
                   out.println(rs.getString(10));
                   %>
                   "><p align="right">more</p>
                </a>
	</div>
<br>
<br>
</div>

                        
<%                        
}   




        
    }
    catch(Exception e)
    {
    out.println("ecxeption occured");
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
%>   




</div>





	  <script src="bootstrap/js/jquery.min.js"></script>  
	  <script src="bootstrap/css/bootstrap.min.js"></script>  
	  </body>  
	</html>  