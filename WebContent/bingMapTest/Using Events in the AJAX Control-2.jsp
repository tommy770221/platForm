<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
   <head>
      <title></title>

      <script type="text/javascript" src="http://ecn.dev.virtualearth.net/mapcontrol/mapcontrol.ashx?v=7.0&mkt=zh-TW"></script>

      <script type="text/javascript">

         var map = null;         

         function GetMap()
         {
            // Initialize the map
            map = new Microsoft.Maps.Map(document.getElementById("myMap"),
                         {credentials:"AgE_keFlqr_70uAWHHEzvIdXuRctQ3dsmdVtVS-voP4gLu17fTYYW2axEN1ytNFG"}); 

            //Add handler for the map click event.
            Microsoft.Maps.Events.addHandler(map, 'click', displayLatLong);


         }

          function displayLatLong(e) {
              if (e.targetType == "map") {
                  var point = new Microsoft.Maps.Point(e.getX(), e.getY());
                  var loc = e.target.tryPixelToLocation(point);
                  document.getElementById("textBox").value= loc.latitude + ", " + loc.longitude;

              }
          }

      </script>
   </head>
   <body onload="GetMap();">
      <div id='myMap' style="position:relative; width:400px; height:400px;"></div><br>
      <b>Click the map to display the coordinate values at that point.</b><br>
      Latitude, Longitude:       
      <input id='textBox' type="text" style="width:250px;"/>
   </body>
</html>
