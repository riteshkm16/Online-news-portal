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
        <h3>PUBLISHING YOUR NEWS</H3>

        <%
        String uname=(String)session.getAttribute("username");
        String uemail=(String)session.getAttribute("useremail");
        String islogin=(String)session.getAttribute("login");
        
        if(islogin!="true")
        {
            response.sendRedirect("cor_login.jsp");
        }
        out.print("<h1>Hello "+uname+"!</h1>");
        
            
              
            java.util.Date d= new java.util.Date();
            String da=d.toString();
            out.println("Current date and Time is "+da);
        
        
        String n_id=request.getParameter("n_id");
        String n_title=request.getParameter("n_title");
        String n_content=request.getParameter("n_content");
        String n_link=request.getParameter("n_link");

        String op1=request.getParameter("tn");
        String op2=request.getParameter("ti");
        String op3=request.getParameter("ts");
        String op4=request.getParameter("tt");
        String op5=request.getParameter("to");
        
        String n_remark=request.getParameter("n_remark");
        String author=uname;
        out.println("author is"+uname);
        String firstupdate=da;
        String lastupdate=da;
if(n_link=="")
{
    n_link="images/default.png";
}
if(n_remark=="")
{
    n_remark="#";
}
        
        int n1=1,i1=1,s1=1,t1=1,o1=1;
        if(op1==null) {n1=0;}
        if(op2==null) {i1=0;}
        if(op3==null) {s1=0;}
        if(op4==null) {t1=0;}
        if(op5==null) {o1=0;}
        
        out.println
        (
        "<br>"+n_id+
        "<br>"+n_title+
        "<br>"+n_content+
        "<br>"+n_link+
        "<br>"+op1+
        "<br>"+op2+
        "<br>"+op3+
        "<br>"+op4+
        "<br>"+op5+
        " "+n1+        
        " "+i1+        
        " "+s1+        
        " "+t1+        
        " "+o1+        
                
        "<br>"+n_remark+
        "<br>"+author+
        "<br>"+firstupdate+
        "<br>"+lastupdate
        );
        
        
        try
        {
              Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root", "1234");
        Statement st=con.createStatement();
        st.executeUpdate("insert into ne (neid,netitle,necontent,nelink,netna,netni,netns,netne,netno,neremark,neauth,nefirp,nelupd) "
  + "values('"+n_id+"','"+n_title+"','"+n_content+"','"+n_link+"','"+n1+"','"+i1+"','"+s1+"','"+t1+"','"+o1+"','"+n_remark+"','"+author+"','"+firstupdate+"','"+lastupdate+"')");
     
        
        
        
        out.println("<br>NEWS added successfully <br>");
        }
        catch(Exception e)
        {
            out.println("Error occurred");
        }
        
        
        
        
        
        
        
        
        
        
        %>
    </body>
</html>
