<%-- 
    Document   : SessionTestRead
    Created on : 30 mars 2018, 14:15:47
    Author     : Formation
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    HttpSession userSession = request.getSession(true);
    String textSaisie = "";
    textSaisie = (String)userSession.getAttribute("textSaisie");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Session Read</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        Session <br />
        --------------------------------<br />
        textSaisie : <%=textSaisie %><br />
    </body>
</html>
