<%-- 
    Document   : Details
    Created on : 22.05.2017, 16:21:42
    Author     : Marcel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8"/>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <title>
            Test Verein
        </title>

    </head>

    <body>
        <nav>
            <a href="index.html"><img id="logo" title="Logo des Vereins" alt="Logo" src="img/logo.png"></a>
            <div id = "navigation">
                <a class="knopf groß" href="index.html"> Vereinsnachrichten-Index</a>
                <a class="knopf groß" href="vorstand.html"> Vorstand</a>
                <a class="knopf groß" href="formular.jsp">Kontakt</a>
            </div> 
        </nav>

        <div align="center">
            <jsp:useBean id="Kundendaten" class="testBeans.Kundendaten" scope="session" />
            <jsp:setProperty name="Kundendaten" property="vorname"/>
            <jsp:setProperty name="Kundendaten" property="nachname"/>
            <jsp:setProperty name="Kundendaten" property="datum"/>
            <jsp:setProperty name="Kundendaten" property="grund"/>
            <jsp:setProperty name="Kundendaten" property="text" value="test"/>
            
            <ul >
                <li style="list-style: none">Vorname: <jsp:getProperty name="Kundendaten" property="vorname"/></li>
                <li style="list-style: none">Nachname: <jsp:getProperty name="Kundendaten" property="nachname"/></li>
                <li style="list-style: none">Datum: <jsp:getProperty name="Kundendaten" property="datum"/></li>
                <li style="list-style: none">Grund: <jsp:getProperty name="Kundendaten" property="grund"/></li>
                <li style="list-style: none">Text: <jsp:getProperty name="Kundendaten" property="text"/></li>
            </ul>
        </div>
    </body>

</html>
