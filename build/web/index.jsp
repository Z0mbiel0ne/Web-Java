<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8"/>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="shortcut icon" href="favicon.ico" />
        <title>
            Test Verein
        </title>

    </head>
    <body>
        <nav>
            <a href="GetData?action=all"><img id="logo" title="Logo des Vereins" alt="Logo" src="img/logo.png"></a>
            <div id = "navigation">
                <a class="knopf groß" href="GetData?action=all"> Vereinsnachrichten-Index</a>
                <a class="knopf groß" href="vorstand.html"> Vorstand</a>
                <a class="knopf groß" href="formular.jsp">Kontakt</a> 
            </div> 
        </nav>
        <br>
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
    </div>
    <br>
    <div align="center">
        <div id="chatarea" align="left">
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
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="js/script.js">
</script>
</html>
