<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>
<s:form action='saveUser' method="post"> 
        <s:textfield name="user.id" label="id"></s:textfield>     
        <s:textfield name="user.username" label="�ΦW"></s:textfield>   
        <s:textfield name="user.password" label="�K�X"></s:textfield>   
            <s:submit value="�s�W"></s:submit>   
</s:form> 
</body>
</html>