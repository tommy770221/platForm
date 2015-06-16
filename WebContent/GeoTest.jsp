<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
 <script type = "text/javascript" charset = "utf-8" >
        function successCallback (position ) {
            var result = document.getElementById( 'result' );
            result.innerHTML =
                "緯度 : " + position.coords.latitude +"\n"+
                ", 經度 : " + position.coords.longitude +"\n"+
                ", 精確度 : " + position.coords.accuracy +"\n"+
                ", 時間戳記 : " + position.timestamp"\n" ;
        }
        function errorCallback( error ) {
            alert( '執行發生錯誤! 錯誤代碼 :' + error.code + ', 錯誤訊息 :' + error.message );
        }
        function contentLoaded () {
            if ( navigator.geolocation ) {
                alert( "你的瀏覽器支援 geolocation!!" );
                navigator.geolocation.getCurrentPosition( successCallback, errorCallback );
            } else {
                alert( "你的瀏覽器不支援 geolocation!!" );
            }
        }
        window.addEventListener( "DOMContentLoaded", contentLoaded , false );
    </script> 
     <div id = "result"> </div> 
</body>
</html>