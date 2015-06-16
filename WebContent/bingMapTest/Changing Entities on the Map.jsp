<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
   <head>
      <title></title>


      <script type="text/javascript" src="http://ecn.dev.virtualearth.net/mapcontrol/mapcontrol.ashx?v=7.0&mkt=zh-TW"></script>

      <script type="text/javascript">

          var map = null;

          // Define colors
          var blue = new Microsoft.Maps.Color(100, 0, 0, 200);
          var green = new Microsoft.Maps.Color(100, 0, 100, 100);
          var purple = new Microsoft.Maps.Color(100, 100, 0, 100);


         function GetMap()
         {
            // Initialize the map
            map = new Microsoft.Maps.Map(document.getElementById("mapDiv"),{credentials:"AgE_keFlqr_70uAWHHEzvIdXuRctQ3dsmdVtVS-voP4gLu17fTYYW2axEN1ytNFG"}); 

            // Create the locations
            var location1 = new Microsoft.Maps.Location(20,-20);
            var location2 = new Microsoft.Maps.Location(20,20);
            var location3 = new Microsoft.Maps.Location(-20,20);
            var location4 = new Microsoft.Maps.Location(-20, -20);
            var location5 = new Microsoft.Maps.Location(40, 0);


            // Create some shapes
            var triangleVertices = new Array(location1, location2, location5, location1);
            var triangle = new Microsoft.Maps.Polygon(triangleVertices, { fillColor: blue, strokeColor: blue });

            var squareVertices = new Array(location1, location2, location3, location4, location1);
            var square = new Microsoft.Maps.Polygon(squareVertices,{fillColor: purple, strokeColor:purple});

            // Add the shapes to the map
            map.entities.push(triangle);
            map.entities.push(square);
         }

         function ChangePolygonColor()
         {
            // Get the map square entity. We know square was the last entity added, 
            //    so we can calculate the index.
             var mapSquare = map.entities.get(map.entities.getLength()-1);
           
            // Get the current color
            var currentColor = mapSquare.getFillColor();
            
            if((currentColor.toString()) == (purple.toString()))
            {
               // Change it to green
               mapSquare.setOptions({fillColor: green, strokeColor:green});
            }
            else
            {
               // Change it back to purple
               mapSquare.setOptions({fillColor:purple, strokeColor:purple});                              
            }
         }
      </script>
   </head>
   <body onload="GetMap();">
      <div id='mapDiv' style="position:relative; width:400px; height:400px;"></div>
      <input id="btnChangeColor" type="button" value="Change Polygon Color" onclick="ChangePolygonColor();"/>       
   </body>
</html>

