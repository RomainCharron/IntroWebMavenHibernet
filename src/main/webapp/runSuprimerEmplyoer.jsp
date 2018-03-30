<%-- 
    Document   : runSuprimerEmplyoer
    Created on : 30 mars 2018, 09:55:08
    Author     : Formation
--%>

<%@page import="com.m2i.charron.hibernet.Employer"%>
<%@page import="com.m2i.charron.service.EmployerService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int idEmploer = Integer.parseInt(request.getParameter("Eid"));
    Employer unEmployer = EmployerService.showEmployeesById(idEmploer);
    EmployerService.deleteEmployees(idEmploer);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Supretion Employer</title>
    </head>
    <body>
        <h1>Supretion Employer</h1>
        --------------------------------<br />
        L'employer à bien été Suprimer<br />
        <a href="index.html">retour index</a>
        <!-- ---------------- -->
    </body>
</html>
