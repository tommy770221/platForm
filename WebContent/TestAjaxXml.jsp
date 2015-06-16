<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
function loadXMLDoc()
{
var xmlhttp;
var txt,x,i;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    xmlDoc=xmlhttp.responseXML;
    txt="";
    x=xmlDoc.getElementsByTagName("address_component");
    for (i=0;i<x.length;i++)
      {
    	 xx=x[i].getElementsByTagName("long_name");
         {
         try
           {
            txt=txt + xx[0].firstChild.nodeValue  + "<br>";
           }catch (er)
               {
                 txt=txt + "<br>";
                }
      }
    document.getElementById("myDiv").innerHTML=txt;
    }
  }
xmlhttp.open("GET","http://maps.googleapis.com/maps/api/geocode/xml?sensor=false&address=%E6%96%B0%E5%8C%97%E5%B8%82%E4%B8%AD%E5%92%8C%E5%8D%80%E6%B0%91%E4%BA%AB%E8%A1%97114%E5%B7%B721%E8%99%9F5%E6%A8%93",true);
xmlhttp.send();
}
</script>
</head>
<body>
<h2>My CD Collection:</h2>
<div id="myDiv"></div>
<button type="button" onclick="loadXMLDoc()">Get my CD collection</button>

</body>
</html>