// VARIABLES

// Guarda el país (de momento únicamente tenemos España (id=1))
var pais = 2;

// Guarda el equipo (pasado por parámetro)
var equipo = 0;

// Guarda el id de la listView donde se monta la lista de tuits
var idListView = "tweets";

// Url del servicio de equipos
var urlJugadores = "http://soccer.artiic.com/soccer/artiic.php/rest/Jugadores/datos/";

// Guarda la info de los equipos
// Es un array de objetos que contienen nombre, twitter, escudo, y si el equipo está activo o no (se muestran sus tuits o no)
var jugadores = [];

// Indica si venimos de la pantalla de miEquipo y tenemos que mostrar el botón de cambio de equipo (parámetro url)
var cambioEquipo = false;

// El nombre de la clave con el que se graba el equipo en la memoria interna
var claveEquipo = "miEquipo";

// El id del equipo guardado como favorito
var miEquipo = "";

// El nombre del equipo, para mostrar en la cabecera
var nombreEquipo = "";
 
// FUNCIONES

// Función inicial
function init() {
	
	// Obtenemos el valor del id del equipo pasado por parámetro
	// Se almacena en la variable equipo
	getUrlParams();
	if (readLocalStorage("equipo")!=null && readLocalStorage("equipo")!="") {
		equipo=readLocalStorage("equipo");
		window.localStorage.removeItem("equipo");
		cargar(equipo);
	}else{
		//equipo=readLocalStorage("miEquipo");
		window.plugins.artiic.getMyTeam(function(r){writeLocalStorage(claveEquipo, r);cargar(r);},function(e){console.log(e);});
	}
}

function cargar(equipo) {
	
	console.log("equipo recuperado: "+equipo);
	
	urlJugadores += "idliga/"+pais+"/idclub/"+equipo+"?callback=?";

	// Método que se encargará de capturar el click de refrescar
	// y actualizará la lista de tweets
	$("#refreshButton").click(function () {
		
		getTweets("", "", "", true, idListView, []);
		
	});
	
	// Método que se encargará de capturar el click de equipo favorito
	$("#equipoFavorito").click(function () {
		
		//Recuperamos los datos en el plugin y en el localStorage
		window.plugins.artiic.setMyTeam("",function(r){console.log(r);},function(e){console.log(e);});
		writeLocalStorage(claveEquipo, "");
		$("#equipoFavorito").hide();
		$("#equipoNoFavorito").show();
		
	});
	
	// Método que se encargará de capturar el click de equipo no favorito
	$("#equipoNoFavorito").click(function () {
		
		//Recuperamos los datos en el plugin y en el localStorage
		window.plugins.artiic.setMyTeam(equipo,function(r){console.log(r);},function(e){console.log(e);});
		writeLocalStorage(claveEquipo, equipo);
		$("#equipoNoFavorito").hide();
		$("#equipoFavorito").show();
		
	});
	
	// Si venimos de la pantalla de miEquipo, mostramos el botón para poder hacer el cambio
	/*if (cambioEquipo) {
		
		$("#cambioEquipoButton").show();
		
		// Método que se encargará de capturar el click de cambioEquipo
		// y nos envia a la pantalla de selección
		$("#cambioEquipoButton").click(function () {
			
			window.location.href = "miEquipo.html?reload=true";
			
		});
		
	}*/
	
	window.plugins.artiic.getMyTeam(function(r){writeLocalStorage(claveEquipo, r);},function(e){console.log(e);});
	miEquipo = readLocalStorage(claveEquipo);
	
	// Si el equipo ya ha sido guardado anteriormente, mostraremos el botón de favorito
	if (miEquipo != undefined && miEquipo != "" && miEquipo == equipo) {
		$("#equipoNoFavorito").hide();
		$("#equipoFavorito").show();
	}
	else { // si no, mostraremos el de no favorito
		$("#equipoFavorito").hide();
		$("#equipoNoFavorito").show();
	}
	// Mostramos imagen cargando
	 	$.mobile.showPageLoadingMsg();
	// Obtenemos la info de los jugadores
	$.getJSON(urlJugadores, function (data) {
		
		var i = 0;
		$.each(data, function (index, item) {
			
			if (item.idtwitter != null && item.idtwitter != "") {
				jugadores[i] = {
					nombre: item.nombre,
					twitter: item.idtwitter,
					activo: true
				};
				
				nombreEquipo = item.club;
				
				i++;
			}
			
		});
		
		// Ponemos el nombre del equipo en la cabecera
		$("#nombreEquipo").text(_(nombreEquipo));
		
		getImages(jugadores);
		// Obtenemos la info de los tweets
		getTweets(jugadores, "", "", false, idListView, []);
		
	});
	
	// Ocultamos imagen cargando
	$.mobile.hidePageLoadingMsg();

	
}
	