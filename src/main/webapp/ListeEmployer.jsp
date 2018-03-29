<%-- 
    Document   : ListeEmployer
    Created on : 29 mars 2018, 12:15:16
    Author     : Formation
--%>
<%@page import="com.m2i.charron.hibernet.Employer"%>
<%@page import="com.m2i.charron.service.EmployerService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <p>
            Liste des Employer<br />
            --------------------------------<br />
            <%

                for (Employer object : EmployerService.showAllEmployees()) {
            %>
            Nom : <%=object.getEname()%><br />
            Matricule : <%=object.getEnumber()%><br />
            ----------------<br />
            <%
                }
            %>

        </p>
    </body>
</html>
