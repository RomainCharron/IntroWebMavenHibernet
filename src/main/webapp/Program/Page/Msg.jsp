<%-- 
    Document   : Msg
    Created on : 29 mars 2018, 12:00:43
    Author     : Formation
--%>
<% 
    // Initialisation des Varriable
    int nbValeur = 0;
    
    // Gestion des valeurs à récupérée
    try {
            nbValeur = Integer.parseInt(request.getParameter("nbValeur"));
        } catch (Exception e) {
        }
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
