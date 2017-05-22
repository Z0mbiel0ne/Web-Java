<%-- 
    Document   : Test
    Created on : 22.05.2017, 12:23:56
    Author     : Marcel
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
﻿<html>

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
          <a class="knopf groß" href="index.html">Vereinsnachrichten-Index</a>
          <a class="knopf groß" href="vorstand.html">Vorstand</a>
          <a class="knopf groß" href="formular.jsp">Kontakt</a> 
        </div> 
      </nav>

		<br>
		
		<div>
				<div style="width: 15%; float: left">
					<div align="center">
                                            <script type="text/javascript">
                                                google_ad_client = "ca-pub-8289615059669960";
                                                google_ad_slot = "1773028138";
                                                google_ad_width = 300;
                                                google_ad_height = 600;
                                            </script>
                                            <!-- Werbung -->
                                            <script type="text/javascript"
                                            src="//pagead2.googlesyndication.com/pagead/show_ads.js">
                                            </script>
                                        </div>
				</div>
				<div style="width: 70%; float: left" align="center">
						<form method="GET" style="display: block;">
								<fieldset id="fragen">
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
                                    <jsp:useBean id = "Kundendaten" class = "testBeans.Kundendaten" />
                                    <jsp:setProperty name="Kundendaten" property="*" />
				</div>
				<div style="width: 15%; float: left;">
					<div align="center">
						<script type="text/javascript">
					    google_ad_client = "ca-pub-8289615059669960";
					    google_ad_slot = "1773028138";
					    google_ad_width = 300;
					    google_ad_height = 600;
					</script>
					<!-- Werbung -->
					<script type="text/javascript"
					src="//pagead2.googlesyndication.com/pagead/show_ads.js">
					</script>
					</div>
				</div>
		</div>
	
	</body>

</html>
