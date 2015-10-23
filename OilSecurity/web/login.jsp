<%--
Document   : login
Created on : Oct 23, 2015, 10:49:44 AM
Author     : gomezhyuuga
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>JSP Page</title>
  </head>
<body>
  <h1>LOGIN!</h1>

  <form method="POST" action="j_security_check">
    <label for="j_username">Usuario</label>
    <input type="text" name="j_username" id="j_username" />
    <label for="j_password">Contraseña</label>
    <input type="password" name="j_password" id="j_password"/>
    <button type="submit">Login</button>
  </form>
</body>
</html>
