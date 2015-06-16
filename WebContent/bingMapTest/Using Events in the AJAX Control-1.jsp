<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
   <head>
      <title></title>
    

      <script type="text/javascript" src="http://ecn.dev.virtualearth.net/mapcontrol/mapcontrol.ashx?v=7.0&mkt=zh-TW"></script>

      <script type="text/javascript">

         var map = null;
         var noPins = true;      

         function GetMap()
         {
            // Initialize the map
            map = new Microsoft.Maps.Map(document.getElementById("myMap"),
                         {credentials:"AgE_keFlqr_70uAWHHEzvIdXuRctQ3dsmdVtVS-voP4gLu17fTYYW2axEN1ytNFG"}); 

            // Add a handler for the map click event.
            Microsoft.Maps.Events.addHandler(map, 'click', addPin);

            // Add a handler to function that will grey out 
            //    other pins in the collection when a new one is added
            Microsoft.Maps.Events.addHandler(map.entities, 'entityadded', shadePins);


         }

          function addPin(e) {
              if (e.targetType == "map") {
                  var point = new Microsoft.Maps.Point(e.getX(), e.getY());
                  var loc = e.target.tryPixelToLocation(point);
                  var pin = new Microsoft.Maps.Pushpin(loc);
 
                  map.entities.push(pin);
              }
          }


          function shadePins(e) {

              if (noPins) {
   
                 // If there aren't yet any pins on the map, do not grey the pin out.   
                 noPins = false;

              }
              else 
              {
                  var pin = null;

                  // Loop through the collection of pushpins on the map and grey out 
                  //    all but the last one added (which is at the end of the array). 
                  var i = 0;
                  for (i = 0; i < e.collection.getLength() - 1; i++) 
                  {
                      pin = e.collection.get(i);
                      pin.setOptions({ icon: "img/a.jpg" });                      
                  }
              }
          }

      </script>
   </head>
   <body onload="GetMap();">
      <div id='myMap' style="position:relative; width:400px; height:400px;"></div> <br>
      <b>Click the map to add a pushpin at that point.</b> <br>
   </body>
</html>
