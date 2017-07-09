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

        <div>
            <div style="width: 70%; float: left" align="center">
                <form method="GET" action="GetData" style="display: block;">
                    <fieldset id="fragen">
                        <input type="hidden" name="action" value="form"/>
                            
                        <label>Vorname:</label>
                        <input type="text" name="vorname" autofocus="autofocus" required="required">
                        <br>
                        <label>Nachname:</label>
                        <input type="text" name="nachname" required="required">
                        <br>
                        <label>Datum:</label>
                        <input type="date" name="datum" required="required">
                        <br>
                        <label>Grund:</label>
                        <select name="grund">
                            <option>Sonstiges</option>
                            <option>Feedback</option>
                            <option>Support</option>
                            <option>Kritik</option>
                        </select>
                        <br>
                        <textarea name="text" rows="4" cols="50"></textarea>
                        <br>
                        <div style="width: 100%">
                            <button style="float: left;" class="knopf klein" type="submit">Absenden</button>
                            <button style="float: right;" class="knopf klein" type="reset">Löschen</button>
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
    </body>

</html>
