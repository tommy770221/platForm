<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
   <head>
      <title></title>
    

      <script type="text/javascript" src="http://ecn.dev.virtualearth.net/mapcontrol/mapcontrol.ashx?v=7.0&mkt=zh-TW"></script>

      <script type="text/javascript">
         
         function GetMap()
         {
            // Initialize the map
            var map = new Microsoft.Maps.Map(document.getElementById("mapDiv"), {credentials:"AgE_keFlqr_70uAWHHEzvIdXuRctQ3dsmdVtVS-voP4gLu17fTYYW2axEN1ytNFG"}); 

            // Create the locations
            var location1 = new Microsoft.Maps.Location(20,-20);
            var location2 = new Microsoft.Maps.Location(20,20);
            var location3 = new Microsoft.Maps.Location(-20,20);
            var location4 = new Microsoft.Maps.Location(-20,-20);

            // Create a polygon 
            var vertices = new Array(location1, location2, location3, location4, location1);
            var polygoncolor = new Microsoft.Maps.Color(100,100,0,100);
            var polygon = new Microsoft.Maps.Polygon(vertices,{fillColor: polygoncolor, strokeColor: polygoncolor});

            // Create the entity collection with the polygon and pushpins at each corner
            var polygonWithPins = new Microsoft.Maps.EntityCollection();
            polygonWithPins.push(polygon);
            polygonWithPins.push(new Microsoft.Maps.Pushpin(location1));
            polygonWithPins.push(new Microsoft.Maps.Pushpin(location2));
            polygonWithPins.push(new Microsoft.Maps.Pushpin(location3));
            polygonWithPins.push(new Microsoft.Maps.Pushpin(location4));

            // Add the shape to the map
            map.entities.push(polygonWithPins);

         }

      </script>
   </head>
   <body onload="GetMap();">
      <div id='mapDiv' style="position:relative; width:400px; height:400px;"></div>       
   </body>
</html>
