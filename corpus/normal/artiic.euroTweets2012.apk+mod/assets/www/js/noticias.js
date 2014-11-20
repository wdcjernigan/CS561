// VARIABLES

// Guarda el pa�s (de momento �nicamente tenemos Espa�a (id=1))
var pais = 2;

// Guarda el id de la listView donde se monta la lista de tuits
var idListView = "tweets";

//Url del servicio de equipos
var urlNoticias = "http://soccer.artiic.com/soccer/artiic.php/rest/Noticias/datos/";

// Guarda la info de las noticias
// Es un array de objetos que contienen nombre, twitter, y si la noticia est� activa o no (se muestran sus tuits o no)
var noticias = [];


// FUNCIONES

// Funci�n inicial
function init() {
	
	urlNoticias += "idpais/"+pais+"?callback=?";
	
	// M�todo que se encargar� de capturar el click de refrescar
	// y actualizar� la lista de tweets
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