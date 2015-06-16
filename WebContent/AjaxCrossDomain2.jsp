<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<script language="javascript">
function userlogout(){

	
	$.ajaxPrefilter(function(options) {
		  if(options.crossDomain && jQuery.support.cors) {
		    var http = (window.location.protocol === 'http:' ? 'http:' : 'https:');
		    options.url = http + '//cors-anywhere.herokuapp.com/' + options.url;
		    //options.url = "http://cors.corsproxy.io/url=" + options.url;
		  }
		});

		$.get(
		    'http://maps.googleapis.com/maps/api/geocode/json?sensor=false&address=%E6%96%B0%E5%8C%97%E5%B8%82%E4%B8%AD%E5%92%8C%E5%8D%80%E6%B0%91%E4%BA%AB%E8%A1%97114%E5%B7%B721%E8%99%9F5%E6%A8%93',
		    function(response) {
		    	//var x= $.parseJSON($(response).toString());
		    	// alert('x value='+x.status);
		    	 alert($(response.status));
		    	 console.log("> ", response);
		        $("#target").html(response.results[0]);
		});
}
</script>
<body>

<button onclick='userlogout();'>Get inner Content</button>
<div id=target></div>

</body>
</html>