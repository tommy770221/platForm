<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<script language="javascript">
function userlogout(){
$.ajaxSetup({
    scriptCharset: "utf-8", //maybe "ISO-8859-1"
    contentType: "application/json; charset=utf-8"
});

$.getJSON('http://whateverorigin.org/get?url=' + 
     encodeURIComponent('http://maps.googleapis.com/maps/api/geocode/json?sensor=false&address=%E6%96%B0%E5%8C%97%E5%B8%82%E4%B8%AD%E5%92%8C%E5%8D%80%E6%B0%91%E4%BA%AB%E8%A1%97114%E5%B7%B721%E8%99%9F5%E6%A8%93')+'&callback=?',
    function(data) {
        console.log("> ", data);
        //If the expected response is text/plain
        $("#target").html(data.contents);
        //If the expected response is JSON
        //var response = $.parseJSON(data.contents);
        //console.log("> ", response);
});
}
</script>

<button onclick='userlogout();'>Get inner Content</button>
<div id=target></div>
</body>
</html>