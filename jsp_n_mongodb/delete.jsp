<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background =http://www.desktopwallpaperhd.com/th/7/2853.jpg>
<form action="datadelete.jsp" method="get">
<%
if(session.getAttribute("userid")==null)
{
	 response.sendRedirect("login_first.jsp");
}
%>
<% 
String history= (String)session.getAttribute("history");
String new_history = history.concat("Delete->");
//out.println(new_history);
%><br><%
session.setAttribute("history",new_history);
//out.println(session.getAttribute("history"));

%>
Field Name&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="Fname">
<br><br>
Field Value&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="Value">
<br><br>
<input type="submit" name="Delete" value="Delete" > &nbsp;&nbsp;
<input type="button" name="Back" value="Back"onclick="location='Choose.jsp'" > 
</form>
</body>
</html>