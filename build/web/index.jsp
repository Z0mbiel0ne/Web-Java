<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
  <head>
  <meta charset="utf-8"/>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <title> Test Verein </title>
  </head>
  <body>
      <nav>
        <a href="index.jsp"><img id="logo" title="Logo des Vereins" alt="Logo" src="img/logo.png"></a>
        <div id = "navigation">
          <a class="knopf gro�" href="index.jsp"> Vereinsnachrichten-Index</a>
          <a class="knopf gro�" href="vorstand.html"> Vorstand</a>
          <a class="knopf gro�" href="formular.jsp">Kontakt</a> 
        </div> 
      </nav>
    <br>
    <div>
      <table class="zentriert" style="width: 319px; height: 70px; text-align: center">
        <tbody>
          <tr>
            <th>�berschrift</th>
            <th>Datum</th>
            <th>Text</th>
          </tr>
          <c:forEach var="item" items="${KundenListe}">
            ${item} <br />
          </c:forEach> 
        </tbody>
      </table>
    </div>
  </body>
</html>
