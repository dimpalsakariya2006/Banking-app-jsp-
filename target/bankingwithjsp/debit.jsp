<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Withdrow Money</title>
<link rel = "stylesheet" href= "style.css">
</head>
<body>
<h3> || Withdrowal amount ||</h3>
<br>
<form action = "Debit" method = "post">
<label for="debit" id="amount"><b>Enter Amount (CAD) : </b></label>
<input type = "number" name= "debit" id = "debit"><br><br>
<input type = "submit" value = "next" id="next">
</form>
</body>
</html>