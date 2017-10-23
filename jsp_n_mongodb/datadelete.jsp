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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor=#81BEF7>

<br>
<%

String fname= request.getParameter("Fname");
String value= request.getParameter("Value");
Mongo mg = new Mongo("Localhost",27017);
DB db = mg.getDB("test");
DBCollection collection = db.getCollection("Contacts");
BasicDBObject query =new BasicDBObject();
query.put(fname,value);
collection.remove(query);

%>
<a href="javascript:history.go(-1)">Confirm</a>
</body>
</html>