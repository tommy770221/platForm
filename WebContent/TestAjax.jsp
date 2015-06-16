<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>

function loadXMLDoc(url)
{
var xmlhttp;
var txt,x,xx,xxx,i;
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
    txt="<table border='1'><tr><th>Title</th><th>Artist</th></tr>";
    x=xmlhttp.responseXML.documentElement.getElementsByTagName("GeocodeResponse");
    for (i=0;i<x.length;i++)
      {
      txt=txt + "<tr>";
      xx=x[i].getElementsByTagName("status");
        {
        try
          {
          txt=txt + "<td>" + xx[0].firstChild.nodeValue + "</td>";
          }
        catch (er)
          {
          txt=txt + "<td> error</td>";
          }
        }
      xx=x[i].getElementsByTagName("result");
        {
        for (i=0;i<xx.length;i++){
             xxx=xx[i].getElementsByTagName("address_component");
            try
            {
            txt=txt + "<td>" + xxx[0].firstChild.nodeValue + "</td>";
            }
            catch (er)
            {
            txt=txt + "<td> </td>";
            }
          }
        }
      txt=txt + "</tr>";
      }
    txt=txt + "</table>";
    document.getElementById('txtCDInfo').innerHTML=txt;
    }
   else{
    document.getElementById('txtCDInfo').innerHTML=txt;
   }
  }
xmlhttp.open("GET",url,true);
xmlhttp.send();
}
</script>


</head>
<body>
<div id="txtCDInfo">
<button onclick="loadXMLDoc('http://maps.googleapis.com/maps/api/geocode/xml?sensor=false&address=%E6%96%B0%E5%8C%97%E5%B8%82%E4%B8%AD%E5%92%8C%E5%8D%80%E6%B0%91%E4%BA%AB%E8%A1%97114%E5%B7%B721%E8%99%9F5%E6%A8%93')">Get CD info</button>
</div>
</body>
</html>