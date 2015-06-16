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
List User!!<br>

<s:form action="findItem" method="post"> 
  請輸入ID      <s:textfield name="items.itemNo" label="itemNo"></s:textfield>     
            <s:submit value="查詢"></s:submit>   
</s:form>   



<s:form >
       ItemNo  : <s:property value="%{itemsFind.itemNo}"/> <br>
       ItemName: <s:property value="%{itemsFind.itemName}"/><br>
</s:form>

 


</body>
</html>