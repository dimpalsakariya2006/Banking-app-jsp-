<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="java.time.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Banking Application</title>
</head>
<body>
<%
response.setContentType("text/html");
String name = request.getParameter("name");
String type = request.getParameter("type");
String PIN = request.getParameter("PIN");
String bdate = request.getParameter("bdate");
String dlnum = request.getParameter("dlnum");
String que1 = request.getParameter("que1");
String que2 = request.getParameter("que2");
String que3 = request.getParameter("que3");
String que4 = request.getParameter("que4");
String ans1 = request.getParameter("ans1");
String ans2 = request.getParameter("ans2");
String ans3 = request.getParameter("ans3");
String ans4 = request.getParameter("ans4");
String balance = request.getParameter("balance");

LocalDate date = LocalDate.parse(bdate);
int year =date.getYear();
String year1 = String.valueOf(year);

String y =year1.substring(1,2);
String dl = dlnum.substring(2, 6);

if(PIN.length()==4)
{
	try {
	ServletContext sc = getServletContext();
	Connection con = (Connection) sc.getAttribute("connection");
	
	PreparedStatement ps = con.prepareStatement("insert into AccountHolder values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
	
	//set account number 
    
    String accno = dl + "V" + y;
    ps.setString(1, null);
    ps.setString(2, name);
    ps.setString(3, type);
    ps.setString(4,bdate);
    ps.setString(5, dlnum);
    ps.setString(6, accno);
    ps.setString(7, PIN);
    ps.setString(8, balance);
    ps.setString(9,que1);
    ps.setString(10, ans1);
    ps.setString(11,que2);
    ps.setString(12, ans2);
    ps.setString(13, que3);
    ps.setString(14, ans3);
    ps.setString(15,que4);
    ps.setString(16, ans4);
    int row = ps.executeUpdate();
    System.out.println(row + " inserted successfully..");
    
    
    
%>

  <%= "<h3> Successfully opened your account</h3>"%>
<%= "<br><b>Account Holder Name : </b>"+name%>
<%= "<br><b>Type of Account : </b>"+type%>
<%= "<br><b>Account Number : </b>"+accno%>
<%= "<br><b>Registered PIN : </b>"+ PIN%>
<%= "<br><b>Birth Date : </b>"+bdate%>
<%= "<br><b>Available Balance : </b>"+balance%>

<br><br><form action = 'loginaccount.jsp' id = 'debit'>
<input type = 'submit' value = 'Get into Your Account' id='next'>
</form>


<%
	}catch(Exception e)
	{
		e.printStackTrace();
	}

}
else
{
	out.print("Your PIN must be Four Digits");
	RequestDispatcher rd = request.getRequestDispatcher("registeraccount.jsp");
	rd.include(request, response);
}
    %>
    
    
</body>
</html>