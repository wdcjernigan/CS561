// Variable que almacena la url de refresco
var refreshUrl = "";

function getImages(jugadores) {
	
	
	var screenName = "";
	
	// Añadimos la lista de twitters
		$.each(jugadores, function(index, item){
			if (item.activo) {
				if (screenName == "")
					screenName += item.twitter.substring(1);
	 	 		else
	 	 			screenName += "," + item.twitter.substring(1);
			}
	 	});
	
	var urlTwitter = "https://api.twitter.com/1/users/lookup.json?";
	var urlParams = "screen_name="+screenName+"&include_entities=true";
	var urlCallback = "&callback=?";
	var urlFinal = "";
	var avatar = "";
	
	
	var output = new Object();
	var args = new Object();
	var images = new Array();
	output.uuid = "carousel";
	
	args.scrollInterval = 200;
	args.itemWidth = 70;
	args.itemHeight = 70;
	args.showNav = false;
	
	var image = new Object();
	
	output.args = args;
	
	
	/*var carousel = new $.widgets.Carousel( {
		uuid : "carousel",
		args : { "scrollInterval" : 200,"itemWidth":75,"itemHeight":78, "showNav": false
		},
		value : [
		{ "title" : "",
		"image" : "http://a0.twimg.com/profile_images/1896946896/M_twitter_normal.jpg"
		},
		{ "title" : "",
		"image" : "img/escudos/64x/villarreal.png"
		},
		{ "title" : "",
		"image" : "img/escudos/64x/valencia.png"
		},
		{ "title" : "",
		"image" : "img/escudos/64x/zaragoza.png"
		},
		{ "title" : "",
		"image" : "img/escudos/64x/sevilla.png"
		},
		{ "title" : "",
		"image" : "img/escudos/64x/barcelona.png"
		},
		{ "title" : "",
		"image" : "img/escudos/64x/betis.png"
		},
		{ "title" : "",
		"image" : "img/escudos/64x/malaga.png"
		}
		]
		});*/
	
	
	
	urlFinal = urlTwitter + urlParams + urlCallback;
	
	$.getJSON(urlFinal, function(data) {
		
 				
 		$.each(data, function(index, item) {
 			$.each(jugadores, function(index, jugador){
 				if (jugador.twitter.substring(1).toLowerCase() == item.screen_name.toLowerCase()) {
 					jugador.image = item.profile_image_url;
 					jugador.title = "";
 				}
 		 	});
 			
  
    		// Montamos el elemento de la lista con la info del tweet
  

 		});
 		
 		//output.value = images;
 		output.value = jugadores;
 		var carousel = new $.widgets.Carousel(output);
 		 				
 	});
	
	
	
}

function montarCarrusel(images) {
	console.log("carrusel montarCarrusel ini");
	var output = new Object();
	var args = new Object();
	output.uuid = "carousel";
	
	args.scrollInterval = 50;
	args.itemWidth = 70;
	args.itemHeight = 70;
	args.showNav = false;
	
	output.args = args;

	output.value = images;
	console.log("carrusel antes new carousel");
	var carousel = new $.widgets.Carousel(output);
	console.log("carrusel montarCarrusel fi");
}

// Función que obtiene los tweets
// Parámetros:
// - fromList: array que contiene los la info de los twitters que queremos mostrar (id, nombre, activo (si se muestra o no))
// - since: fecha de inicio. Formato yyyy-mm-dd (opcional)
// - until: fecha de fin. Formato yyyy-mm-dd (opcional)
// - refresh: booleano que indica si vamos a hacer un refresco de la lista actual
// - idListView: id del listView donde cargaremos la lista de tuits
// - extraTwitters: array que contiene twitters extras que se quieran añadir
// Tenemos dos opciones para hacer la carga de tuits:
// 1) En una primera carga, pasamos el fromList, since i until
// 2) Si queremos hacer un refresco de la lista, pasamos el refreshUrl
function getTweets(fromList, since, until, refresh, idListView, extraTwitters) {

	var urlTwitter = "http://search.twitter.com/search.json";
	var urlParams = "&result_type=recent&rpp=100";
	var urlCallback = "&callback=?";
	var urlFinal = "";
	var urlFrom = "";
	var urlInterval = "";
	var screenname = "";
	var tweet = "";
	var avatar = "";
	var created_at = "";
	var auxList = "";
	var image = null;
	var imageList = [];
	
	// Si es un refresh, refrescamos la consulta anterior
 	if (refresh) {
 		urlFinal = urlTwitter + refreshUrl + urlCallback;
 	}
 	// Si no, si tenemos la lista de twitters a mostrar, montamos la url de búsqueda
 	else if (fromList.length != 0 || extraTwitters.length != 0) {
 		
 		// Primero borramos la lista que tenemos antes de cargar de nuevo
 		$("#"+idListView).html('');
 		$("#"+idListView).listview();
		$("#"+idListView).listview("refresh");
		
 		// Añadimos la lista de twitters
 		$.each(fromList, function(index, item){
 			if (item.activo) {
 				if (urlFrom == "")
 	 	 			urlFrom += "from%3a" + item.twitter;
 	 	 		else
 	 	 			urlFrom += "%20OR%20from%3a" + item.twitter;
 			}
 	 	});
 		
 		$.each(extraTwitters, function(index, item){
			if (urlFrom == "")
 	 			urlFrom += "from%3a" + item;
 	 		else
 	 			urlFrom += "%20OR%20from%3a" + item;
 	 	});
 	 	
 		// Añadimos la fecha de inicio de búsqueda
 	 	if (since != "") {
 	 		urlInterval += "%20since%3a" + since;
 	 	}
 	 	
 	 	// Añadimos la fecha de fin de búsqueda
 	 	if (until != "") {
 	 		urlInterval += "%20until%3a" + until;
 	 	}
 	
 	 	// Montamos la url definitiva de búsqueda si hay elementos from sobre los que buscar
 	 	if (urlFrom != "") {
 	 		urlFinal = urlTwitter + "?q=" + urlFrom + urlInterval + urlParams + urlCallback;
 	 	}
 	 	
 	}
 	
 	// Si tenemos la urlFinal montada, hacemos la búsqueda
 	if (urlFinal != "") {
 		
 		// Mostramos imagen cargando
 	 	//$.mobile.showPageLoadingMsg();
 		showLoading();
 		
 		$.getJSON(urlFinal, function(data) {
			
     		refreshUrl = data.refresh_url;
     				
     		$.each(data.results, function(index, item) {
     					
     			screenname  = item.from_user;
        		tweet       = item.text;
        		avatar     	= item.profile_image_url;
        		created_at  = item.created_at.split(" ");
        		created_at  = created_at[1] + " " + created_at[2] + " " + getHoraZonaUsuario(created_at[1], created_at[2], created_at[3], created_at[4]);
        		
        		// Montamos el elemento de la lista con la info del tweet
        		// filtrando los replies
        		if (tweet.substring(0, 1) != "@") {
        			auxList += '<li id="' + item.id_str + '" class="ui-li ui-li-static ui-body-c ui-li-has-thumb ui-corner-top tweetItem"><img class="ui-li-thumb ui-corner-tl" src="'+avatar+'"><p class="ui-li-desc"><strong>'+screenname+'</strong></p><p class="ui-li-desc listTwitterMarginTop">'+tweet+'</p><p class="ui-li-desc listTwitterMarginTop">'+created_at+'</p></li>';
        		}

     		});
     		
     		// Ocultamos imagen cargando
     		//$.mobile.hidePageLoadingMsg();
     		hideLoading();
     		
     		// Añadimos el contenido de la lista al listView
     		$("#"+idListView).prepend(auxList);
     		
     		// Refrescamos la lista
  			$("#"+idListView).listview();
        	$("#"+idListView).listview("refresh");
        	
     		
        	// Montamos el carrusel
     		/*
        	if (carousel) {
     			console.log("carrusel ini");
     			// Mostramos imagen cargando
     	 	 	showLoading();
     	 	 	console.log("carrusel 1");
	     		var screenName = "";
	     		
	     		$.each(fromList, function(index, item){
						if (screenName == ""){
							console.log("carrusel each index if -> screenname: "+item.twitter.substring(1));
							screenName += item.twitter.substring(1);
	     				}
			 	 		else{
			 	 			console.log("carrusel each index else -> screenname: "+item.twitter.substring(1));
			 	 			screenName += "," + item.twitter.substring(1);
			 	 		}
			 	});
	     		console.log("carrusel despues each -> screenname: " + screenName);
	     		
	     		var urlTwitter = "https://api.twitter.com/1/users/lookup.json?";
	     		var urlParams = "screen_name="+screenName+"&include_entities=true";
	     		var urlCallback = "&callback=?";
	     		
	     		urlFinal = urlTwitter + urlParams + urlCallback;
	     		console.log("carrusel urlfinal: " + urlFinal);
	     		$.getJSON(urlFinal, function(data) {
	     			
	     	 		$.each(data, function(index, item) {
	     	 			$.each(fromList, function(index, from){
	     	 				if (from.twitter.substring(1).toLowerCase() == item.screen_name.toLowerCase()) {
	     	 					from.image = item.profile_image_url;
	     	 					from.title = item.from_user;
	     	 					console.log("carrusel each consulta twitter -> twitter: " + from.twitter);
	     	 				}
	     	 		 	});
	     	 			
	     	 		});
	     	 		console.log("despues each consulta twitter");
	     	 		montarCarrusel(fromList);
	     	 		console.log("despues montarCarrusel");
	     	 		// Ocultamos imagen cargando
		     		hideLoading();
	     	 		console.log("fin");
	     	 	});
	     		
	     		
     		
     		}*/
     		
     	});
 		
 	}

}

// Función que obtiene un tweet concreto a partir del id
function getTweet(idTweet) {
	var urlTwitter = "https://api.twitter.com/1/statuses/show.json?id=" + idTweet + "&callback=?";
	var screenname = "";
	var tweet = "";
	var avatar = "";
	var created_at = "";
	
	$.getJSON(urlTwitter, function(data) {
		username	= data.user.name;
		tweet		= data.text;
		avatar     	= data.user.profile_image_url;
		created_at  = data.created_at.split(" ");
		created_at  = created_at[2] + " " + created_at[1] + " " + getHoraZonaUsuario(created_at[2], created_at[1], created_at[5], created_at[3]);
		
		$("#avatar").attr("src", avatar);
		$("#user").html("<strong>"+username+"</strong>");
		$("#tweet").text(tweet);
		$("#fecha").text(created_at);
		
		
	});
}

// Función que marca como favorito un tweet
function setFavorite(idTweet) {
	
	alert("idTweet: " + idTweet);
	var urlTwitter = "https://api.twitter.com/1/favorites/create/" + idTweet + ".json";
	
	/*
	$.getJSON(urlTwitter, function(data, status) {
		if (status == "success") alert("success");
		else alert("error");
	});
	*/
	
	
	var oauth;
    var requestParams;
    var options = { 
            consumerKey: 'uE7nD2vATy4DVFGjBpFIgA',
            consumerSecret: 'QnDibubELt3PkT29j7LcmhKQVkDE5XX5LAd4ivlkM',
            callbackUrl: 'http://www.artiic.com/twittercallback/?' };
    var mentionsId = 0;
    var localStoreKey = "twitterkey";
    
    // Check for access token key/secret in localStorage
    var storedAccessData, rawData = localStorage.getItem(localStoreKey);
    if (rawData !== null) {
        storedAccessData = JSON.parse(rawData);                 
        options.accessTokenKey = storedAccessData.accessTokenKey;
        options.accessTokenSecret = storedAccessData.accessTokenSecret;
          
        console.log("AppLaudLog: Attemping oauth with stored token key/secret");           
        oauth = OAuth(options);
        
        oauth.get(urlTwitter,
                function(data) {
                	alert("exito");
                	/*
                    var entry = JSON.parse(data.text);
                    var data_html = '<h4>You Tweeted:</h4>';
                        
                    console.log("AppLaudLog: Tweet id: " + entry.id_str + " text: " + entry.text);
                    data_html = data_html.concat('<p>Id: ' + entry.id_str + '<br>Text: ' 
                            + entry.text + '</p>');
                    $('#twitterdata').prepend(data_html);
                    $('#tweettextarea').empty();
                    $.mobile.changePage($('#page-home'), { reverse : true, changeHash: false });
                    */
                },
                function(data) { 
                	alert("fracaso");
                	/*
                    alert('Error Tweeting.'); 
                    console.log("AppLaudLog: Error during tweet " + data.text);
                    $('#oauthStatus').html('<span style="color:red;">Error Tweeting</span>');                           
                    $.mobile.changePage($('#page-home'), { reverse : true, changeHash: false });
                    */
                }
        ); 
        
    }
    else {
    	alert("error oauth");
    }
    
}

function updateTweet(textTweet) {
	
	textTweet = "Tweet de prueba!!";
	
	
	var oauth;
    var requestParams;
    var options = { 
            consumerKey: 'uE7nD2vATy4DVFGjBpFIgA',
            consumerSecret: 'QnDibubELt3PkT29j7LcmhKQVkDE5XX5LAd4ivlkM',
            callbackUrl: 'http://www.artiic.com/twittercallback/?' };
    var mentionsId = 0;
    var localStoreKey = "twitterkey";
    
    // Check for access token key/secret in localStorage
    var storedAccessData, rawData = localStorage.getItem(localStoreKey);
    if (rawData !== null) {
        storedAccessData = JSON.parse(rawData);                 
        options.accessTokenKey = storedAccessData.accessTokenKey;
        options.accessTokenSecret = storedAccessData.accessTokenSecret;
          
        console.log("AppLaudLog: Attemping oauth with stored token key/secret");           
        oauth = OAuth(options);
        
		oauth.post('https://api.twitter.com/1/statuses/update.json',
	            { 'status' : textTweet,  // jsOAuth encodes for us
	              'trim_user' : 'true' },
	            function(data) {
	                alert("exito");
	            },
	            function(data) { 
	                alert("fracaso");
	            }
	    );
		
    }
    else {
    	alert("error oauth");
    }
}


// Función que calcula la fecha y hora local del usuario
function getHoraZonaUsuario(dia, mes, anyo, hora) {
	
	var utcOffset = - new Date().getTimezoneOffset();
	
	var mesNum = getMesFromString(mes);
	var arrayHoraMinSeg = hora.split(":");
	var hora = parseInt(arrayHoraMinSeg[0]);
	var minutos = parseInt(arrayHoraMinSeg[1]);
	var segundos = parseInt(arrayHoraMinSeg[2]);
	
	var fechaHoraUsuario = new Date(anyo, mesNum, dia, hora, minutos, segundos);
	
	fechaHoraUsuario.setMinutes(fechaHoraUsuario.getMinutes() + utcOffset);
	
	return fechaHoraUsuario.toTimeString().split(" ")[0];
}

// Función que retorna el entero del mes a partir del string
function getMesFromString(mesStr) {
	switch (mesStr) {
		case "Ene":
			return 1;
			break;
		case "Feb":
			return 2;
			break;
		case "Mar":
			return 3;
			break;
		case "Abr":
			return 4;
			break;
		case "May":
			return 5;
			break;
		case "Jun":
			return 6;
			break;
		case "Jul":
			return 7;
			break;
		case "Ago":
			return 8;
			break;
		case "Sep":
			return 9;
			break;
		case "Oct":
			return 10;
			break;
		case "Nov":
			return 11;
			break;
		case "Dic":
			return 12;
			break;
	}
}

// Función que gestiona el login de twitter
function loginTwitter() {
    var oauth;
    var requestParams;
    var options = { 
            consumerKey: 'uE7nD2vATy4DVFGjBpFIgA',
            consumerSecret: 'QnDibubELt3PkT29j7LcmhKQVkDE5XX5LAd4ivlkM',
            callbackUrl: 'http://www.artiic.com/twittercallback/?' };
    var localStoreKey = "twitterkey";
    
    // Buscamos si tenemos la info del login guardada en la memoria del teléfono
    var storedAccessData, rawData = localStorage.getItem(localStoreKey);
    // Si hay info, hacemos el login
    if (rawData !== null) {
        storedAccessData = JSON.parse(rawData);                 
        options.accessTokenKey = storedAccessData.accessTokenKey;
        options.accessTokenSecret = storedAccessData.accessTokenSecret;
        
        console.log("Attemping oauth with stored token key/secret");
        oauth = OAuth(options);
        oauth.get('https://api.twitter.com/1/account/verify_credentials.json?skip_status=true',
                function(data) {
                    var entry = JSON.parse(data.text);
                    console.log("Success getting credentials. screen_name: " + entry.screen_name);
                    
                    $("#textTwitter").text(entry.screen_name);
                },
                function(data) { 
                    alert('Se ha producido un error al hacer el login de twitter. Inténtalo de nuevo.');
                    options.accessTokenKey = '';
                    options.accessTokenSecret = '';
                    localStorage.removeItem(localStoreKey);
                    $("#textTwitter").text("Loginate!!");
                    console.log("No Authorization from localStorage data"); 
                }
        );
    } 
    // Si no, mostramos el literal para loginarse
    else {
    	$("#textTwitter").text("Loginate!!");
        console.log("No localStorage data");
    }

    // Función del click del botón de login
    $("#loginTwitter a").click(function() { 
    	// Si está loginado, preguntamos si quiere cerrar la sesión
    	// AÑADIR UN DIALOG!!
    	if (rawData !== null) {
    		localStorage.removeItem(localStoreKey);
            options.accessTokenKey = '';
            options.accessTokenSecret = '';
            oauth.post('http://api.twitter.com/1/account/end_session.json',
                    {}, function(data) {
                        console.log("User ended session");
                    }, function(data) {
                        console.log("Error: End session");
                    });
    	}
    	// Si no está loginado, hacemos el login
    	else {
    		// Callback del childBrowser (después que el usuario introduzca sus datos de login)
            if (typeof window.plugins.childBrowser.onLocationChange !== "function") {
                window.plugins.childBrowser.onLocationChange = function(loc){
                    console.log("onLocationChange : " + loc);
      
                    // Si el usuario clica "No, gracias"
                    if (loc.indexOf("http://www.artiic.com/twittercallback/?denied") >= 0) {
                        window.plugins.childBrowser.close();
                        return;
                    }

                    // Si el usuario va a la página de la aplicación, no cerramos el navegador
                    if (loc === "http://www.artiic.com/") {
                        return;
                    }
                    
                    // Si el usuario introduce sus datos y hace el login
                    if (loc.indexOf("http://www.artiic.com/twittercallback/?") >= 0) {
                        var index, verifier = '';            
                        var params = loc.substr(loc.indexOf('?') + 1);
                        
                        params = params.split('&');
                        for (var i = 0; i < params.length; i++) {
                            var y = params[i].split('=');
                            if(y[0] === 'oauth_verifier') {
                                verifier = y[1];
                            }
                        }
                   
                        // Exchange request token for access token
                        oauth.get('https://api.twitter.com/oauth/access_token?oauth_verifier='+verifier+'&'+requestParams,
                                function(data) {               
                                    var accessParams = {};
                                    var qvars_tmp = data.text.split('&');
                                    for (var i = 0; i < qvars_tmp.length; i++) {
                                        var y = qvars_tmp[i].split('=');
                                        accessParams[y[0]] = decodeURIComponent(y[1]);
                                    }
                                    console.log(accessParams.oauth_token + ' : ' + accessParams.oauth_token_secret);
                                    oauth.setAccessToken([accessParams.oauth_token, accessParams.oauth_token_secret]);
                                    
                                    // Guardamos la info del login en la memoria del teléfono
                                    var accessData = {};
                                    accessData.accessTokenKey = accessParams.oauth_token;
                                    accessData.accessTokenSecret = accessParams.oauth_token_secret;
                                    console.log("Storing token key/secret in localStorage");
                                    localStorage.setItem(localStoreKey, JSON.stringify(accessData));

                                    // Hacemos el login
                                    oauth.get('https://api.twitter.com/1/account/verify_credentials.json?skip_status=true',
                                            // Si login OK
                                    		function(data) {
                                                var entry = JSON.parse(data.text);
                                                $('#textTwitter').html(entry.screen_name);
                                                console.log("screen_name: " + entry.screen_name);
                                            },
                                            // Si login NOK
                                            function(data) { 
                                            	alert('Se ha producido un error al hacer el login de twitter. Inténtalo de nuevo.'); 
                                                console.log("Error " + data); 
                                            }
                                    );                                         
                                    window.plugins.childBrowser.close();
                            },
                            function(data) { 
                                console.log("1 Error " + data); 
                                window.plugins.childBrowser.close();
                            }
                        );
                    }
                };  
            } // end if
            
            // Abrimos la ventana del childbrowser para que el usuario introduzca sus datos
            oauth = OAuth(options);
            oauth.get('https://api.twitter.com/oauth/request_token',
                    function(data) {
                        requestParams = data.text;
                        console.log("requestParams: " + data.text);
                        window.plugins.childBrowser.showWebPage('https://api.twitter.com/oauth/authorize?'+data.text, 
                                { showLocationBar : false });                    
                    },
                    function(data) { 
                        alert('Error : No Authorization'); 
                        console.log("2 Error " + data); 
                        alert('Se ha producido un error al hacer el login de twitter. Inténtalo de nuevo.');
                    }
            );
    	}
    });

}

// Captura los clicks de los tweets de la lista
$(".tweetItem").live('click', function () {
	
	var idTweet = $(this).attr("id");
	var urlTweet = "https://twitter.com/twitterapi/status/" + idTweet;
	
	//window.location.href = "tweet.html?idTweet="+idTweet;
	
	window.open(urlTweet);
});
