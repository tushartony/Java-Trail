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
<form method="get">

<br>
<%

String datafield = request.getParameter("Data");
String  data = request.getParameter("UpData");
String  value = request.getParameter("Value");
out.println("HIII");

Mongo mg = new Mongo("Localhost",27017);
DB db = mg.getDB("test");
DBCollection collection = db.getCollection("Contacts");
BasicDBObject doc = new BasicDBObject();

BasicDBObject query =new BasicDBObject(datafield,value); 
BasicDBObject newDocument = new BasicDBObject();
newDocument.put(datafield,data);
BasicDBObject updateObj = new BasicDBObject();
updateObj.put("$set", newDocument);
collection.update(query,updateObj,false,true);

out.println("Field Name: "+request.getParameter("Data"));	
%> <br> <% 
out.println("Present: "+request.getParameter("Value"));
%> <br> <% 
out.println("Update with: " +request.getParameter("UpData"));	
%> <br> <% 

%>
<a href="javascript:history.go(-1)">Confirm</a>
</form>

</body>
</html>