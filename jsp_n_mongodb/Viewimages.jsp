<%@page import="org.xml.sax.InputSource"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.io.File"
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
	 import=" com.mongodb.gridfs.GridFSInputFile"
	 import="java.awt.image.BufferedImage"
	 import="java.io.File"
	 import="java.io.InputStream"
	 import="java.io.IOException"
	 import="javax.imageio.ImageIO"
	 import="java.io.ByteArrayOutputStream"
	 import="java.util.*"
	 import="org.apache.commons.codec.binary.Base64"
	 
	 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="D:/Bhudeb Kumar Sarkar/Gallery/images1.jpeg">
<form>
<%
Mongo mongo = new Mongo("localhost", 27017);
DB db = mongo.getDB("test");



GridFS gfsPhoto = new GridFS(db,"photo");
DBCursor cursor = gfsPhoto.getFileList();
while(cursor.hasNext())
{
	DBObject fdb=cursor.next();
	String filename = String.valueOf(fdb.get("filename"));
	GridFS gfsPhotolist = new GridFS(db,"photo");
	GridFSDBFile file = gfsPhotolist.findOne(filename);
	InputStream inputfile = file.getInputStream(); 
	
	BufferedImage image = ImageIO.read(inputfile);
    ByteArrayOutputStream baos = new ByteArrayOutputStream();
    ImageIO.write(image, "jpeg", baos);
    byte[] res =baos.toByteArray();
    String encodedImage = Base64.encodeBase64String(res);
    //out.println(encodedImage);
    %>
    
    <img src="data:image/jpeg;base64,<%=encodedImage%>" height=50 width=70 onclick="Displayimage('<%=filename%>')"/>
 <%   
    



	
}


%>


</ul>
</form>
</body> 
</html>