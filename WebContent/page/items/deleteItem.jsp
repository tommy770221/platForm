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
<s:form action='deleteItem'> 
        <s:textfield name="items.itemNo"   label="itemNo"></s:textfield>     
        <s:textfield name="items.itemName" label="itemName"></s:textfield>   
        <s:textfield name="items.price"    label="price"></s:textfield>   
            <s:submit value="刪除"></s:submit>   
</s:form>   
</body>
</html>