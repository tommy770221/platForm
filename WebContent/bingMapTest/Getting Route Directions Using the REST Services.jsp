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
            map = new Microsoft.Maps.Map(document.getElementById("mapDiv"),{credentials:"AgE_keFlqr_70uAWHHEzvIdXuRctQ3dsmdVtVS-voP4gLu17fTYYW2axEN1ytNFG", mapTypeId: Microsoft.Maps.MapTypeId.road }); 

  
         }

         function ClickRoute(credentials)
         {

            map.getCredentials(MakeRouteRequest);
         }


         function MakeRouteRequest(credentials)
         {
            var routeRequest = "http://dev.virtualearth.net/REST/v1/Routes?wp.0=" + document.getElementById('txtStart').value + "&wp.1=" + document.getElementById('txtEnd').value + "&routePathOutput=Points&output=json&jsonp=RouteCallback&key=" + credentials;

            CallRestService(routeRequest);

         }


          function RouteCallback(result) {

                          
             if (result &&
                   result.resourceSets &&
                   result.resourceSets.length > 0 &&
                   result.resourceSets[0].resources &&
                   result.resourceSets[0].resources.length > 0) {
                   
                     // Set the map view
                     var bbox = result.resourceSets[0].resources[0].bbox;
                     var viewBoundaries = Microsoft.Maps.LocationRect.fromLocations(new Microsoft.Maps.Location(bbox[0], bbox[1]), new Microsoft.Maps.Location(bbox[2], bbox[3]));
                     map.setView({ bounds: viewBoundaries});


                     // Draw the route
                     var routeline = result.resourceSets[0].resources[0].routePath.line;
                     var routepoints = new Array();
                     
                     for (var i = 0; i < routeline.coordinates.length; i++) {

                         routepoints[i]=new Microsoft.Maps.Location(routeline.coordinates[i][0], routeline.coordinates[i][1]);
                     }

                     
                     // Draw the route on the map
                     var routeshape = new Microsoft.Maps.Polyline(routepoints, {strokeColor:new Microsoft.Maps.Color(200,0,0,200)});
                     map.entities.push(routeshape);
                     
                 }
         }


         function CallRestService(request) 
         {
            var script = document.createElement("script");
            script.setAttribute("type", "text/javascript");
            script.setAttribute("src", request);
            document.body.appendChild(script);
         }

      </script>
   </head>
   <body onload="GetMap();">
      <div id='mapDiv' style="position:relative; width:400px; height:400px;"></div>
      <input id="txtStart" type="text" value="Seattle"/>
      <input id="txtEnd" type="text" value="Portland"/>
      <input type="button" value="Calculate Route" onclick="ClickRoute()"/>
   </body>
</html>
