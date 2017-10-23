<%@ page language="java" 
    contentType="text/html; 
    charset=windows-1256"
     pageEncoding="windows-1256" 
     import="com.mongodb.BasicDBObject"
     import="com.mongodb.DB"
     import="com.mongodb.DBCollection"
     import="com.mongodb.AggregationOutput"
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background =http://www.desktopwallpaperhd.com/th/7/2853.jpg>
<%
int Chrome=0,Safari=0,Mozilla=0,IE=0,Firefox=0;
Mongo mg = new Mongo("Localhost",27017);
	DB db = mg.getDB("test");
	DBCollection collection = db.getCollection("session");
	
	DBCursor cursor = collection.find();
	BasicDBObject query =new BasicDBObject();
	cursor = db.getCollection("session").find();
	while (cursor.hasNext()) 
		{
		DBObject obj =cursor.next();
		System.out.println("hiahdfia:"+String.valueOf(obj.get("Browser")));
		if(String.valueOf(obj.get("Browser")).contains("Chrome"))
		{
		Chrome++;	
		}
		if(String.valueOf(obj.get("Browser")).contains("Safari"))
		{
			Safari++;		
		}
		if(String.valueOf(obj.get("Browser")).contains("IE"))
		{
			IE++;		
		}
		if(String.valueOf(obj.get("Browser")).contains("Firefox"))
		{
			Firefox++;			
		}
		if(String.valueOf(obj.get("Browser")).contains("Mozilla"))
		{
			Mozilla++;					
		}
		}				
		%><strong>
		Websites used:
		</strong><br><br><%		
		out.println("Mozilla:"+Mozilla);
		%><br><%
		out.println("Chrome:"+Chrome);
		%><br><%
		out.println("Firefox:"+Firefox);
		%><br><%
		out.println("IE:"+IE);
		%><br><%
		out.println("Safari:"+Safari);
		%><br><%
		
		
				
	
%>
	




</body>
</html>