<%-- 
    Document   : SuprimerEmplyoer
    Created on : 30 mars 2018, 09:40:08
    Author     : Formation
--%>

<%@page import="com.m2i.charron.service.EmployerService"%>
<%@page import="com.m2i.charron.hibernet.Employer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int radioEmployer = 0;
    Employer unEmployer;

    radioEmployer = Integer.parseInt(request.getParameter("radioEmployer"));
    unEmployer = EmployerService.showEmployeesById(radioEmployer);

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Supretion employer</title>
    </head>
    <body>

        <h1>Supretion employer</h1>
        <div>
            <form method="get">
                Voulet vous suprimer cette employer ?<br />
                ---------------------------------<br />
                Id : <%=unEmployer.getId() %><br />
                Nom : <%=unEmployer.getEname() %><br />
                Matricule : <%=unEmployer.getEnumber() %><br />
                <input type="hidden" value="<%=unEmployer.getId() %>" name="Eid" />
                <input type="submit" value="Oui" formaction="runSuprimerEmplyoer.jsp"> 
                <input type="submit" value="non" formaction="modifierEmployer.jsp">
            </form>
    </body>
</html>
