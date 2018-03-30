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
        <form method="get">
            <div>
                Choisissez l'employer à modifier<br />
                --------------------------------<br />

                <%                    {
                        int ind = 0;
                        for (Employer unEmployer : EmployerService.showAllEmployees()) {
                            ind++;
                %>
                <div class="Employer">
                    <label for="radio<%= ind%>EmployerEname"> Nom : <%= unEmployer.getEname()%> </label><br />
                    <label for="radio<%= ind%>EmployerEnumber"> Matricule : <%= unEmployer.getEnumber()%> </label><br />
                    <input name="radioEmployer" id="radioEmployer<%= ind%>" type="radio" value="<%= unEmployer.getId()%>" > <br />
                </div>
                ----------------<br />
                <%
                        }
                    }
                %>
                <br />
                <input type="submit" formaction="modifierEmployer.jsp" value="Modifier" /> 
                <input type="submit" formaction="SuprimerEmplyoer.jsp" value="Suprimer" />
                <br />
            </div>
        </form>
    </body>
</html>
