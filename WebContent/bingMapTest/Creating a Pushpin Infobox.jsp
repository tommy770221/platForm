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
         var pinInfobox = null;        

         function GetMap()
         {
            // Initialize the map
            map = new Microsoft.Maps.Map(document.getElementById("myMap"), {credentials:"AgE_keFlqr_70uAWHHEzvIdXuRctQ3dsmdVtVS-voP4gLu17fTYYW2axEN1ytNFG"}); 

            // Retrieve the location of the map center 
            var center = map.getCenter();
            
            // Add a pin to the center of the map
            var pin = new Microsoft.Maps.Pushpin(center, {text: '1'}); 

            // Create the infobox for the pushpin
            pinInfobox = new Microsoft.Maps.Infobox(pin.getLocation(), 
                {title: 'My Pushpin', 
                 description: 'This pushpin is located at (0,0).', 
                 visible: false, 
                 offset: new Microsoft.Maps.Point(0,15)});

            // Add handler for the pushpin click event.
            Microsoft.Maps.Events.addHandler(pin, 'click', displayInfobox);

            // Hide the infobox when the map is moved.
            Microsoft.Maps.Events.addHandler(map, 'viewchange', hideInfobox);


            // Add the pushpin and infobox to the map
            map.entities.push(pin);
            map.entities.push(pinInfobox);

         }

         function displayInfobox(e)
         {
            pinInfobox.setOptions({ visible:true });
         }                    

         function hideInfobox(e)
         {
            pinInfobox.setOptions({ visible: false });
         }
      </script>
   </head>
   <body onload="GetMap();">
      <div id='myMap' style="position:relative; width:500px; height:500px;"></div>
   </body>       
</html>
