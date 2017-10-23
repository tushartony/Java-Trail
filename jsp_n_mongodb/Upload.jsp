<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"   "http://www.w3.org/TR/html4/loose.dtd">
   <HTML>
<HEAD>
<TITLE>Display file upload form to the user</TITLE>
</HEAD>

<BODY>
<FORM ENCTYPE="multipart/form-data" ACTION="uploadfile.jsp" METHOD="POST">
<br>
<br>
<br>
<center>
<table border="0" bgcolor=#ccFDDEE>
      <tr>
            <center>
            <td colspan="2" align="center"><B>UPLOAD THE FILE</B>
            <center>
            </td>
      </tr>
      <tr>
            <td colspan="2" align="center"></td>
      </tr>
      <tr>
            <td><b>Choose the file To Upload:</b></td>
            <td><INPUT NAME="file" TYPE="file" MULTIPLE></td>
      </tr>
      <tr>
            <td colspan="2" align="center"></td>
      </tr>
      <tr>
            <td colspan="2" align="center"><input type="submit"
                  value="Upload"></td>
      </tr>
      <table>
            </center>
            <input type="button" value="View" onclick="location='Viewimages.jsp'">
            
            </FORM>
</BODY>
</HTML>