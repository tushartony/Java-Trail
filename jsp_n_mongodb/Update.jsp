<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background =http://www.desktopwallpaperhd.com/th/7/2853.jpg>
<form action="dataupdate.jsp" method="get">
Data Field &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="Data">
<br><br>
Value&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="Value">

<% 
String history= (String)session.getAttribute("history");
String new_history = history.concat("Update->");
//out.println(new_history);
%><br><%
session.setAttribute("history",new_history);
//out.println(session.getAttribute("history"));


%>
<br>

Update with&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="UpData">
<input type="submit" name="Update" value="Update" > &nbsp;&nbsp;
<input type="button" name="Back" value="Back"onclick="location='Choose.jsp'" > 



</form>
</body>
</html>