<%@ page import="com.oreilly.servlet.MultipartRequest" 
 	import="com.mongodb.BasicDBObject"
     import="java.io.File"
     import="com.mongodb.DB"
     import="com.mongodb.DBCollection"
     import="com.mongodb.DBCursor"
     import="com.mongodb.MongoClient"
     import="java.net.UnknownHostException"
	 import="com.sun.org.apache.bcel.internal.generic.NEW"
	 import="com.mongodb.DBObject"
	 import="com.mongodb.Mongo"
	 import="com.mongodb.gridfs.GridFS"
	 import=" com.mongodb.gridfs.GridFSDBFile"
	 import=" com.mongodb.gridfs.GridFSInputFile"%>  
	 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Choose</title>
</head>
<body background="http://www.desktopwallpaperhd.com/th/7/2853.jpg"> 
<form>
<%  
MultipartRequest m = new MultipartRequest(request, "D:/Bhudeb Kumar Sarkar/Gallery");  
out.print("successfully uploaded");  
%>
<%
Mongo mongo = new Mongo("localhost", 27017);
DB db = mongo.getDB("test");
DBCollection collection = db.getCollection("photos");

File jsp = new File("D:/Bhudeb Kumar Sarkar/Gallery");
String f = "";

File[] list = jsp.listFiles();
System.out.println(list.length);
for(int i=0;i<list.length;i++)
{

   f = list[i].getName();
   //out.println(f);
   out.println(list[i].getAbsolutePath());
   String path = list[i].getAbsolutePath();
   String path_ch = path.replace('\\','/');
   out.println(path_ch);
   %><br><br><%
   
   String newFileName = f.substring(0,f.indexOf("."));
   File imageFile = new File(list[i].getPath());
   GridFS gfsPhoto = new GridFS(db, "photo");
   GridFSInputFile gfsFile = gfsPhoto.createFile(imageFile);
   gfsFile.setFilename(newFileName);
   gfsFile.save();
} 	
%>

</form>
</body>
</html>



  