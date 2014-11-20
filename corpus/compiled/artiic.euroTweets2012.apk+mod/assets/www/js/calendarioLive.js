 var linkEquipo = "partidoLive.html";		// Url de la pantalla

	 function getCalendarioLive() {
	      
	      		var url = "http://soccer.artiic.com/soccer/artiic.php/rest/Jornada/jornadaActual/idliga/2?callback=?"; 
	      	// Mostramos imagen cargando
	    	 	$.mobile.showPageLoadingMsg();
	    	 	
	      		$.getJSON(url, function(data){
	      			var indHayPartidos =null;
	      			
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
		     		$("#timeline").append('<div class="ui-grid-b">');
		     		
					
	    		      $.each(data, function(i,item){
	    		    	 indHayPartidos = data.error;
	    		    	 if (indHayPartidos != undefined) {
	    		    		 $("#timeline").append('<div align="center"><b>No hay partidos disponibles</b></div>');
	 					}	else{ 
	    		    	 idpartido =item.idpartido;
			     			 idplantillalocal = item.idplantillalocal;
			     			 idplantillavisitante = item.idplantillavisitante;
								 jornada = item.jornada;
								 fecha = item.fecha;
			    			 fechaFormateada = new Date(item.fecha.substring(0,4),item.fecha.substring(5,7),item.fecha.substring(8,10));
			    			
			    			idliga =item.idliga;
				   		 	 golesLocal = item.golesLocal;
						 		 golesVisitante =item.golesVisitante;
								 estado = item.estado;
						 		 local = item.local;
						 		 visitante = item.visitante;
			     		 	 escudovisitante = item.escudovisitante;
			    		 	 escudolocal = item.escudolocal;

		     			if(fecha.substring(0,10)!=ultimaFecha.substring(0,10)){
		     				
		     				$("#timeline").append('<div class="ui-block-h">'+showdate(fechaFormateada)+' </div>'); 
			  			    //$("#timeline").append('<div class="ui-block-b"> </div>'); 
		     			    //$("#timeline").append('<div class="ui-block-c"> </div>');
		     				$("#timeline").append('<div class="ui-block-a"><p>&nbsp<img src="img/escudos/64x/'+escudolocal+'" alt="image" width="30" height="20" style="vertical-align: top;" />&nbsp;<FONT FACE="arial" SIZE=2>'+_(local)+'</FONT></p> </div>'); 

		     				if (golesLocal!=null) {
			       	 			  $("#timeline").append('<div class="ui-block-b" ><p><a href="javascript:seleccionarEquipo('+idpartido+','+idplantillalocal+','+idplantillavisitante+');"  data-transition="slide" rel="external"> '+golesLocal+ ' - ' +golesVisitante+'</p> </div>'); 
		       	  			}else{															
		       	 				$("#timeline").append('<div class="ui-block-b"><p><a href="javascript:seleccionarEquipo('+idpartido+','+idplantillalocal+','+idplantillavisitante+');""  data-transition="slide" rel="external">'+fecha.substring(11,19)+'</a></p> </div>'); 
		       	 			}
		     					 $("#timeline").append('<div class="ui-block-c"><FONT FACE="arial" SIZE=2><p align="right">'+_(visitante)+'</FONT><img src="img/escudos/64x/'+escudovisitante+'" alt="image" width="30" height="20" align="right" /> </p></div>');
		     				}else{
		     					$("#timeline").append('<div class="ui-block-a"><p>&nbsp<img src="img/escudos/64x/'+escudolocal+'" alt="image" width="30" height="20" style="vertical-align: top;" />&nbsp;<FONT FACE="arial" SIZE=2>'+_(local)+'</FONT></p> </div>'); 
						 	 if (golesLocal!=null) {
								 $("#timeline").append('<div class="ui-block-b"><p> <a href="javascript:seleccionarEquipo('+idpartido+','+idplantillalocal+','+idplantillavisitante+');"  data-transition="slide" rel="external">'+golesLocal+ ' - ' +golesVisitante+' </a></p></div>'); 
		       	 			}else{
		       	 				$("#timeline").append('<div class="ui-block-b"><p><a href="javascript:seleccionarEquipo('+idpartido+','+idplantillalocal+','+idplantillavisitante+');" data-transition="slide" rel="external">'+fecha.substring(11,19)+'</a></p> </div>'); 
		       	   			}
		     					$("#timeline").append('<div class="ui-block-c"><FONT FACE="arial" SIZE=2><p align="right">'+_(visitante)+'</FONT> <img src="img/escudos/64x/'+escudovisitante+'" alt="image" width="30" height="20" align="right"/></p></div>');
		     			}
		       	 			// 	$("#timeline").append('<input type="hidden" name="jornada" value="">');
							 ultimaFecha = fecha;
	 					}
		          	});
	    		  $("#jornadaAnt").attr("href", "partidos.html?jornada="+restar(jornada,1));
	    		  $("#jornadaSig").attr("href", "partidos.html?jornada="+sumar(jornada,1));
		       	$("#timeline").append("</div>");

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
//		   }
   
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
		  
	    	// Guarda el equipo en la memoria interna y va a la pagina del equipo
	    	function seleccionarEquipo(idPartido,idPlantillaLocal,idPlantillaVisitante) {
	    
	    		writeLocalStorage("idPartido", idPartido);
	    		writeLocalStorage("idPlantillaLocal", idPlantillaLocal);
	    		writeLocalStorage("idPlantillaVisitante", idPlantillaVisitante);
	
	    		
	    		window.location.href = linkEquipo;
	    		
	    	}
	            
