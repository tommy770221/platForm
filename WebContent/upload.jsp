<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <title>���W��2</title>
  </head>
<%
  String contextPath = request.getContextPath();
%>
  <body>
 <FORM name="form1" action="<%=contextPath%>/com/tommy/upload/FileUploadServlet"  enctype="multipart/form-data" method="POST">
   ��ܤ��G<input type="file" name="myfile" />
   <input type="submit" value="�W��">
  </FORM>
 </body>
</html>