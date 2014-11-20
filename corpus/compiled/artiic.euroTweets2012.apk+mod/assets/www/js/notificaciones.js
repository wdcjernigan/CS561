// Array que guarda la info del channel para cada equipo
// Contiene channel y alerta (true o false según si está suscrito o no)
var equipos = [];


function push() {
	
	if (readLocalStorage("tratarNotif") == null) {
	
		window.plugins.artiic.getStateNotification("alemania",function(r){writeLocalStorage("alemania", r);},function(e){console.log(e)});
		
		window.plugins.artiic.getStateNotification("croacia",function(r){writeLocalStorage("croacia", r);},function(e){console.log(e)});
		window.plugins.artiic.getStateNotification("dinamarca",function(r){writeLocalStorage("dinamarca", r);},function(e){console.log(e)});
		window.plugins.artiic.getStateNotification("espana",function(r){writeLocalStorage("espana", r);},function(e){console.log(e)});
		window.plugins.artiic.getStateNotification("grecia",function(r){writeLocalStorage("grecia", r);},function(e){console.log(e)});
		window.plugins.artiic.getStateNotification("holanda",function(r){writeLocalStorage("holanda", r);},function(e){console.log(e)});
		window.plugins.artiic.getStateNotification("inglaterra",function(r){writeLocalStorage("inglaterra", r);},function(e){console.log(e)});
		window.plugins.artiic.getStateNotification("italia",function(r){writeLocalStorage("italia", r);},function(e){console.log(e)});
		window.plugins.artiic.getStateNotification("irlanda",function(r){writeLocalStorage("irlanda", r);},function(e){console.log(e)});
		window.plugins.artiic.getStateNotification("polonia",function(r){writeLocalStorage("polonia", r);},function(e){console.log(e)});
		window.plugins.artiic.getStateNotification("portugal",function(r){writeLocalStorage("portugal", r);},function(e){console.log(e)});
		window.plugins.artiic.getStateNotification("republicaCheca",function(r){writeLocalStorage("republicaCheca", r);},function(e){console.log(e)});
		window.plugins.artiic.getStateNotification("rusia",function(r){writeLocalStorage("rusia", r);},function(e){console.log(e)});
		window.plugins.artiic.getStateNotification("suecia",function(r){writeLocalStorage("suecia", r);},function(e){console.log(e)});
		window.plugins.artiic.getStateNotification("ucrania",function(r){writeLocalStorage("ucrania", r);},function(e){console.log(e)});
		window.plugins.artiic.getStateNotification("francia",function(r){writeLocalStorage("francia", r);},function(e){console.log(e)});
		writeLocalStorage("tratarNotif", true);
	}
	 
}

/*
function changeNotification(channel) {
	//alert(readLocalStorage(channel) == null || readLocalStorage(channel));
	if (readLocalStorage(channel)== null || readLocalStorage(channel) == "true") {
		writeLocalStorage(channel, "false");
		cordova.exec(null, null, 'ArtiicSuscription', 'unsuscript', [channel]);
		$('div[id='+channel+']').removeClass("item_selected");
	}
	else {

		writeLocalStorage(channel, "true");
		cordova.exec(null, null, 'ArtiicSuscription', 'suscript', [channel]);
		$('div[id='+channel+']').addClass("item_selected");
	}
}
*/

function gestionClicksBanderas() {
	
	$("img[class='escudoNotif']").each( function(index, item) {
     	var channel = equipos[index].channel;
		var alerta = readLocalStorage(channel);
     	
     	if (alerta == null || alerta == undefined) {
     		alerta = "false";
     	}
     	
		equipos[index].alerta = alerta;
     	
		if (alerta == "true") {
     		$(this).addClass("item_selected");
     	}

	    $(this).click(function() {
	    	
	    	showLoading();
	    	
	    	if (equipos[index].alerta == "true") {
	    		equipos[index].alerta = "false";
	    	}
	    	else {
	    		equipos[index].alerta = "true";
	    	}

			if (equipos[index].alerta == "true") {
				writeLocalStorage(channel, "true");
				//cordova.exec(null, null, 'ArtiicSuscription', 'suscript', [channel]);
				window.plugins.artiic.suscript(channel);
	 			$(this).addClass("item_selected");
	 		}
	 		else {
	 			writeLocalStorage(channel, "false");
	 			window.plugins.artiic.unsuscript(channel);
	 			//PhoneGap.exec(null, null, 'ArtiicSuscription', 'unsuscript', [channel]);
	 			$(this).removeClass("item_selected");
	 		}
			
			hideLoading();
 		
		});
	    
	});
	
}

function getEquipos() {
	 		
	 		
		
	var selecciones = ["alemania","suecia","rusia","republicacheca","portugal","polonia","irlanda","italia","inglaterra","holanda","grecia","francia","espana","dinamarca","croacia","ucrania"]; 
	var canal = ["alemania","suecia","rusia","republicaCheca","portugal","polonia","irlanda","italia","inglaterra","holanda","grecia","francia","espana","dinamarca","croacia","ucrania"]; 


	for (i=0;i<selecciones.length;i++){ 
		 equipos[i] = {
				
		 channel: canal[i],
		 alerta: "false"
		 };
		 
		 if (i%4 == 0) {
	 	  	$("#timeline").append('<div class="ui-block-a" style="padding:0px 0px 10px 0px;"> <img class="escudoNotif" src="img/escudos/64x/'+selecciones[i]+'.png" width="" alt="image" /></a> </div>');
		 }
		 else  if (i%4 == 1) {
	 	  	$("#timeline").append('<div class="ui-block-b" style="padding:0px 0px 10px 0px;"> <img class="escudoNotif" src="img/escudos/64x/'+selecciones[i]+'.png" width="" alt="image" /></a> </div>');
		 } 
		else  if (i%4 == 2) {
	 	  	$("#timeline").append('<div class="ui-block-c" style="padding:0px 0px 10px 0px;"> <img class="escudoNotif" src="img/escudos/64x/'+selecciones[i]+'.png" width="" alt="image" /></a> </div>');
		 } 
		else  if (i%4 == 3) {
	 	  	$("#timeline").append('<div class="ui-block-d" style="padding:0px 0px 10px 0px;"> <img class="escudoNotif" src="img/escudos/64x/'+selecciones[i]+'.png" width="" alt="image" /></a> </div>');
		 } 

	}
    gestionClicksBanderas();

    
//    
//	 		var url = "http://soccer.artiic.com/soccer/artiic.php/rest/Clasificacion/posiciones/idliga/2?callback=?";
//	 		// Mostramos imagen cargando
//		 	$.mobile.showPageLoadingMsg();
//	     			
//	     	$.getJSON(url, function(data){
//	     		
//	     		var escudo = "";
//	     		
//	     		
//    		      $.each(data, function(i,item){
//    		    	 idplantilla =item.idplantilla;
//		     		 escudo = item.escudo;
//		     		 
//		     		 // Guardamos la info del channel para cada equipo, inicializand de momento la alerta a false
//		     		 equipos[i] = {
//		     				 channel: item.channel,
//		     				 alerta: "false"
//		     		 };
//		     		
//		     		 if (i%4 == 0) {
//		       	 	  	$("#timeline").append('<div class="ui-block-a" style="padding:0px 0px 10px 0px;"> '+'<img class="escudoNotif" src="img/escudos/64x/'+escudo+'" width="" alt="image" /> </div>');
//		     		 }
//		     		 else  if (i%4 == 1) {
//		       	 	  	$("#timeline").append('<div class="ui-block-b" style="padding:0px 0px 10px 0px;"> '+'<img class="escudoNotif" src="img/escudos/64x/'+escudo+'" width="" alt="image" /> </div>');
//		     		 } 
//		     		else  if (i%4 == 2) {
//		       	 	  	$("#timeline").append('<div class="ui-block-c" style="padding:0px 0px 10px 0px;"> '+'<img class="escudoNotif" src="img/escudos/64x/'+escudo+'" width="" alt="image" /> </div>');
//		     		 } 
//		     		else  if (i%4 == 3) {
//		       	 	  	$("#timeline").append('<div class="ui-block-d" style="padding:0px 0px 10px 0px;"> '+'<img class="escudoNotif" src="img/escudos/64x/'+escudo+'" width="" alt="image" /> </div>');
//		     		 } 
//		     			
//	          		});
//    		      
//    		      gestionClicksBanderas();
//
//	     	});
	     // Ocultamos imagen cargando
			$.mobile.hidePageLoadingMsg();
	 	}