
var pais = 1;	// Guarda el país (de momento únicamente tenemos España (id=1))

var urlClasificacion = "http://soccer.artiic.com/soccer/artiic.php/rest/Clasificacion/posiciones/idliga/2?callback=?"; // Url del servicio de clasificación
	
//var urlClasificacion = "http://soccer.artiic.com/soccer/artiic.php/rest/Clasificacion/posiciones/idliga/2?callback=?";


var claveEquipo = "miEquipo";	// El nombre de la clave con el que se graba el equipo en la memoria interna

var miEquipo = "";		// El equipo del usuario

var reload = false;		// Indica si el usuario quiere seleccionar nuevo equipo

var linkEquipo = "equipo.html";		// Url de la pantalla de equipo


// Muestra la lista de equipos para seleccionarlo
function listaEquipos() {
	
	//urlClasificacion += "idliga/"+pais+"?callback=?";
	// Mostramos imagen cargando
	 	$.mobile.showPageLoadingMsg();
	 	
 		
		var selecciones = ["alemania","suecia","rusia","republicacheca","portugal","polonia","irlanda","italia","inglaterra","holanda","grecia","francia","espana","dinamarca","croacia","ucrania"]; 
		var idPlantilla = ["21","35","34","33","32","31","30","29","28","27","26","25","24","23","22","36"]; 


		for (i=0;i<selecciones.length;i++){ 
		
	     	if (i%4 == 0) {
	 			$("#listaEquipos").append('<div class="ui-block-a" style="padding:0px 0px 10px 0px;"> '+'<a onclick="seleccionarEquipo('+idPlantilla[i]+')" href=""><img src="img/escudos/64x/'+selecciones[i]+'.png" width="" alt="image" /></a></div>');
			}
	 		else  if (i%4 == 1) {
	 			$("#listaEquipos").append('<div class="ui-block-b" style="padding:0px 0px 10px 0px;"> '+'<a href="javascript:seleccionarEquipo('+idPlantilla[i]+');"><img src="img/escudos/64x/'+selecciones[i]+'.png" width="" alt="image" /></a></div>');
			} 
	 		else  if (i%4 == 2) {
	 			$("#listaEquipos").append('<div class="ui-block-c" style="padding:0px 0px 10px 0px;"> '+'<a href="javascript:seleccionarEquipo('+idPlantilla[i]+');"><img src="img/escudos/64x/'+selecciones[i]+'.png" width="" alt="image" /></a></div>');
	 		} 
	 		else  if (i%4 == 3) {
	 			$("#listaEquipos").append('<div class="ui-block-d" style="padding:0px 0px 10px 0px;"> '+'<a href="javascript:seleccionarEquipo('+idPlantilla[i]+');"><img src="img/escudos/64x/'+selecciones[i]+'.png" width="" alt="image" /></a></div>');
	 		} 
		}
	 	
	$.mobile.hidePageLoadingMsg();
}

// Guarda el equipo en la memoria interna y va a la pagina del equipo
function seleccionarEquipo(idEquipo) {

	//Guardamos en la localStorage, para no estar accediendo siempre.
	writeLocalStorage(claveEquipo, idEquipo);
	writeLocalStorage("miEquipo", idEquipo);
	
	//Guardamos la variable en Android
	window.plugins.artiic.setMyTeam(idEquipo,function(r){console.log(r);},function(e){console.log(e);});
	
	window.location.href = linkEquipo;
	
}

function init() {
	
	// Obtenemos el parámetro reload si llega
	getUrlParams();

	// Si reload=true, se hace de nuevo la selección de equipo
	/*if (reload) {
		listaEquipos();
	}
	else {
		miEquipo = readLocalStorage(claveEquipo);
		
		// Si el equipo ya ha sido guardado anteriormente, lo recuperamos y mostramos la pantalla del equipo
		if (miEquipo != undefined && miEquipo != "") {
			seleccionarEquipo(miEquipo);
		}
		// Si no, mostramos la lista de equipos para seleccionarlo
		else {
			listaEquipos();
		}
	}*/
	
	//miEquipo = readLocalStorage(claveEquipo);
	window.plugins.artiic.getMyTeam(function(r){
		
		miEquipo = r;
		
		// Si el equipo ya ha sido guardado anteriormente, lo recuperamos y mostramos la pantalla del equipo
		if (miEquipo != undefined && miEquipo != "") {
			seleccionarEquipo(miEquipo);
		}
		// Si no, mostramos la lista de equipos para seleccionarlo
		else {
			listaEquipos();
		}
	
	},function(e){console.log(e)});
	
	
	
}
