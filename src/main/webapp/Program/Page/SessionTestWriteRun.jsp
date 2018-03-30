<%-- 
    Document   : SessionTestWriteRun
    Created on : 30 mars 2018, 14:47:26
    Author     : Formation
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html><%
    HttpSession userSession = request.getSession(true);
    String textSaisie = "";
    textSaisie = request.getParameter("textSaisieForm");
    userSession.setAttribute("textSaisie", textSaisie);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <a href="SessionTestRead.jsp">Test de lecture</a>
    </body>
</html>
