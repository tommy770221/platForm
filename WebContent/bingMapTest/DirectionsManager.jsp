<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
   <head>
      <title></title>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

      <script type="text/javascript" src="http://ecn.dev.virtualearth.net/mapcontrol/mapcontrol.ashx?v=7.0&mkt=zh-TW"></script>

      <script type="text/javascript">
         
         var map = null;

         function GetMap()
         {
            // Initialize the map
            map = new Microsoft.Maps.Map(document.getElementById("mapDiv"),{credentials:"AgE_keFlqr_70uAWHHEzvIdXuRctQ3dsmdVtVS-voP4gLu17fTYYW2axEN1ytNFG"});
            Microsoft.Maps.loadModule('Microsoft.Maps.Directions', { callback: directionsModuleLoaded });

         }


         function directionsModuleLoaded()
         {
            // Initialize the DirectionsManager
            var directionsManager = new Microsoft.Maps.Directions.DirectionsManager(map);

            // Create start and end waypoints
            var startWaypoint = new Microsoft.Maps.Directions.Waypoint({address:"台北"});
            var endWaypoint = new Microsoft.Maps.Directions.Waypoint({address:"台中"});

            directionsManager.addWaypoint(startWaypoint);
            directionsManager.addWaypoint(endWaypoint);

            // Set the id of the div to use to display the directions
            directionsManager.setRenderOptions({ itineraryContainer: document.getElementById('itineraryDiv') });

            //Specify a handler for when an error occurs
            Microsoft.Maps.Events.addHandler(directionsManager, 'directionsError', displayError);
            
            Microsoft.Maps.Events.addHandler(directionsManager, 'directionsUpdated', displayMessage );

            // Calculate directions, which displays a route on the map
            directionsManager.calculateDirections();

         } 

         function displayError(e)
         {
            alert(e.message);
         }


      </script>
   </head>
   <body onload="GetMap();">
      <div id='mapDiv' style="position:relative; width:400px; height:400px;"></div>       
      <div id='itineraryDiv' style="position:relative; width:400px;"></div>
   </body>
</html>
