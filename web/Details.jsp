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
                <jsp:getProperty name="Kundendaten" property="text"/> 
                Test
            </div>
	</body>

</html>
