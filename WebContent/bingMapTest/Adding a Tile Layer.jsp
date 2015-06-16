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
            var map = new Microsoft.Maps.Map(document.getElementById("mapDiv"),{credentials:"AgE_keFlqr_70uAWHHEzvIdXuRctQ3dsmdVtVS-voP4gLu17fTYYW2axEN1ytNFG", center:new Microsoft.Maps.Location(48.03,-122.4), zoom:12, mapTypeId: Microsoft.Maps.MapTypeId.road }); 

            try
            {
               // Create the tile layer source
               var tileSource = new Microsoft.Maps.TileSource({uriConstructor: 'http://www.microsoft.com/maps/isdk/ajax/layers/lidar/{quadkey}.png'});

               // Construct the layer using the tile source
               var tilelayer= new Microsoft.Maps.TileLayer({ mercator: tileSource, opacity: .7 });

               // Push the tile layer to the map
               map.entities.push(tilelayer);

            }
            catch(err)
            {
               alert( 'Error Message:' + err.message);
            }
         }

      </script>
   </head>
   <body onload="GetMap();">
      <div id='mapDiv' style="position:relative; width:400px; height:400px;"></div>       
   </body>
</html>
