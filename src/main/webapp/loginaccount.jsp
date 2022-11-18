<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Banking Application</title>

</head>
<body>
<h2> Login </h2>
<form action = "loginservlet.jsp" method = "post" class="form">
<label for="Account number" >Account number :</label><br>
<input type = "text" name = "accno" id="accno" required><br><br>
<label for="Registered PIN">Registered PIN :</label>
<br> <input type = "number" name = "PIN" id="PIN" required><br><br>
<input type = "submit" id = "next" value = "Next"><br><br><a href = "openaccount.jsp">Click me to open an account</a>
</form>

</body>
</html>