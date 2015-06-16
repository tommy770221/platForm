<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="BIG5"%>
<%@ taglib prefix="s" uri="/struts-tags" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="components/css/default.css" rel="stylesheet" type="text/css" />

<title>My JSP 'save.jsp' starting page</title>
</head>
      <body>   
        <form  > 
      帳號  <input type="text" name="user.id"  width="160" height="20"></input> <br/>      
     密碼    <input type="password"  name="user.password" width="160" height="20"></input><br/>  
            <input type="submit" value="登錄"></input>   
        </form>   
        <h1><a href="index.html"><img src="img/logo.gif" alt="保健視" /></a></h1>
        <a href="page/saveUser.jsp" onclick="return true"> 尚未加入會員請按此 </a><br>
                           緯度<input type="text" id="lat" size="20" /><br>
                           經度<input type="text" id="lng" size="20" /><br>
	    <input type="button" value="送出↓" onclick="SendMsg()" /><br>
        
        <script type="text/javascript">
        function SendMsg()
       	{   var lat= document.getElementById("lat").value;
       	    var lng= document.getElementById("lng").value;
        	document.all("iframe").src =("http://www.openstreetmap.org/export/embed.html?bbox="
        			                     +lng+"%2C"+lat+"%2C"+lng+"%2C"+lat+"&amp;marker="
        			                     +lat+"%2C"+lng+";"+"layer=mapnik");
      	}
        
        </script>
      
      <iframe id="iframe" width="100%" height="1000" frameborder="0" scrolling="yes" marginheight="0" marginwidth="0" 
              src="http://www.openstreetmap.org/export/embed.html?bbox=121.54321%2C25.01234%2C121.54321%2C25.01234&amp;marker=
                   121.54321%2C25.01234;layer=mapnik"
                   
              style="border: 1px solid black">
      </iframe>
              <br/>
              
      <small><a href="http://www.openstreetmap.org/#map=18/25.08352/121.47471">查看更大的地圖</a></small>
      
      </body>   
</html>