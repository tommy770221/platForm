<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="struts"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'index.jsp' starting page</title>
  </head>
  
  <body>
  
  	
<!--    在FileUpload.jsp中，先將表單的提交方式設為POST，然後將enctype設為multipart/form-data，這並沒有什麼特別之處。接下來，<s:file/>標誌將文件上傳控件綁定到Action的myFile屬性。 -->
   
  		<struts:form action="fileUpload" enctype="multipart/form-data" method="post">
  			<struts:label value="上傳文件"></struts:label>
  			<struts:file name="myFile" label="文件一"></struts:file>
  			<struts:textfield name="caption" label="Caption"></struts:textfield>
  			<struts:submit value="開始上傳" method="upload"></struts:submit>
  		</struts:form>
  
  </body>
</html>
