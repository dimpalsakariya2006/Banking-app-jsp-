<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Banking Application</title>
</head>
<body>
<%
response.setContentType("text/html");

String accno = request.getParameter("accno");
String PIN = request.getParameter("PIN");
ServletContext sc = getServletContext();
Connection con = (Connection) sc.getAttribute("connection");
sc.setAttribute("accno", accno);
try {
	PreparedStatement ps = con.prepareStatement("select PIN,Question1,Answer1,Question2,Answer2,Question3,Answer3,Question4,Answer4 from AccountHolder where Account_number=?");
	ps.setString(1, accno);
	ResultSet rs = ps.executeQuery();
	
	while(rs.next())
	{
		String PIN1 = rs.getString(1);
		if(PIN.equals(PIN1))
        {
        	out.print("<h2 >Successfully Entered into your account</h2>");
        	out.print("<div class = 'quepage'><p><br><b>Account Number : "+accno+"</b><br></p>");
        	
        	//store all security questions in list
        	List<String> questions = new ArrayList<String>();
        	questions.add(rs.getString(2));
        	questions.add(rs.getString(4));
        	questions.add(rs.getString(6));
        	questions.add(rs.getString(8));
        	System.out.println(questions);  
        	
        	//store all security answers in list
        	List<String> answers = new ArrayList<String>();
        	answers.add(rs.getString(3));
        	answers.add(rs.getString(5));
        	answers.add(rs.getString(7));
        	answers.add(rs.getString(9));
        	System.out.println(answers);
        	
        	Random r = new Random();
        	int i = r.nextInt(4);
        	System.out.println(i);
        	
        	String que = questions.get(i);
        	System.out.println(que);
        	
        	String ans = answers.get(i);
        	System.out.println(ans);
        	
        	sc.setAttribute("ans", ans);

        %>	
        	<form action = 'anscheck.jsp'>
        	<p><b>Secutity Question :<% out.print(que); %> </b></p>
        	<label for='Answer' id='ans'><b>
        	 Answer : </b></label><input type='text' name = 'ans1' id='ans1'><br>
        	<br><br><input type='submit'id='next1' value= 'Next'>
        	</form>
        	<% 
        		
        } 
		else
		{
			out.print("<b>Please Enter correct Account Number and PIN</b>");
        	RequestDispatcher rd = request.getRequestDispatcher("loginaccount.jsp");
        	rd.include(request, response);
			
		}
	}	
}catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>
</html>