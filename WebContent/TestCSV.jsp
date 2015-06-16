<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/xml" prefix="x" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">





<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<c:import var="file" url="http://maps.googleapis.com/maps/api/geocode/xml?sensor=false&address=%E6%96%B0%E5%8C%97%E5%B8%82%E8%98%86%E6%B4%B2%E5%B8%82%E5%BE%A9%E8%88%88%E8%B7%AF60%E5%B7%B7%EF%BC%91%E5%BC%8415%E8%99%9F1%E6%A8%93" charEncoding="utf-8"/>
<div class="source">
<c:out value="${file}"/>
</div>

<x:parse var="doc" doc="${file}"></x:parse>



</body>
</html>