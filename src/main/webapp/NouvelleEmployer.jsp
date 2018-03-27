<%-- 
    Document   : NouvelleEmployer
    Created on : 27 mars 2018, 11:49:34
    Author     : Formation
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nouvelle employer</title>
    </head>
    <body>
        <h1>Ajouter un Nouvelle employer</h1>
        <p>
            <form method="post" action="AjouterEmployer">
                Saisir un nouvelle employer<br />
                ---------------------------------<br />
                <label for="nameEmploerForm" >Nom : <input type="test" name="nameEmploer" id="nameEmploerForm" /></label><br />
                <label for="MatriculEmploerForm" >Matricul : <input type="test" name="MatriculEmploer" id="MatriculEmploerForm" /></label><br />
                <input type="submit" value="Envoyer" />
            </form>
        </p>
    </body>
</html>
