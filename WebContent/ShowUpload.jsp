<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib uri="/struts-tags" prefix="struts"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title> Struts 2 File Upload </title>
</head>
<body>
<div style ="padding: 3px; border: solid 1px #cccccc; text-align: center" >
 <img src ="UploadImages/<struts:property value ="imageFileName" /> "/> <br /> <struts:property value ="caption" /> </div >

</body>
</html>