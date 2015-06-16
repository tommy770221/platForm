<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
   <head>
      <title></title>


      <script type="text/javascript" src="http://dev.virtualearth.net/mapcontrol/mapcontrol.ashx?v=7.0&mkt=zh-TW"></script>

      <script type="text/javascript">
         
         function GetMap()
         {
            // Initialize the map
            var map = new Microsoft.Maps.Map(document.getElementById("mapDiv"),{credentials:"AgE_keFlqr_70uAWHHEzvIdXuRctQ3dsmdVtVS-voP4gLu17fTYYW2axEN1ytNFG"}); 

            // Create a polygon 
            var vertices = new Array(new Microsoft.Maps.Location(20,-20), new Microsoft.Maps.Location(20,20), new Microsoft.Maps.Location(-20,20), new Microsoft.Maps.Location(-20,-20), new Microsoft.Maps.Location(20,-20));
            var polygoncolor = new Microsoft.Maps.Color(100,100,0,100);
            var polygon = new Microsoft.Maps.Polygon(vertices,{fillColor: polygoncolor, strokeColor: polygoncolor});
            
            // Add the polygon to the map
            map.entities.push(polygon);
         }

      </script>
   </head>
   <body onload="GetMap();">
      <div id='mapDiv' style="position:relative; width:400px; height:400px;"></div>       
   </body>
</html>
