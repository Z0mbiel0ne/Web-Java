<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8"/>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="shortcut icon" href="favicon.ico" />
        <title>
            Test Verein
        </title>

    </head>
    <body>
            <nav class="navbar" role="navigation">
            <div class="container-fluid">
              <div class="navbar-header">
                    <a class="navbar-brand" href="GetData?action=all"><img id="logo" title="Logo des Vereins" alt="Logo" src="img/logo.png"></a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
              </div>
                <div class="collapse navbar-collapse" id="myNavbar">  
                    <button class="btn btn-success navbar-btn" onclick = "location.href='GetData?action=all'">Vereinsnachrichten-Index</button>
                    <button class="btn btn-success navbar-btn" onclick = "location.href='vorstand.html'">Vorstand</button>
                    <button class="btn btn-success navbar-btn" onclick = "location.href='formular.jsp'">Kontakt</button>
                </div>
            </div>
            </nav>
        <br>
    <div class="col-md-12">
        <div>
            <c:if test="${!NachrichtenListe.isEmpty()}" >
                <table class="zentriert" style="width: 319px; height: 70px; text-align: center">  
                    <tbody>
                        <tr>
                            <th>Überschrift</th>
                            <th>Datum</th>
                            <th>Text</th>
                        </tr>
                        <c:forEach var="item" items="${NachrichtenListe}">
                            <tr>
                                <td>${item.getVorname()}</td>
                                <td>${item.getDatum()}</td>
                                <td><a href="GetData?action=details&id=${item.getID()}">Klick Mich Hart!</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>
            <br>
        <div align="center">
            <div id="chatarea" align="none">
                <ul id="chatlist">

                </ul>
            </div>
            <br>
            <div>
                <textarea  placeholder="Text hie eingeben ... " name="chattext" rows="3" cols="39" id="chattext"></textarea>
            </div>
            <div>
                <input  placeholder="Ihr Name" type="text" name="chatname" id="chatname">
                <a id="counter">150</a>
                <button id="send" class="knopf klein" onclick="send();" disabled >Absenden</button>
            </div>
        </div>
    </div>
</body>
<script src="js/script.js"></script>
</html>
