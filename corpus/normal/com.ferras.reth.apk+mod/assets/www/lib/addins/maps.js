as.createStaticMap  = function(id, pos, zoom, render, res)
{
	var cont = as.$(id);
	cont.innerHTML = '<img src="http://maps.google.com/maps/api/staticmap?center=' + pos[0] + ',' + pos[1] + '&markers=color:red|' + pos[0] + ',' + pos[1] + '&zoom=' + zoom + '&maptype=' + render + '&size=' + res[0] + 'x' + (res[1]+25) + '&sensor=false" onclick="window.open()"/>';
	
	as.SetOverflow(cont, 'hidden');
	as.SetHei(cont, res[1]);
};
as.createMap        = function(id, zoom, pos)
{
	return new google.maps.Map(as.$(id), { zoom: zoom, center: new google.maps.LatLng(pos[0], pos[1]), mapTypeId: google.maps.MapTypeId.ROADMAP, streetViewControl: false, zoomControlOptions: false, mapTypeControl: false });
};
as.createInfoWindow = function()
{
	return new google.maps.InfoWindow({ content: '' });
};
as.createMarker     = function(map, pos, infoWindow, markup)
{
	var image = new google.maps.MarkerImage('assets/marker.PNG', null, null, null, new google.maps.Size(15, 35));
	var marker = new google.maps.Marker({ position: new google.maps.LatLng(pos[0], pos[1]), map: map, icon: image });
	
	if (infoWindow !== undefined)
	{
		google.maps.event.addListener(marker, 'click', function() { infoWindow.content = markup; infoWindow.open(map, marker); });
	}
	return marker;
};
as.clearMarkers     = function(map, markers)
{
	for (var d=0; d<as.GetLen(markers); d++)
	{
		markers[d].setMap(null);
	}
};
