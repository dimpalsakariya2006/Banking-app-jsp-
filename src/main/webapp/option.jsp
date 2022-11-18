<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Banking Application</title>

</head>
<body>
<br>
<h2> Welcome to Banking Application</h2>

<form action=operation.jsp> 
Enter Amount (CAD) : 
<input type = "number" name= "operation" id="name"><br><br>
Select Operation :  <select name = "banking" id="banking" required>
                         <option>select</option>
                         <option value = "View Balance">View Balance</option>
                         <option value = "Deposit Money">Deposit Money</option>
                         <option value = "Withdrow Money">Withdrow Money</option>
                         </select><br><br>
                         <input type = "submit" value = "next" id="next">
                         </form>
</body>
</html>