<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>
List Items!!<br>


	<s:form action='listItem' method="post">
		<s:submit value="查詢所有貨號"></s:submit>
	</s:form>
	<table border="1" cellpadding="0" cellspacing="0" style="width: 600px;">
	<tbody>
	   <tr>
		<td width=150px>
        itemNo: </td>
        <td width=150px>
        itemName: </td>
        <td width=150px>
        price: </td>
        <td width=150px>
        cost: </td>
         </tr>
	</tbody>
</table>
        
<s:iterator value="%{itemsList}">
    <table border="1" cellpadding="1" cellspacing="0" style="width: 600px;">
	<tbody>
		<tr>
		<td width=150px>
        <img src="<%=request.getContextPath()%>/img/<s:property value="itemNo"/>.jpg" height="42" width="42"></img> <s:property value="itemNo"/></td>
        <td width=150px>
         <s:property value="itemName"/></td>
        <td width=150px>
         <s:property value="price"/></td>
        <td width=150px>
         <s:property value="cost"/></td>
       </tr>
	</tbody>
</table>
</s:iterator>
 

 <display:table   id="listItemAction" name="itemsList" pagesize="5" cellpadding="5px;"
cellspacing="5px;" style="margin-left:50px;margin-top:20px;" requestURI="/page/items/listSuccess.jsp" >

<display:column property="itemNo" title="itemNo" ></display:column>
<display:column property="itemName" title="itemName" ></display:column>
<display:column property="price" title="price" ></display:column>
<display:column property="cost" title="cost" ></display:column>
</display:table>



</body>
</html>