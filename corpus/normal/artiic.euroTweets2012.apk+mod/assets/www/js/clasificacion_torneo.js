function getClasificacion(grupo) {

		if(grupo!=grupoSel){
			if(!grupo){
				grupo="A";
			}
			    var url = "http://soccer.artiic.com/soccer/artiic.php/rest/Clasificacion/posiciones/idliga/2/grupo/"+grupo+"?callback=?";
			    $("#timeline").empty();

			// Mostramos imagen cargando
		 	$.mobile.showPageLoadingMsg();
			
		     	$.getJSON(url, function(data){
		     		var nombre = "";
		     		var posicion = "";
		     		var partidosJugados = "";
		     		var partidosGanados = "";
		     		var partidosEmpatados = "";
		     		var partidosPerdidos = "";
		     		var puntos = "";
		     		
		     		var competicion = "";
		     		var pijama = "";
					
		     		
		     		
		     		$("#timeline").append('<div class="ui-block-a" style="color:#000000;background:white;" >POS</div><div class="ui-block-b" >'+_("EQUIPO")+'</div><div class="ui-block-c" >'+_("PJ")+'</div><div class="ui-block-d" >'+_("PG")+'</div><div class="ui-block-e" >'+_("PE")+'</div><div class="ui-block-f" >'+_("PP")+'</div><div class="ui-block-g" ><b>PTS</b></div></div>');
		     			
	    		      $.each(data, function(i,item){
	    		    	 nombre =item.nombre;
			     		 partidosJugados = item.partidosJugados;
			     		 partidosGanados = item.partidosGanados;
			     		 partidosEmpatados = item.partidosEmpatados;
			     		 partidosPerdidos = item.partidosPerdidos;
			     		 puntos = item.puntos;
			     		 posicion = i+1;
			     		 
			     		 if (posicion <= 2) {		 
			     			 competicion = "ui-block-champions";
			     		 }
			     		 
			     		 else {
			     			competicion = "ui-block-nada";
			     		 }
			     		 
			     		 if (posicion%2 == 1) {
			     			 pijama = "ui-block-pijama";
			     		 }
			     		 else {
			     			 pijama = "";
			     		 }
			     		 
			       	 	  	$("#timeline").append('<div class="ui-block-a '+competicion+'">'+ posicion +'</div><div class="ui-block-b '+ pijama+'">'+_(nombre)+'</div><div class="ui-block-c '+ pijama+'" > '+partidosJugados+'</div><div class="ui-block-d '+ pijama+'" > '+partidosGanados+'</div><div class="ui-block-e '+ pijama+'" > '+partidosEmpatados+'</div><div class="ui-block-f '+ pijama+'" >'+partidosPerdidos+'</div><div class="ui-block-g '+ pijama+'" ><b>'+puntos+'</b></div></div>');
		       	  			
		          		});
	    		   	

		     	});
		    	// Ocultamos imagen cargando
		     	
		     	
	     		$.mobile.hidePageLoadingMsg();
	     		grupoSel=grupo;
	     		

		}	
}



/**function getClasificacion(grupo) {
	 		
	 if (grupo!=null) {
		    var url = "http://soccer.artiic.com/soccer/artiic.php/rest/Clasificacion/posiciones/idliga/2/grupo/"+grupo+"?callback=?";
		    $("#timeline").empty();
		} else {
		 	var url = "http://soccer.artiic.com/soccer/artiic.php/rest/Clasificacion/posiciones/idliga/2/grupo/A?callback=?";
		 	
		}	
		// Mostramos imagen cargando
	 	$.mobile.showPageLoadingMsg();
		
	     	$.getJSON(url, function(data){
	     		var nombre = "";
	     		var posicion = "";
	     		var partidosJugados = "";
	     		var partidosGanados = "";
	     		var partidosEmpatados = "";
	     		var partidosPerdidos = "";
	     		var puntos = "";
	     		
	     		var competicion = "";
	     		var pijama = "";
				
	     		
	     		$("#timeline").append('<div class="ui-block-a" style="color:#000000;background:white;" >POS</div><div class="ui-block-b" >EQUIPO</div><div class="ui-block-c" >PJ</div><div class="ui-block-d" >PG</div><div class="ui-block-e" >PE</div><div class="ui-block-f" >PP</div><div class="ui-block-g" ><b>PTS</b></div></div>');
	     			
    		      $.each(data, function(i,item){
    		    	 nombre =item.nombre;
		     		 partidosJugados = item.partidosJugados;
		     		 partidosGanados = item.partidosGanados;
		     		 partidosEmpatados = item.partidosEmpatados;
		     		 partidosPerdidos = item.partidosPerdidos;
		     		 puntos = item.puntos;
		     		 posicion = i+1;
		     		 
		     		 if (posicion <= 2) {		 
		     			 competicion = "ui-block-champions";
		     		 }
		     		 
		     		 else {
		     			competicion = "ui-block-nada";
		     		 }
		     		 
		     		 if (posicion%2 == 1) {
		     			 pijama = "ui-block-pijama";
		     		 }
		     		 else {
		     			 pijama = "";
		     		 }
		     		 
		       	 	  	$("#timeline").append('<div class="ui-block-a '+competicion+'">'+ posicion +'</div><div class="ui-block-b '+ pijama+'" > '+nombre+'</div><div class="ui-block-c '+ pijama+'" > '+partidosJugados+'</div><div class="ui-block-d '+ pijama+'" > '+partidosGanados+'</div><div class="ui-block-e '+ pijama+'" > '+partidosEmpatados+'</div><div class="ui-block-f '+ pijama+'" >'+partidosPerdidos+'</div><div class="ui-block-g '+ pijama+'" ><b>'+puntos+'</b></div></div>');
	       	  			
	          		});
    		   	

	     	});
	    	// Ocultamos imagen cargando
     		$.mobile.hidePageLoadingMsg();
	 	}*/