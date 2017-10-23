<%@page import="com.mongodb.QueryBuilder"%>
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
<body>



<%!String[] str;%>
<%	
	str= request.getParameterValues("loc");
	String other = request.getParameter("Other");
	if(str != null)
{
		for (int i = 0; i < str.length; i++) 
		{
			//out.println ("<b>"+str[i]+"<b>");
		}
}
	else
{
	
		out.println ("<b>none<b>");
}
	
	




	Mongo mg = new Mongo("Localhost",27017);
	DB db = mg.getDB("test");
	DBCollection collection = db.getCollection("Contacts");
	
	DBCursor cursor = collection.find();
	BasicDBObject query =new BasicDBObject();

	if(str != null)
	{
			for (int i = 0; i < str.length; i++) 
			{
				query.put("Location",str[i]);
				cursor = db.getCollection("Contacts").find(query).sort(new BasicDBObject("Salary",1));
				System.out.println(cursor);
				while (cursor.hasNext()) 
				{DBObject obj =cursor.next(); 
					%>
					<tr><b> 
					<td><%=obj.get("Name") %></td> 
					<td><%=obj.get("Age") %></td> 
					<td><%=obj.get("Salary") %></td> 
					<td><%=obj.get("Location") %></td> 
					<td><%=obj.get("Code") %></td>
					</tr>
					<br><%
					out.println("---------------------------------------------------------------------------");
			    	%><br><%
				}	    
				
			}
	}
		else
	{
		
			out.println ("<b>none<b>");
	}
	if(other!=null)
	{
		query.put("Location",other);
		cursor = db.getCollection("Contacts").find(query).sort(new BasicDBObject("Age",1));
		System.out.println(cursor);
		while (cursor.hasNext()) 
		{
			DBObject obj =cursor.next();  
			 %><br><%
			 out.println("Name: "+obj.get("Name"));
			 %><br><%
	    	    
	     	   out.println("Age: "+obj.get("Age"));
	     	  %><br><% 
	    	    
	     	   out.println("Gender: "+obj.get("Gender"));
	     	     %><br><%
	     	  
	    	   out.println("Salary: "+obj.get("Salary"));
	    	   %><br><%
	    	   
	    	   out.println("Location: "+obj.get("Location"));
	    	    %><br><%
	    	   
	    	   out.println("Code: "+obj.get("Code"));
	    	    %><br><%
			   out.println("---------------------------------------------------------------------------");
			    %><br><%
		}	    
	}

%>

</body>
</html>