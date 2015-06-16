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
         var directionsManager = null;

         function GetMap()
         {
            // Initialize the map
            map = new Microsoft.Maps.Map(document.getElementById("mapDiv"),{credentials:"AgE_keFlqr_70uAWHHEzvIdXuRctQ3dsmdVtVS-voP4gLu17fTYYW2axEN1ytNFG"});
            Microsoft.Maps.loadModule('Microsoft.Maps.Directions', { callback: directionsModuleLoaded });

         }



         function directionsModuleLoaded()
         {
            // Initialize the DirectionsManager
            directionsManager = new Microsoft.Maps.Directions.DirectionsManager(map);

            // Create start and end waypoints
            var startWaypoint = new Microsoft.Maps.Directions.Waypoint({ address: "Taipei" }); 
            var endWaypoint = new Microsoft.Maps.Directions.Waypoint({ address: "Taipei 101" } );

            directionsManager.addWaypoint(startWaypoint);
            directionsManager.addWaypoint(endWaypoint);

            // Set the id of the div to use to display the directions
            directionsManager.setRenderOptions({ itineraryContainer: document.getElementById('itineraryDiv') });

            // Specify a handler for when an error occurs
            Microsoft.Maps.Events.addHandler(directionsManager, 'directionsError', displayError);

            // Calculate directions, which displays a route on the map
            directionsManager.calculateDirections();

         } 

         function displayError(e)
         {
            // Display the error message
            alert(e.message);

            // If the error is a disambiguation error, display the results.
            if (e.responseCode == Microsoft.Maps.Directions.RouteResponseCode.waypointDisambiguation)
            {
               DisplayDisambiguation();
            }
         }

         function DisplayDisambiguation()
         {
            var results = "";

            var waypoints = directionsManager.getAllWaypoints();

            var i = 0;
            for (i=0; i<waypoints.length; i++)
            {
               var disambigResult = waypoints[i].getDisambiguationResult();

               if (disambigResult != null)
               {
                  results = results + "Address matches for " + waypoints[i].getAddress() + ":\n";

                  if(disambigResult.businessSuggestions.length != 0)
                  {
                     var j = 0;
                     for (j=0; j<disambigResult.businessSuggestions.length; j++)
                     {
                        results = results + disambigResult.businessSuggestions[j].name + ", " + disambigResult.businessSuggestions[j].address + "\n";
                     }
                  }
                  else if (disambigResult.locationSuggestions.length != 0)
                  {
                     var k = 0;
                     for (k=0; k<disambigResult.locationSuggestions.length; k++)
                     {
                        results = results + disambigResult.locationSuggestions[k].suggestion + "\n";
                     }
                  }
                  else
                  {
                     results = results + disambigResult.headerText + "\n";
                  }
               }                              
            }
            
            alert(results);

         }

      </script>
   </head>
   <body onload="GetMap();">
      <div id='mapDiv' style="position:relative; width:400px; height:400px;"></div>       
      <div id='itineraryDiv' style="position:relative; width:400px;"></div>
   </body>
</html>
