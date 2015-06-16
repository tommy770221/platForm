<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查詢地點</title>
</head>
<body>
List Find Place!!<br>

 <s:form action="FindPlace" method="post" id="FindPlaceAction"> 
  請輸入要查詢的地名      <s:textfield name="place.name" label="name"></s:textfield>     
              <s:submit value="查詢"></s:submit>   
</s:form>

<s:iterator value="%{placeList}">

<br>     name: <s:property value="name"/> <br>
      address: <s:property value="address"/><br>
        phone: <s:property value="phone"/><br>
<br>


</s:iterator>

 <s:action name="ListPlace" id="ListPlaceAction"></s:action>
 <s:form>
 <s:select label="請選擇地方" list="#ListPlaceAction.placeList.{name}" />
 <s:select label="請選擇郵遞區號" list="#ListPlaceAction.placeList.{postNo}" />
 
 </s:form>


</body>
</html>