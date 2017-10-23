<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background =http://www.desktopwallpaperhd.com/th/7/2853.jpg>
<form action="datainsert.jsp" method="get">
<h3>HI</h3>
<%
if(session.getAttribute("userid")==null)
{
	 response.sendRedirect("login_first.jsp");
}
%>
<% 
String history= (String)session.getAttribute("history");
String new_history = history.concat("Insert->");
//out.println(new_history);
%><br><%
session.setAttribute("history",new_history);
//out.println(session.getAttribute("history"));
%>
Enter Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="Name" value="">
<br>
<br>
Enter Location&nbsp;&nbsp;<input type="text" name="Location" value="">
<br><br>
Enter Code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="Code" value="" size="5">
<input type="button" name="Back" value = "Back" onclick="location='Choose.jsp'">
<input type="submit" name="Save" value = "Save">

</form>
</body>
</html>