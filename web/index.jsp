<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
  </body>
</html>
