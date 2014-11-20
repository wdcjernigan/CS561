// VARIABLES

// Guarda el país (de momento únicamente tenemos España (id=1))
var pais = 2;

// Guarda el id de la listView donde se monta la lista de tuits
var idListView = "tweets";

//Url del servicio de equipos
var urlNoticias = "http://soccer.artiic.com/soccer/artiic.php/rest/Noticias/datos/";

// Guarda la info de las noticias
// Es un array de objetos que contienen nombre, twitter, y si la noticia está activa o no (se muestran sus tuits o no)
var noticias = [];


// FUNCIONES

// Función inicial
function init() {
	
	urlNoticias += "idpais/"+pais+"?callback=?";
	
	// Método que se encargará de capturar el click de refrescar
	// y actualizará la lista de tweets
	$("#refreshButton").click(function () {
		
		getTweets("", "", "", true, idListView, []);
		
	});
	// Mostramos imagen cargando
 	$.mobile.showPageLoadingMsg();
	
	// Obtenemos la info de las noticias
	$.getJSON(urlNoticias, function (data) {
		
		var i = 0;
		$.each(data, function (index, item) {
			
			if (item.idtwitter != null && item.idtwitter != "") {
				noticias[i] = {
					nombre: item.nombre,
					twitter: item.idtwitter,
					activo: true
				};
				
				i++;
			}
			
		});
		
		getImages(noticias);
		
		// Obtenemos la info de los tweets
		getTweets(noticias, "", "", false, idListView, []);
		
	});
	// Ocultamos imagen cargando
	$.mobile.hidePageLoadingMsg();
	
}