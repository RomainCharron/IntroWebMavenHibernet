<%-- 
    Document   : runEmployer
    Created on : 29 mars 2018, 16:10:11
    Author     : Formation
--%>

<%@page import="com.m2i.charron.hibernet.Employer"%>
<%@page import="com.m2i.charron.service.EmployerService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String ename = request.getParameter("nameEmploer");
    String enumber = request.getParameter("MatriculEmploer");
    int idEmploer = Integer.parseInt(request.getParameter("idEmploer"));
    Employer unEmployer = EmployerService.showEmployeesById(idEmploer);
    EmployerService.updateEmployees(idEmploer, ename, enumber);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modification Employer</title>
    </head>
    <body>
        <h1>Modification Employer</h1>
        --------------------------------<br />
        L'employer à bien été modifier<br />
        <a href="index.html">retour index</a>
        <!-- ---------------- -->
    </body>
</html>
