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

<s:form action="findUser" method="post"> 
  �п�JID      <s:textfield name="user.id" label="id"></s:textfield>     
            <s:submit value="�d��"></s:submit>   
</s:form>   



<s:form >

<br>     ID: <s:property value="%{userFind.id}"/> <br>
   UserName: <s:property value="%{userFind.username}"/><br>
<br>


</s:form>

 


</body>
</html>