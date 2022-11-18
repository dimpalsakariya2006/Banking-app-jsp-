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
String ans1 =(String) sc.getAttribute("ans");
String ans = request.getParameter("ans1");
if(ans1.equalsIgnoreCase(ans))
{
	
	RequestDispatcher rd = request.getRequestDispatcher("option.jsp");
	rd.forward(request, response);
}
else{
	out.print("<h3>Incorrect Information</h3>");
	out.print("<h3>Please Try Again</h3>");
	RequestDispatcher rd = request.getRequestDispatcher("loginaccount.jsp");
	rd.include(request, response);
}

%>
</body>
</html>