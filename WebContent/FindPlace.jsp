<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>列出所有景觀</title>
</head>
<body>

<s:iterator value="%{placeList}">
         <table border="1" cellpadding="1" cellspacing="0" style="width: 1200px;">
	<tbody>
		<tr>
			<td width=200px>
				<s:property value="name"/> </td>
			<td width=550px>
				<s:property value="address"/></td>
			<td width=200px>
				 <s:property value="phone"/></td>
			<td width=100px>
				<s:property value="latitude"/></td>
			<td width=100px>
				 <s:property value="longtitude"/></td>
			<td width=50px>
				<s:property value="postNo"/></td>
		</tr>
	</tbody>
 </table>
    
</s:iterator>


</body>
</html>