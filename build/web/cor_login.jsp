<%-- 
    Document   : admin_login
    Created on : Dec 12, 2017, 9:34:42 AM
    Author     : Ritesh
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Login Page</title>
</head>


<body>
	<div id="container">
        <form action="cor_login_verify.jsp">
            <label for="loginmsg" style="color:hsla(0,100%,50%,0.5); font-family:"Helvetica Neue",Helvetica,sans-serif;"><?php  echo @$_GET['msg'];?></label>
            <label for="email">email:</label>
            <input type="text" id="email" name="email"><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password">
                 <div id="lower">
                <input type="submit" value="Login">
            </div>
        </form>
    </div>
    
</body>
</html>