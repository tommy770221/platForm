<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<html>

<body>
<div id="msg">
{
"msg":"<s:property value="%{data}"/>"
}
</div>
<div id="error_msg">
{
"abc":"abc"
}
</div>
</body>
</html>