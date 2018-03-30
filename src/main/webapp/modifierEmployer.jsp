<%-- 
    Document   : modifierEmployer
    Created on : 29 mars 2018, 14:52:34
    Author     : Formation
--%>

<%@page import="com.m2i.charron.service.EmployerService"%>
<%@page import="com.m2i.charron.hibernet.Employer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int radioEmployer = 0;
    boolean ifErrorIni = false;
    Exception ErrorIniException = new Exception("pas d'exepion");
    Employer unEmployer;

    radioEmployer = Integer.parseInt(request.getParameter("radioEmployer"));
    unEmployer = EmployerService.showEmployeesById(radioEmployer);
    


%>
<!--
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ERROR !!!</title>
    </head>
    <body>

        <h1>ERROR !!!</h1>
        <div>
            <form method="post" action="AjouterEmployer">
                ERROR !!!<br />
                ---------------------------------<br />
<%= ErrorIniException%>
</form>
</div>
</body>
</html>
--->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modifier employer</title>
    </head>
    <body>

        <h1>Modifier employer</h1>
        <div>
            <form method="post" action="runEmployer.jsp">
                Saisir un nouvelle employer<br />
                ---------------------------------<br />
                <input type="hidden" name="idEmploer" value="<%= radioEmployer%>"/>
                <label for="nameEmploerForm" >Nom : <input type="text" name="nameEmploer" id="nameEmploerForm" value="<%= unEmployer.getEname()%>"/></label><br />
                <label for="MatriculEmploerForm" >Matricul : <input type="text" name="MatriculEmploer" id="MatriculEmploerForm" value="<%= unEmployer.getEnumber()%>"/></label><br />
                <input type="submit" value="Envoyer" />
            </form>
        </div>
    </body>
</html>