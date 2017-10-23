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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> <html> 
     <head>
     <meta http-equiv="Content-Type" content="text/html; charset=windows-1256"> 
     <title>Login</title>
     </head> 
     <body background =http://www.desktopwallpaperhd.com/th/7/2853.jpg>
     <%
if(session.getAttribute("userid")==null)
{
	 response.sendRedirect("login_first.jsp");
}
%>
     <% 
String history= (String)session.getAttribute("history");
String new_history = history.concat("Display->");
//out.println(new_history);
%><br><%
session.setAttribute("history",new_history);
//out.println(session.getAttribute("history"));

%>
     
<%



	Mongo mg = new Mongo("Localhost",27017);
	DB db = mg.getDB("test");
	DBCollection collection = db.getCollection("Contacts");
	BasicDBObject doc = new BasicDBObject();
	DBCursor cursor = collection.find();
	int rec=1;
	out.println("---------------------------------------------------------------------------");
    try {
       while(cursor.hasNext()) 
       {
    	   DBObject str= cursor.next();
    	  
    	   out.println("Record:"+rec++);%>
    	   <br><% 
    	   out.println("\n");out.println('\n');
    	   out.println("Name: "+str.get("Name"));%>
    	    <br><% 
    	   out.println();out.println('\n');
    	   out.println("Country: "+str.get("Country"));%>
    	    <br><% 
    	   out.println('\n');out.println('\n');
    	   out.println("Code: "+str.get("Code"));%>
    	    <br><% 
    	   out.println("---------------------------------------------------------------------------");
    	   out.println();out.println();
       }
    	} 
    finally 
    {
       cursor.close();
    }
    

mg.close();

%>
<br><br>
<a href="javascript:history.go(-1)">Go Back</a>
     </body>
     </html>