<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Manu</title>
</head>
<body>

<a href="<%=request.getContextPath()%>/page/updateUser.jsp" onclick="return true"> 進入修改會員資料 </a><br>
<a href="<%=request.getContextPath()%>/page/deleteUser.jsp" onclick="return true"> 進入移除會員資料 </a><br>
<a href="<%=request.getContextPath()%>/page/listSuccess.jsp"   onclick="return true"> 進入查詢所有會員資料 </a><br>
<a href="<%=request.getContextPath()%>/page/listUserSuccess.jsp"   onclick="return true"> 進入查詢會員資料 </a><br>
<a href="<%=request.getContextPath()%>/bingMapTest/MapManu.jsp"   onclick="return true"> 進入地圖功能 </a><br>
<a href="<%=request.getContextPath()%>/FindPlaceSuccess.jsp"   onclick="return true"> 查詢所有景點地圖功能 </a><br>
<a href="<%=request.getContextPath()%>/FindPlaceByname.jsp"   onclick="return true"> 進入查詢景點地圖功能 </a><br>
<a href="<%=request.getContextPath()%>/upload2.jsp"   onclick="return true"> 進入檔案上傳 </a><br>


<iframe id="ytplayer"  width="640" height="360"
src="https://www.youtube.com/embed/M7lc1UVf-VE"
frameborder="0">
</iframe>
</body>
</html>