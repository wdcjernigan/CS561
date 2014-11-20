// Obtiene los parámetros pasados por la url
function getUrlParams() {
	var Url = location.href;
	if (Url.indexOf("?") != -1) {
		Url = Url.replace(/.*\?(.*?)/,"$1");
		Variables = Url.split ("&");
		for (var i = 0; i < Variables.length; i++) { 
			Separ = Variables[i].split("="); 
			eval (Separ[0]+'="'+Separ[1]+'"');
		}
	}
}

// Escribe en la memoria interna
function writeLocalStorage(key, value) {
    window.localStorage.setItem(key, value);
}

// Lee de la memoria interna
function readLocalStorage(key) {
    var value = window.localStorage.getItem(key);
    return value;
}

// Muestra el mensaje de cargando y bloquea la pantalla
function showLoading() {
	if ($('#block-ui').length == 0) {
		$('body').append('<div id="block-ui"></div>');
		$.mobile.showPageLoadingMsg("a", "cargando", false);
	}
}

// Oculta el mensaje de cargando y desbloquea la pantalla
function hideLoading() {
	if ($('#block-ui').length > 0) {
		$.mobile.hidePageLoadingMsg();
		$('#block-ui').remove();
	}
}

function loadjscssfile(filename, filetype){
	 if (filetype=="js"){ //if filename is a external JavaScript file
	  var fileref=document.createElement('script')
	  fileref.setAttribute("type","text/javascript")
	  fileref.setAttribute("src", filename)
	 }
	 else if (filetype=="css"){ //if filename is an external CSS file
	  var fileref=document.createElement("link")
	  fileref.setAttribute("rel", "stylesheet")
	  fileref.setAttribute("type", "text/css")
	  fileref.setAttribute("href", filename)
	 }
	 if (typeof fileref!="undefined")
	  document.getElementsByTagName("head")[0].appendChild(fileref);
}

function showdate(mydate){
    var year = mydate.getYear();
    if (year < 1000)
     year += 1900;
    var day = mydate.getDay();
    var month = mydate.getMonth();
    var daym = mydate.getDate();
    if (daym < 10)
     daym = "" + daym;
   
    if (month==7) {
    	return dayarray7[day] + ", " + daym + " " + montharray[month-1];
    }
    else {
    	return dayarray[day] + ", " + daym + " " + montharray[month-1];
    }

}
