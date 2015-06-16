<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <title>Find Near Route Demo</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <style type="text/css">
        html
        {
            overflow:hidden;
            font-family: Verdana;
            font-size: 12px;
            width:100%;
            height:100%;
        }
        
        body
        {
            width:100%; 
            height:100%; 
            margin:0 0 0 0;
        }
    </style>
    <script type="text/javascript" src="http://ecn.dev.virtualearth.net/mapcontrol/mapcontrol.ashx?v=7.0&mkt=zh-TW"></script>
    <script type="text/javascript">
        window.onload = GetMap;
        window.onresize = Resize;

        var bmKey = "AgE_keFlqr_70uAWHHEzvIdXuRctQ3dsmdVtVS-voP4gLu17fTYYW2axEN1ytNFG";
        var map = null;
        var MM = Microsoft.Maps;
        var directionsManager;
        var directionsErrorEventObj;
        var directionsUpdatedEventObj;
        var trafficFlowVisible = false;
        var trafficFlowLayer = null;
        var trafficIncidentLayer = null;
        var infoBoxLayer = null;
        var startLat = null;
        var startLon = null;
        var endLat = null;
        var endLon = null;

        function GetMap() {
            map = new MM.Map(document.getElementById('myMap'), { 
                credentials: bmKey,
                mapTypeId: MM.MapTypeId.road,
                bounds: MM.LocationRect.fromCorners(new MM.Location(49.0, -125.0), new MM.Location(25.0, -80.0)),
                enableClickableLogo: false,
                enableSearchLogo: false
            });

            Resize();
        }

        function createDirectionsManager() {
            var displayMessage;
            if (!directionsManager) {
                directionsManager = new MM.Directions.DirectionsManager(map);
            }
            directionsManager.resetDirections();
            directionsErrorEventObj = MM.Events.addHandler(directionsManager, 'directionsError', function (arg) { alert(arg.message) });
            directionsUpdatedEventObj = MM.Events.addHandler(directionsManager, 'directionsUpdated', FindTrafficIncidentsNearRoute );
        }

        function createDrivingRoute() {
            if (!directionsManager) { createDirectionsManager(); }
            var options = directionsManager.getRequestOptions();
            options.routeDraggable = false;
            directionsManager.resetDirections();
            directionsManager.setRequestOptions({ routeMode: MM.Directions.RouteMode.driving });
            var myStart = new MM.Directions.Waypoint({ address: document.getElementById('txtStart').value });
            directionsManager.addWaypoint(myStart);
            var myEnd = new MM.Directions.Waypoint({ address: document.getElementById('txtEnd').value });
            directionsManager.addWaypoint(myEnd);
            directionsManager.setRequestOptions(options);
            directionsManager.setRenderOptions({ itineraryContainer: document.getElementById('directionsItinerary') });
            directionsManager.calculateDirections();
        }

        function createDirections() {
            if (!directionsManager) {
                MM.loadModule('Microsoft.Maps.Directions', { callback: createDrivingRoute });
            }
            else {
                createDrivingRoute();
            }
        }

        function Resize() {
            windowWidth = document.body.clientWidth;
            windowHeight = document.body.clientHeight;
            document.getElementById('directionsItinerary').style.height = (windowHeight - 155) + "px";
            document.getElementById('myMap').style.width = (windowWidth - 310) + "px";
            document.getElementById('myMap').style.height = (windowHeight - 10) + "px";
        }

        function ToggleTraffic() {
            if (trafficFlowVisible == false) {
                MM.loadModule('Microsoft.Maps.Traffic', {
                    callback: function () {
                        trafficFlowLayer = new MM.Traffic.TrafficLayer(map);
                        trafficFlowLayer.show();
                    }
                });
                trafficFlowVisible = true;
            }
            else {
                trafficFlowLayer.hide();
                trafficFlowVisible = false;
            }
        }

        function FindTrafficIncidentsNearRoute(result) {
            startLat = result.route[0].routeLegs[0].startWaypointLocation.latitude;
            startLon = result.route[0].routeLegs[0].startWaypointLocation.longitude;
            endLat = result.route[0].routeLegs[0].endWaypointLocation.latitude;
            endLon = result.route[0].routeLegs[0].endWaypointLocation.longitude;
            map.getCredentials(TrafficIncidentRequest);
        }

        function TrafficIncidentRequest(credentials) {
            var request = "http://spatial.virtualearth.net/REST/v1/data/8F77935E46704C718E45F52D0D5550A6/TrafficIncidents/TrafficIncident?" +
                "key=" + credentials + 
                "&$format=json" +
                "&jsonp=callbackFindTrafficIncidentsNearRoute" +
                "&spatialFilter=nearroute('" +
                    startLat + "," +
                    startLon + "','" +
                    endLat + "," +
                    endLon + "')";

            CallRestService(request);
        }

        function callbackFindTrafficIncidentsNearRoute(result) {
            if (result &&
                result.d &&
                result.d.results) {
                try {
                    try {
                        trafficIncidentLayer.clear();
                        infoBoxLayer.clear();
                    }
                    catch (err) {
                        trafficIncidentLayer = new MM.EntityCollection;
                        infoBoxLayer = new MM.EntityCollection;
                    }
                    for (i = 0; i < result.d.results.length; i++) {
                        switch (result.d.results[i].Severity) {
                            case 'LowImpact':
                                var pushpinOptions = { icon: 'green.png', height: 30, width: 30, anchor: new MM.Point(15, 15) };
                                break;
                            case 'Minor':
                                var pushpinOptions = { icon: 'green.png', height: 30, width: 30, anchor: new MM.Point(15, 15) };
                                break;
                            case 'Moderate':
                                var pushpinOptions = { icon: 'orange.png', height: 30, width: 30, anchor: new MM.Point(15, 15) };
                                break;
                            case 'Serious':
                                var pushpinOptions = { icon: 'red.png', height: 30, width: 30, anchor: new MM.Point(15, 15) };
                                break;
                        }
                        var pushpin = new MM.Pushpin(new MM.Location(result.d.results[i].Latitude, result.d.results[i].Longitude), pushpinOptions);
                        MM.Pushpin.prototype.title = null;
                        pushpin.title = result.d.results[i].Type;
                        MM.Pushpin.prototype.description = null;
                        pushpin.description = result.d.results[i].Description + '<br><br>' +
                            'From: ' + result.d.results[i].StartTimeUTC + '<br>' +
                            'To: ' + result.d.results[i].EndTimeUTC + '<br>' +
                            'Severity: ' + result.d.results[i].Severity;
                        pushpinClick = MM.Events.addHandler(pushpin, 'click', showInfoBox);
                        trafficIncidentLayer.push(pushpin);
                    }
                    map.entities.push(trafficIncidentLayer);
                    map.entities.push(infoBoxLayer);
                }
                catch (err) {
                }
                var script;
                while (script = document.getElementById('JSONP')) {
                    script.parentNode.removeChild(script);
                }
            }
            else {
                alert('error');
            }
        }

        function showInfoBox(e) {
            if (e.targetType = "pushpin") {
                infoBoxLayer.clear();
                infobox = new MM.Infobox(e.target.getLocation(), { title: e.target.title, description: e.target.description });
                infoBoxLayer.push(infobox);
            }
        }

        function CallRestService(request) {
            var script = document.createElement("script");
            script.setAttribute("type", "text/javascript");
            script.setAttribute("src", request);
            document.body.appendChild(script);
        }
    </script>
</head>
 <body>
    <div style='position:absolute; top:2px; left:5px; width:300px; height:300px;'>
        <table style='width:100%;'>
            <tr>
                <td style='width:70px;'>Start</td>
                <td><input id="txtStart" type="text" style='width:230px;'/></td>
            </tr>
            <tr>
                <td style='width:70px;'>End</td>
                <td><input id="txtEnd" type="text" style='width:230px;'/></td>
            </tr>
            <tr>
                <td colspan='2'><input type="button" value="Get Directions" onclick="createDirections();" style="width:295px" /></td>
            </tr>
            <tr>
                <td colspan='2'><input type="button" value="Toggle Traffic Flow" onclick="ToggleTraffic();" style="width:295px" /></td>
            </tr>
        </table>
    </div>
    <div id='directionsItinerary' style='position:absolute; top:150px; left:5px; width:295px; height:300px; overflow-y:auto;'></div>
    <div id='myMap' style="position:absolute; top:5px; left:305px; width:400px; height:400px;"></div>
</body>
</html>
