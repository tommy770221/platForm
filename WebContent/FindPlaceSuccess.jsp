<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %> 
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查詢所有地點</title>
</head>
<body>
List Place!!<br>

 <s:form action="ListPlace" method="post" > 
              <s:submit value="查詢"></s:submit>   
</s:form>

<%-- <s:iterator value="%{placeList}"> --%>

<%-- <br>     name: <s:property value="name"/> <br> --%>
<%--       address: <s:property value="address"/><br> --%>
<%--         phone: <s:property value="phone"/><br> --%>
<!-- <br> -->


<%-- </s:iterator> --%>
<s:form>
<s:action name="ListPlace"></s:action>
 <display:table id="ListPlaceAction" name="placeList" pagesize="5" requestURI="">

<display:column property="name" title="name" ></display:column>
<display:column property="address" title="address" ></display:column>
<display:column property="phone" title="phone" ></display:column>
<display:column property="postNo" title="postNo" ></display:column>
</display:table>
</s:form>

</body>
</html>