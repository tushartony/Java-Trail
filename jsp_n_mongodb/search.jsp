<%@ page language="java" 
    contentType="text/html; 
    charset=windows-1256"
     pageEncoding="windows-1256" 
     import="com.mongodb.BasicDBObject"
     import="com.mongodb.DB"
     import="com.mongodb.DBCollection"
     import="com.mongodb.DBCursor"
     import="com.mongodb.MongoClient"
     import="java.net.UnknownHostException"
	 import="com.sun.org.apache.bcel.internal.generic.NEW"
	 import="com.mongodb.DBObject"
	 import="com.mongodb.Mongo"
      %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256"> 
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("userid")==null)
{
	 response.sendRedirect("login_first.jsp");
}
%>
<%
String history= (String)session.getAttribute("history");
String new_history = history.concat("Search->");
session.setAttribute("history",new_history);
%>
<form method="POST" action="Customfind.jsp">


<strong>Location:</strong>
Pune<input type ="checkbox" name="loc" value="Pune" >&nbsp;&nbsp;&nbsp;
Chennai<input type ="checkbox" name="loc"value="Chennai">&nbsp;&nbsp;&nbsp;
Delhi<input type ="checkbox" name="loc"value="Delhi">&nbsp;&nbsp;&nbsp;
Bangalore<input type ="checkbox" name="loc"value="Bangalore">&nbsp;&nbsp;&nbsp;
Others&nbsp;<input type ="text" name="Other">&nbsp;&nbsp;&nbsp;
<input type ="radio" name="Group1" value="A" >ASC&nbsp;&nbsp;<input type ="radio" name="Group1" value="D" >DES
<br><br>
<strong>Name:</strong>
Starting With&nbsp;&nbsp;<input type ="text" name="start_with">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Ending With&nbsp;&nbsp;<input type ="text" name="end_with">&nbsp;&nbsp;&nbsp;
<input type ="radio" name="Group2" value="A" >ASC&nbsp;&nbsp;<input type ="radio" name="Group2" value="D" >DES
<br><br>
<strong>Salary:</strong>
<br>
Salary Greater Than&nbsp;&nbsp;<input type ="text" name="sal_gre"> 
&nbsp;&nbsp;&nbsp;
<input type ="radio" name="Group2" value="A" >ASC&nbsp;&nbsp;<input type ="radio" name="Group2" value="D" >DES
<br><br>
Salary Less Than&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type ="text" name="sal_less">
<br><br>
Salary Equal To&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type ="text" name="sal_equ">


<br>
<input type="submit" value="Find" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</form>
<body background="http://www.desktopwallpaperhd.com/th/7/2853.jpg"> 
</html>