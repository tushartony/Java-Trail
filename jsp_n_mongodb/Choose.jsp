<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Choose</title>
</head>
<body background="http://www.desktopwallpaperhd.com/th/7/2853.jpg"> 
<form>
<%
if(session.getAttribute("userid")==null)
{
	response.sendRedirect("login_first.jsp");
}

%>
<br><br>
<center>...Enter Choice... </center>

     Enter New Data &nbsp;&nbsp; <input type="button" name = "ENTER" value = "ENTER" onclick="location='insert.jsp'" >
     <br>  <br>
     Display Data&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name = "DISPLAY" value = "DISPLAY" onclick="location='Display.jsp'" >
     <br> <br>
     
     Search Data &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name = "SEARCH" value = "SEARCH" onclick="location='search.jsp'" >
     <br><br>
      
     Update Data&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name = "DISPLAY" value = "UPDATE" onclick="location='Update.jsp'" >
     <br> <br>
     Delete Data &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button"name = "DELETE" value = "DELETE" onclick="location='delete.jsp'" >
	<br><br>
	Web Analysis &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button"name = "DELETE" value = "WEB ANALYSIS" onclick="location='webanalysis.jsp'" >
     <br><br>
   	Image Gallery &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="button"name = "DELETE" value = "GALLERY" onclick="location='Upload.jsp'" >
     <br><br>
     <input type="button" name = "EXIT" value = "EXIT" onclick="location='logout.jsp'">
     
 </form>
</body>
</html>