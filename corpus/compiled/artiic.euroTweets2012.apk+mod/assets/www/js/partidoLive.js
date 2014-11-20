// VARIABLES

// Guarda el pa�s (de momento �nicamente tenemos Espa�a (id=1))
var pais = 2;

// Guarda el id de la listView donde se monta la lista de tuits
var idListView = "tweets";

//Url del servicio de equipos
var urlEquipos = "http://soccer.artiic.com/soccer/artiic.php/rest/Equipo/datos/idpais/"+pais+"?callback=?";

// Guarda la info de los equipos
// Es un array de objetos que contienen nombre, twitter, escudo, y si el equipo est� activo o no (se muestran sus tuits o no)
var equipos = [];

// Twitter de la eurocopa que se mostrar� en todos los partidos
var extraTwitters = ["Eurocopa2012TM"];

// Guarda el resultado/hora del partido
//var resultado = "";
var idPartido = "";
var idLocal = "";
var idVisitante = "";

// FUNCIONES

function recuperarEventos() {
	
	var url = "http://soccer.artiic.com/soccer/artiic.php/rest/EventosPartidos/datosV1/idpartido/"+idPartido+"?callback=?";
	var golesLocal = 0;
	var golesVisitante = 0;
	var fecha = "";
	var marcador = "";
		
 	$.getJSON(url, function(data){
 	
 		// Si no hay eventos, tenemos que consultar el servicio de jornada para obtener el resultado o la hora del partido (si no ha empezado)
 		if (data.error != undefined) {
 			var urlJornada = "http://soccer.artiic.com/soccer/artiic.php/rest/Jornada/jornadaActual/idliga/2?callback=?";
 			
 			$.getJSON(urlJornada, function(dataJornada){
 				$.each(dataJornada, function (i, itemJornada){
 					if (itemJornada.idpartido == idPartido) {
 						fecha = itemJornada.fecha;
 						golesLocal = itemJornada.golesLocal;
 						golesVisitante = itemJornada.golesVisitante;
 						
 						if (golesLocal != null) {
 							marcador = golesLocal + " - " + golesVisitante;
 						}
 						else {
 							marcador = fecha.substring(11, 19);
 						}
 					}
 				});
 				
 				// Informamos el marcador
 				$("#resultado").html("<b>" + marcador + "</b>");
 				
 			}); 
 		}
 		else {
 			var eventosLocal = new Array();
	 		var eventosVisitante = new Array();
	 		var l = 0;
	 		var v = 0;
			
		      $.each(data, function(i,item){
		    	 var evento = new Object();
		    	 
		    	 evento.tipo  = item.tipo;
	    		 evento.minuto = item.minuto;
	    		 evento.jugador = item.texto;
	    		 
	    		 golesLocal = item.golesLocal;
	    		 golesVisitante = item.golesVisitante;
		    	 
		    	 if (idLocal == item.idplantilla) {
		    		 eventosLocal[l] = evento;
		    		 l++;
		    	 }
		    	 else {
		    		 eventosVisitante[v] = evento;
		    		 v++;
		    	 }
		      });
		      
		      marcador = golesLocal + " - " + golesVisitante;
		      // Informamos el marcador
		      $("#resultado").html("<b>" + marcador + "</b>");
		      
		      $("#eventos").empty();
		      //$("#eventos").append('<div data-role="collapsible" data-theme="b" data-content-theme="b" class="cabeceraLive"><h3><img id="escudoLocal" class="escudoLive" src="" /> <span id="nombreLocal"></span> <span id="resultado"></span> <span id="nombreVisitante"></span> <img id="escudoVisitante" class="escudoLive" src="" /></h3><fieldset class="ui-grid-a"><div class="ui-block-a local"></div><div class="ui-block-b visitante" style="text-align:right"></div></fieldset></div>');
		      $("#eventos").append('<div data-role="collapsible" data-theme="b" data-content-theme="b" class="detalle"><h3>'+_('Detalle')+'</h3><fieldset class="ui-grid-a"><div class="ui-block-a local"></div><div class="ui-block-b visitante" style="text-align:right"></div></fieldset></div>');
		      
		      $.each(eventosLocal, function(i,eventoLocal){
		    	  	if (eventoLocal.tipo == 'G') {
		    	  		$(".local").append("<p class='ui-li-desc eventoPartido'><img src='app/img/Soccer-Ball-icon.png' /> "+eventoLocal.jugador+"</p>");
		    	  	}
		    	  	else if (eventoLocal.tipo == 'Y') {
		    	  		$(".local").append("<p class='ui-li-desc eventoPartido'><img src='app/img/yellow.png' /> "+eventoLocal.jugador+"</p>");
		    	  	}
		    	  	else if (eventoLocal.tipo == 'R') {
		    	  		$(".local").append("<p class='ui-li-desc eventoPartido'><img src='app/img/red.png' /> "+eventoLocal.jugador+"</p>");
		    	  	}
		    	  	else if (eventoLocal.tipo == 'DY') {
		    	  		$(".local").append("<p class='ui-li-desc eventoPartido'><img src='app/img/Yellow-and-Red-Card.png' /> "+eventoLocal.jugador+"</p>");
		    	  	}
			    	 
			      });
		      
		      $.each(eventosVisitante, function(i,eventoVisitante){
		    	  if (eventoVisitante.tipo == 'G') {
		    		  $(".visitante").append("<p class='ui-li-desc eventoPartido'><img src='app/img/Soccer-Ball-icon.png' /> "+eventoVisitante.jugador+"</p>");
		    	  }
		    	  else  if (eventoVisitante.tipo == 'Y') {
		    		  $(".visitante").append("<p class='ui-li-desc eventoPartido'><img src='app/img/yellow.png' /> "+eventoVisitante.jugador+"</p>");
		    	  }
		    	  else  if (eventoVisitante.tipo == 'R') {
		    		  $(".visitante").append("<p class='ui-li-desc eventoPartido'><img src='app/img/red.png' /> "+eventoVisitante.jugador+"</p>");
		    	  }
		    	  else  if (eventoVisitante.tipo == 'DY') {
		    		  $(".visitante").append("<p class='ui-li-desc eventoPartido'><img src='app/img/Yellow-and-Red-Card.png' /> "+eventoVisitante.jugador+"</p>");
		    	  }
		    	  
		    	  	
			      });
		      
		      	$('div[data-role=collapsible]').collapsible();
		   
 		}
 		
 	});

}

function gestionClicksBanderas() {
	
	$("img[class='escudoLive']").each( function(index, item) {
     	if (equipos[index].activo == true) {
     		$(this).addClass("item_selected");
     	}

	    $(this).tap(function() {
	    	
			equipos[index].activo = !equipos[index].activo;
			if (equipos[index].activo == true) {
	 			$(this).addClass("item_selected");
	 		}
	 		else {
	 			$(this).removeClass("item_selected");
	 		}
 		
 		
			getTweets(equipos, "", "", false, "tweets", extraTwitters);
		});
	    
	});
	
}

// Monta la cabecera del resultado con los nombres y escudos de los equipos
function montarCabecera(equipos) {

	$("#cabeceraLive").text(equipos[0].nombre + " - " + equipos[1].nombre);
	$("#escudoLocal").attr("src", "img/escudos/64x/" + equipos[0].escudo);
	$("#escudoVisitante").attr("src", "img/escudos/64x/" + equipos[1].escudo);
	
}

// Funci�n inicial
function init() {
	
	// Obtenemos los valores de los ids de los equipos pasados por par�metro
	getUrlParams();
	//if (readLocalStorage("idPartido") == null && readLocalStorage("idPlantillaLocal") == null && readLocalStorage("idPlantillaVisitante") == null) {
	if (idPartido == null ||  idPartido == "") {
		idPartido=readLocalStorage("idPartido");
		idLocal=readLocalStorage("idPlantillaLocal");
		idVisitante=readLocalStorage("idPlantillaVisitante");
		//Los eliminamos para los partidos de notificaciones que los lea de la url.
		window.localStorage.removeItem("idPartido");
		window.localStorage.removeItem("idPlantillaLocal");
		window.localStorage.removeItem("idPlantillaVisitante");
	//}	
	}
	
	// M�todo que se encargar� de capturar el click de refrescar
	// y actualizar� la lista de tweets
	$("#refreshButton").click(function () {
		
		getTweets("", "", "", true, idListView, []);
		
		recuperarEventos();
		
	});
	
	// Obtenemos la info de los equipos
	$.getJSON(urlEquipos, function (data) {
		
		$.each(data, function (index, item) {
			
			if (item.idclub == idLocal) {
				
				equipos[0] = {
					nombre: _(item.nombre),
					twitter: item.idtwitter,
					escudo: item.escudo,
					activo: true					
				};
			}
			
			if (item.idclub == idVisitante) {
				equipos[1] = {
					nombre: _(item.nombre),
					twitter: item.idtwitter,
					escudo: item.escudo,
					activo: true					
				};
			}
			
		});
		
		// Informamos la cabecera con la info de los equipos
		montarCabecera(equipos);		
		
		gestionClicksBanderas();
		
		// Informamos los checkboxs con los equipos
		//montarChecksEquipos(equipos);
		
		// Obtenemos la info de los tweets
		getTweets(equipos, "", "", false, idListView, extraTwitters);
		
		recuperarEventos();
		
	});
	
	
	
}