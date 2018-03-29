<%-- 
    Document   : modifierEmployees
    Created on : 29 mars 2018, 14:13:44
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
    <%

    %>
    <body>
        <h1>Hello World!</h1>
        <form method="get" action="modifierEmployer.jsp">
            <div>
                Choisissez l'employer à modifier<br />
                --------------------------------<br />

                <%                    for (Employer unEmployer : EmployerService.showAllEmployees()) {

                %>
                <div class="Employer">
                    <label for='radio<%= "00"%>EmployerEname'> Nom : <%= unEmployer.getEname()%> </label><br />
                    <label for='radio<%= "00"%>EmployerEnumber'> Matricule : <%= unEmployer.getEnumber()%> </label><br />
                    <input name="radioEmployer" id='radioEmployer<%= "00"%>' type="radio" value='<%= "id"%>' > <br />
                </div>
                ----------------<br />
                <%
                    }
                %>
                <br /><input type="submit" value="Envoyer" /><br />
            </div>
        </form>
    </body>
</html>
