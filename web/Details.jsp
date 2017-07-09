<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
	<meta charset="utf-8"/>
        <link rel="shortcut icon" href="favicon.ico" />
	<link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

        <!-- Latest compiled JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

		<title>
		Test Verein
		</title>

	</head>

    <body>
        <nav class="navbar">
            <div class="container-fluid">
              <div class="navbar-header">
                <a class="navbar-brand" href="GetData?action=all"><img id="logo" title="Logo des Vereins" alt="Logo" src="img/logo.png"></a>
              </div>
                <button class="btn btn-success navbar-btn" onclick = "location.href='GetData?action=all'">Vereinsnachrichten-Index</button>
                <button class="btn btn-success navbar-btn" onclick = "location.href='vorstand.html'">Vorstand</button>
                <button class="btn btn-success navbar-btn" onclick = "location.href='formular.jsp'">Kontakt</button>
            </div>
            </nav>

        <div align="center">
            
            <jsp:useBean id="Kundendaten" class="Model.Kundendaten" scope="session" />
            <jsp:setProperty name="Kundendaten" property="vorname"/>
            <jsp:setProperty name="Kundendaten" property="nachname"/>
            <jsp:setProperty name="Kundendaten" property="datum"/>
            <jsp:setProperty name="Kundendaten" property="grund"/>
            <jsp:setProperty name="Kundendaten" property="text"/>
            
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
