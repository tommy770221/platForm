<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
   <head>
      <title></title>

      <script type="text/javascript" src="http://dev.virtualearth.net/mapcontrol/mapcontrol.ashx?v=7.0&mkt=zh-TW"></script>

      <script type="text/javascript">
         
         function GetMap()
         {
            // Initialize the map
            var map = new Microsoft.Maps.Map(document.getElementById("mapDiv"),
                         {credentials:"AgE_keFlqr_70uAWHHEzvIdXuRctQ3dsmdVtVS-voP4gLu17fTYYW2axEN1ytNFG"}); 

            // Retrieve the location of the map center 
            var center = map.getCenter();
            
            // Define the pushpin location
            var loc = new Microsoft.Maps.Location(25.01234, 121.54321);
            
            // Add a pin to the center of the map
            var pin = new Microsoft.Maps.Pushpin(loc, {text: '2'}); 
            map.entities.push(pin);
         }

      </script>
   </head>
   <body onload="GetMap();">
      <div id='mapDiv' style="position:relative; width:400px; height:400px;"></div>       
   </body>
</html>
