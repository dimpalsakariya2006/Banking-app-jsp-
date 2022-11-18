<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Banking Application</title>
</head>
<body>
	<%

ServletContext sc = getServletContext();
Connection con = (Connection)sc.getAttribute("connection");

String accno= (String) sc.getAttribute("accno");
	try {
	PreparedStatement ps = con.prepareStatement("select balance,Account_Holder_name from AccountHolder where Account_number=?");
	ps.setString(1, accno);

	ResultSet rs= ps.executeQuery();
	while(rs.next())
	{
	double balance = rs.getDouble(1);
	String name = rs.getString(2);
	%>
	<h3>
	<%="Welcome, "+name%>
	<br>
	<%="Account Number : "+accno%>
	</h3>
	
<% 	
String operation =request.getParameter("banking");
if(operation.equals("Withdrow Money"))
{
	double amount =Double.parseDouble(request.getParameter("operation"));
	if(amount>balance){
		out.print("<h3>Insufficient Balance </h3>");
	}
	else{
	double newbalance = balance-amount;
	out.print("<h3>Available Balance : $"+newbalance+"</h3>");
	PreparedStatement ps1 = con.prepareStatement("update AccountHolder set balance = ? where Account_number = ?");
	ps1.setDouble(1, newbalance);
	ps1.setString(2, accno);
	int row = ps1.executeUpdate();
	System.out.println(row+" row is updated");
	}
}
else if(operation.equals("Deposit Money"))
{
	double amount =Double.parseDouble(request.getParameter("operation"));
	double newbalance = balance+amount;
	out.print("<h3>Available Balance : $"+newbalance+"</h3>");
	PreparedStatement ps1 = con.prepareStatement("update AccountHolder set balance = ? where Account_number = ?");
	ps1.setDouble(1, newbalance);
	ps1.setString(2, accno);
	int row = ps1.executeUpdate();
	System.out.println(row+" row is updated");
	
}
else if(operation.equals("View Balance"))
{
	out.print("<h3>Available Balance : $"+balance+"</h3>");
}
}
	%>
	
		<form action = 'loginaccount.jsp' >
    	<br><br><input type='submit' value= 'Continue' id='continue'>
    	</form><br>
    	<form action = 'home.jsp' >
    	<input type='submit' value= 'Home' id='continue'>
    	</form>
    	
<%
	}
	catch(Exception e)
	{
	e.printStackTrace();
	}

%>
</body>
</html>