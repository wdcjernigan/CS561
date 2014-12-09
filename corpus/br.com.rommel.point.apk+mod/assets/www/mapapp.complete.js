$('#page-map').live("pageshow", function() {
	$("#tags").change(function() {
		filtrarTag();
	});
	loadMap();
    $.mobile.fixedToolbars.setTouchToggleEnabled(false);
});

function loadMap(){
	$.mobile.showPageLoadingMsg();
	mapdata = { destination: new google.maps.LatLng(window.localStorage.getItem("lat"), window.localStorage.getItem("lon")) };
	//mapdata = { destination: new google.maps.LatLng(-10.9153091, -37.096678) }; //TESTAR EMULADOR
	
    $('#map_canvas').gmap({'center' : mapdata.destination, zoom: 15 })
    .bind('init', function() {
    	$('#map_canvas').gmap('addControl', 'tags-control', google.maps.ControlPosition.TOP_LEFT);
    	//MARKERS
    	$('#map_canvas').gmap('addMarker', {'tags': 'M,F', 'position': mapdata.destination, 'icon':'img/icon_voce.png', 'bounds': false } ).click(function() {
			$('#map_canvas').gmap('openInfoWindow', { 'content': 'Você!<br/><br/>'+mapdata.destination }, this);
		});
    	
    	var id = window.localStorage.getItem("id_usuario");
    	var url="http://www.rommel.com.br/point/json.php?rw=pointers_mapa&id="+id;
    	$.getJSON( url, function(data) {
    		if (data.qtd != "0"){
	    		$.each( data.markers, function(i, marker) {
	    			$('#map_canvas').gmap('addMarker', { 
	    				'tags': marker.sexo,
	    				'position': new google.maps.LatLng(marker.lat, marker.lon),
	    				'icon':'img/icon_'+marker.sexo+'.png',
	    				'bounds': true 
	    			});
		    		//}).click(function() {
	    			//	$('#map_canvas').gmap('openInfoWindow', { 'content': '<div style="float: left;"><img height="60" src="http://rommel.com.br/point/foto/'+marker.foto+'" /></div><div style="float: right;"><b>'+marker.nome+'</b><br /><table border="0" width="100%"><tr><td><a href="javascript:perfilUser('+marker.id+');"><img src="img/perfil.png" /></a></td><td><a href="javascript:pageMsgUser('+marker.id+');"><img src="img/chat.png" /></a></td></tr></table></div>' }, this);
	    			//});
	    		});
    		}
    	});
        //MARKERS

        filtrarTag();
        
        $.mobile.hidePageLoadingMsg();
    });
    $.mobile.hidePageLoadingMsg();//Quando volta do perfil pelo history.back
}

function filtrarTag(){
	$('#map_canvas').gmap('get', 'iw').close();
	$('#map_canvas').gmap('set', 'bounds', null);
	if ( $("#tags").val() == 'Todos' ) {
		$('#map_canvas').gmap('find', 'markers', { 'property': 'tags', 'value': $("#tags").val() }, function(marker, found) {
			marker.setVisible(true); 
			$('#map_canvas').gmap('addBounds', marker.position);	
		});
	} else {
		$('#map_canvas').gmap('find', 'markers', { 'property': 'tags', 'value': $("#tags").val(), 'delimiter': ',' }, function(marker, found) {
			if (found) {
				$('#map_canvas').gmap('addBounds', marker.position);
			}
			marker.setVisible(found); 
		});
	}
}