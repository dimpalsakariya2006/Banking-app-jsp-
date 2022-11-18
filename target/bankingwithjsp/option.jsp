<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Action</title>
<link rel = "stylesheet" href= "style.css">
</head>
<body>
<br>
<h2> Welcome to Banking Application</h2>
<h3> Choose any one option </h3>
<form action = "ViewBalance.jsp" >
<input type = "submit" id = "buttonv" value = "View Balance Money">
</form>
<form action = "debit.jsp" >
<input type = "submit" id = "buttonw" value = "  Withdrow Money  ">
</form>
<form action = "credit.jsp" >
<input type = "submit" id = "buttond" value = "  Deposit Money  " >
</form>

</body>
</html>