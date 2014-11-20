 
	 function getClasificacionFinal() {
	 
	      		var url = "http://soccer.artiic.com/soccer/artiic.php/rest/Jornada/faseFinal?callback=?"; 
	      		// Mostramos imagen cargando
	     	 	$.mobile.showPageLoadingMsg();
	      		$.getJSON(url, function(data){
	
			     		var eliminatoria = "";
			     		var partidos = "";
			   
	
							var ultimaFecha = "";
					
		    		      $.each(data, function(i,item){
			     				 eliminatoria = item.eliminatoria;
			     				 partidos = item.partidos;
			     				 $("#timeline").append('<div class="ui-block-h"><b>'+eliminatoria+'</b> </div>'); 
			     				 	var idpartido = "";
						     		var idplantillalocal = "";
						     		var idplantillavisitante = "";
						     		var jornada = "";
						     		var fecha = "";
						     		var idliga = "";
						     		var golesLocal = "";
						     		var golesVisitante = "";
						     		var estado = "";
						     		var local = "";
						     		var visitante = "";
						     		var escudovisitante = "";
						     		var escudolocal = "";
						     		var ultimaFecha = "";
						     		
						     	
			     				  $.each(partidos, function(i2,item2){
			     				
			     					idpartido =item2.idpartido;
						     	    idplantillalocal = item2.idplantillalocal;
						     	    idplantillavisitante = item2.idplantillavisitante;
						     		jornada = item2.jornada;
						    	    idliga =item2.idliga;
							   		golesLocal = item2.golesLocal;
									golesVisitante =item2.golesVisitante;
								    estado = item2.estado;
									local = item2.local;
									visitante = item2.visitante;
								    if (item2.escudolocal!=null) {
								     	 escudolocal = item2.escudolocal;
									} else {
										escudolocal ="incognita.png";
									}
									if (item2.escudovisitante!=null) {
									 	escudovisitante = item2.escudovisitante;
									} else {
										escudovisitante ="incognita.png";
									}
									 if (eliminatoria=="Cuartos") {
										if (escudolocal=="incognita.png") {
						     				 $("#local"+i2).append('<div class="ui-block-h"><img src="img/escudos/64x/'+escudolocal+'" alt="image" width="30" height="30" style="vertical-align: top;" /></img>'+local+' </div>'); 
										}else{
						     				 $("#local"+i2).append('<div class="ui-block-h"><img src="img/escudos/64x/'+escudolocal+'" alt="image" width="30" height="30" style="vertical-align: top;" /></img>'+local.substring(0,3).toLocaleUpperCase()+' </div>'); 
										}
										if (escudovisitante=="incognita.png") {
						     				 $("#visitante"+i2).append('<div class="ui-block-h"><img src="img/escudos/64x/'+escudovisitante+'" alt="image" width="30" height="30" style="vertical-align: top;" />'+visitante+'</img> </div>');

										} else {
						     				 $("#visitante"+i2).append('<div class="ui-block-h"><img src="img/escudos/64x/'+escudovisitante+'" alt="image" width="30" height="30" style="vertical-align: top;" />'+visitante.substring(0,3).toUpperCase()+'</img> </div>');

										}
					     			
					     				 if (golesLocal==null) {
						     				 $("#golesLocal"+i2).append('<div class="ui-block-h">&nbsp; </div>'); 
										}else{
						     				 $("#golesLocal"+i2).append('<div class="ui-block-h">'+golesLocal+' </div>'); 
										}
					     				 if (golesVisitante==null) {
						     				 $("#golesVisitante"+i2).append('<div class="ui-block-h">&nbsp;</div>'); 
										} else {
						     				 $("#golesVisitante"+i2).append('<div class="ui-block-h">'+golesVisitante+' </div>'); 
										}
									 }
									 
									 if (eliminatoria=="Semifinal") {
										if (escudolocal=="incognita.png") {
											 $("#localSemi"+i2).append('<div class="ui-block-h"><img src="img/escudos/64x/'+escudolocal+'" alt="image" width="30" height="30" style="vertical-align: top;" /></img>'+local+' </div>'); 
										} else {
											 $("#localSemi"+i2).append('<div class="ui-block-h"><img src="img/escudos/64x/'+escudolocal+'" alt="image" width="30" height="30" style="vertical-align: top;" /></img>'+local.substring(0, 3).toUpperCase()+' </div>'); 

										}
										if (escudovisitante=="incognita.png") {
						     				 $("#visitanteSemi"+i2).append('<div class="ui-block-h"><img src="img/escudos/64x/'+escudovisitante+'" alt="image" width="30" height="30" style="vertical-align: top;" /></img>'+visitante+' </div>');
										} else {
						     				 $("#visitanteSemi"+i2).append('<div class="ui-block-h"><img src="img/escudos/64x/'+escudovisitante+'" alt="image" width="30" height="30" style="vertical-align: top;" /></img>'+visitante.substring(0, 3).toUpperCase()+' </div>');

										}

					     				 if (golesLocal==null) {
						     				 $("#golesLocalSemi"+i2).append('<div class="ui-block-h">&nbsp; </div>'); 
										}else{
						     				 $("#golesLocalSemi"+i2).append('<div class="ui-block-h">'+golesLocal+' </div>'); 
										}
					     				 if (golesVisitante==null) {
						     				 $("#golesVisitanteSemi"+i2).append('<div class="ui-block-h">&nbsp;</div>'); 
										} else {
						     				 $("#golesVisitanteSemi"+i2).append('<div class="ui-block-h">'+golesVisitante+' </div>'); 
										}
									 }
									 if (eliminatoria=="Final") {
										if (escudolocal=="incognita.png") {
						     				 $("#localFinal").append('<div class="ui-block-h"><img src="img/escudos/64x/'+escudolocal+'" alt="image" width="30" height="30" style="vertical-align: top;" /></img>'+local+' </div>'); 

										}else{
						     				 $("#localFinal").append('<div class="ui-block-h"><img src="img/escudos/64x/'+escudolocal+'" alt="image" width="30" height="30" style="vertical-align: top;" /></img>'+local.substring(0, 3).toUpperCase()+' </div>'); 

										}
										if (escudovisitante=="incognita.png") {
						     				 $("#visitanteFinal").append('<div class="ui-block-h"><img src="img/escudos/64x/'+escudovisitante+'" alt="image" width="30" height="30" style="vertical-align: top;" /></img>'+visitante+' </div>');

										} else {
						     				 $("#visitanteFinal").append('<div class="ui-block-h"><img src="img/escudos/64x/'+escudovisitante+'" alt="image" width="30" height="30" style="vertical-align: top;" /></img>'+visitante.substring(0, 3).toUpperCase()+' </div>');

										}
					     				
					     				 if (golesLocal==null) {
						     				 $("#golesLocalFinal").append('<div class="ui-block-h">&nbsp; </div>'); 
										}else{
						     				 $("#golesLocalFinal").append('<div class="ui-block-h">'+golesLocal+' </div>'); 
										}
					     				 if (golesVisitante==null) {
						     				 $("#golesVisitanteFinal").append('<div class="ui-block-h">&nbsp;</div>'); 
										} else {
						     				 $("#golesVisitanteFinal").append('<div class="ui-block-h">'+golesVisitante+' </div>'); 
										}
									 }
						     							       	  		
					          	});
				    	
					    });
		     	});    		
	       		// Ocultamos imagen cargando
	     		$.mobile.hidePageLoadingMsg();
	 }
	
//		   function showdate(mydate){
//			    var year = mydate.getYear();
//			    if (year < 1000)
//			     year += 1900;
//			    var day = mydate.getDay();
//			    var month = mydate.getMonth();
//			    var daym = mydate.getDate();
//			    if (daym < 10)
//			     daym = "" + daym;
//			    var dayarray = new Array("Viernes","Sabado","Domingo","Lunes","Martes","Miercoles","Jueves");
//			    var montharray = new Array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
//			    return dayarray[day] + ", " + daym + " de " + montharray[month-1];
//   }
   
       	function sumar(sum1, sum2)
	     	{
	     	    var resultado;
	     	    resultado = parseInt(sum1) + parseInt(sum2);
	     	    return resultado;
	     	}
	    	function restar(sum1, sum2)
	     	{
	     	    var resultado;
	     	    resultado = parseInt(sum1) - parseInt(sum2);
	     	    return resultado;
	     	}
		  

	            
