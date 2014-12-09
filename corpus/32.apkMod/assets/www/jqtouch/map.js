var first_run = true;
var map = null;
var markers = new Array(); 
var wpid = null;
//var roskilde = new google.maps.LatLng(41.34405,1.701207);
//var roskilde = new google.maps.LatLng(position.coords.latitude,position.coords.longitude);

var initialLocation = new google.maps.LatLng(position.coords.latitude,position.coords.longitude);
var browser_support = new Boolean();
var friends = new Array();


function initialize() {
    //alert();
	//resize_map();
	var options = {
		center: initialLocation,
		zoom: 15,
		minZoom: 15,
		maxZoom: 17,
		disableDefaultUI: true,
		backgroundColor: '#FFFFFF',
		mapTypeId: google.maps.MapTypeId.ROADMAP
	};
	map = new google.maps.Map(document.getElementById("map_canvas"), options);
	get_position();
	jQT.setPageHeight();
}

function get_position() {
	// Try W3C Geolocation (Preferred)
	if(navigator.geolocation) {
		browser_support = true;
		wpid = navigator.geolocation.watchPosition(geo_success);
	// Try Google Gears Geolocation
	} else if (google.gears) {
		browser_support = true;
		var geo = google.gears.factory.create('beta.geolocation');
		geo.getCurrentPosition(geo_success, geo_error);
	// Browser doesn't support Geolocation
	} else {
		browser_support = false;
		geo_error();
	}
}

function geo_success(position) {
	initialLocation = new google.maps.LatLng(position.coords.latitude,position.coords.longitude);
	//initialLocation = new google.maps.LatLng(41.34405,1.701207);
	if (first_run == true) {
		create_marker(initialLocation);
		map.setCenter(initialLocation);
		first_run = false;
	}
	////$.get('http://test.team-space.co.uk/update_position.php', {id: localStorage.user_id, long: position.coords.longitude, lat: position.coords.latitude});
	////update_marker(localStorage.user_id, initialLocation);
}

function geo_error(error) {
	console.log('error', error.code + ': ' + error.message);
	if (browser_support == true) {
		
			navigator.notification.alert(
				 'Ha fallat el servei de geolocalització.',
				 alertDismissed,         
				 'Festa Major',          
				 'Acceptar'                  
				 );
		
		//alert("Ha fallat el servei de geolocalitzaci&oacute;.");
		if (wpid != null) {
			navigator.geolocation.clearWatch(wpid);
			wpid = null;
		}
	} else {
		
				navigator.notification.alert(
				 'El teu dispositiu no suporta geolocalització.',
				 alertDismissed,         
				 'Festa Major',          
				 'Acceptar'                  
				 );

	}
}

function create_marker(position) {
	var icon = new google.maps.MarkerImage('imatges/pum.png', new google.maps.Size(56, 59), new google.maps.Point(0,0), new google.maps.Point(28, 59));
	markers = new google.maps.Marker({
		clickable: false,
		map: map,
		icon: icon,
		position: position
	});
	return markers;
	
}

function update_marker(position) {
	if (markers== undefined) {
		create_marker(position);
	}
	markers.setPosition(position);
}

function resize_map() {
	var useragent = navigator.userAgent;
	if (useragent.indexOf('iPhone') != -1 || useragent.indexOf('Android') != -1 ) {
		$('#map_canvas').width('100%').height('100%');
	} else {
		$('#map_canvas').width('600px').height('800px');
	}
}