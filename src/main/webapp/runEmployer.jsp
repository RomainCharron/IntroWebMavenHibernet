<%-- 
    Document   : runEmployer
    Created on : 29 mars 2018, 16:10:11
    Author     : Formation
--%>

<%@page import="com.m2i.charron.service.EmployerService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

            String ename = request.getParameter("nameEmploer");
            String enumber = request.getParameter("MatriculEmploer");
            int idEmploer = Integer.parseInt(request.getParameter("idEmploer"));
            EmployerService.updateEmployees(idEmploer, ename, enumber);
%>
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
