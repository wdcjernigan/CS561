 
	 function getPartidos(grupo) {
		 if(grupo!=grupoSel){
			   $("#timeline").empty();
			 	// Mostramos imagen cargando
				 	$.mobile.showPageLoadingMsg();
			      
			      	if (grupo!=null) {
			      		var url = "http://soccer.artiic.com/soccer/artiic.php/rest/Jornada/faseFinal?callback=?"; 
			      		$.getJSON(url, function(data){
			
					     		var eliminatoria = "";
					     		var partidos = "";
					   
			
									var ultimaFecha = "";
					     		$("#timeline").append('<div class="ui-grid-b">');
							
				    		      $.each(data, function(i,item){
					     				 eliminatoria = item.eliminatoria;
					     				 partidos = item.partidos;
					     				 $("#timeline").append('<div class="ui-block-h"><b>'+_(eliminatoria)+'</b> </div>'); 
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
								     		 //	 escudovisitante = item2.escudovisitante;
								    		 //	 escudolocal = item2.escudolocal;
					     				  
					     				  	fecha=item2.fecha;
					     				  	fechaFormateada = new Date(item2.fecha.substring(0,4),item2.fecha.substring(5,7),item2.fecha.substring(8,10));
					     				  	
							     				if(fecha.substring(0,10)!=ultimaFecha.substring(0,10)){
							     					
							     				$("#timeline").append('<div class="ui-block-h">'+showdate(fechaFormateada)+' </div>');

							     				
							     				$("#timeline").append('<div class="ui-block-a"><p>&nbsp<img src="img/escudos/64x/'+escudolocal+'" alt="image" width="30" height="20" style="vertical-align: top;" />&nbsp;<FONT FACE="arial" SIZE=2>'+_(local)+'</FONT></p> </div>'); 
							     				if (golesLocal!=null) {
								       	 			  $("#timeline").append('<div class="ui-block-b" ><p>'+golesLocal+ ' - ' +golesVisitante+'</p> </div>'); 
							       	  			}else{
							       	 				$("#timeline").append('<div class="ui-block-b"><p>'+fecha.substring(11,19)+'</p> </div>'); 
							       	 			}
							     					 $("#timeline").append('<div class="ui-block-c"><FONT FACE="arial" SIZE=2><p align="right">'+_(visitante)+'</FONT><img src="img/escudos/64x/'+escudovisitante+'" alt="image" width="30" height="20" align="right" />&nbsp </p></div>');

							     				}else{
							     					$("#timeline").append('<div class="ui-block-a"> <p>&nbsp<img src="img/escudos/64x/'+escudolocal+'" alt="image" width="30" height="20" style="vertical-align: top;" />&nbsp;<FONT FACE="arial" SIZE=2>'+_(local)+'</FONT></p> </div>'); 
											 	 if (golesLocal!=null) {
													 $("#timeline").append('<div class="ui-block-b"><p>'+golesLocal+ ' - ' +golesVisitante+' </p></div>'); 
							       	 			}else{
							       	 				$("#timeline").append('<div class="ui-block-b"> <p>'+fecha.substring(11,19)+'</p> </div>'); 
							       	   			}
							     					$("#timeline").append('<div class="ui-block-c"><FONT FACE="arial" SIZE=2><p align="right">'+_(visitante)+'</FONT> <img src="img/escudos/64x/'+escudovisitante+'" alt="image" width="30" height="20" align="right"/>&nbsp</p></div>');

							     				}
												 ultimaFecha = fecha;
							          	});
						    		  $("#jornadaAnt").attr("href", "partidos.html?jornada="+restar(jornada,1));
						    		  $("#jornadaSig").attr("href", "partidos.html?jornada="+sumar(jornada,1));
							       	$("#timeline").append("</div>");
							     				});
							     	
							  	
						    		  
			
					     		

				     	});
			      		
					} else {
					    var url = "http://soccer.artiic.com/soccer/artiic.php/rest/Jornada/partidos/idliga/2?callback=?";
						$.getJSON(url, function(data){
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
					       	 			  $("#timeline").append('<div class="ui-block-b" ><p> '+golesLocal+ ' - ' +golesVisitante+'</p> </div>'); 
				       	  			}else{
				       	 				$("#timeline").append('<div class="ui-block-b"><p> '+fecha.substring(11,19)+'</p> </div>'); 
				       	 			}
				     					 $("#timeline").append('<div class="ui-block-c"><FONT FACE="arial" SIZE=2><p align="right">'+_(visitante)+'</FONT><img src="img/escudos/64x/'+escudovisitante+'" alt="image" width="30" height="20" align="right" />&nbsp </p></div>');
				     				}else{
				     					$("#timeline").append('<div class="ui-block-a"> <p>&nbsp<img src="img/escudos/64x/'+escudolocal+'" alt="image" width="30" height="20" style="vertical-align: top;" />&nbsp;<FONT FACE="arial" SIZE=2>'+_(local)+'</FONT></p> </div>'); 
								 	 if (golesLocal!=null) {
										 $("#timeline").append('<div class="ui-block-b"><p>'+golesLocal+ ' - ' +golesVisitante+' </p></div>'); 
				       	 			}else{
				       	 				$("#timeline").append('<div class="ui-block-b"> <p>'+fecha.substring(11,19)+'</p> </div>'); 
				       	   			}
				     					$("#timeline").append('<div class="ui-block-c"><FONT FACE="arial" SIZE=2><p align="right">'+_(visitante)+'</FONT> <img src="img/escudos/64x/'+escudovisitante+'" alt="image" width="30" height="20" align="right"/>&nbsp</p></div>');
				     			}
				       	 			// 	$("#timeline").append('<input type="hidden" name="jornada" value="">');
									 ultimaFecha = fecha;
				          	});
			    		  $("#jornadaAnt").attr("href", "partidos.html?jornada="+restar(jornada,1));
			    		  $("#jornadaSig").attr("href", "partidos.html?jornada="+sumar(jornada,1));
				       	$("#timeline").append("</div>");

				     	});
						
					}
			      //var url = "http://soccer.artiic.com/soccer/artiic.php/rest/Jornada/partidos/jornada/1/format/jsonp?callback=?";
			      	 // Ocultamos imagen cargando
					$.mobile.hidePageLoadingMsg();
					grupoSel=grupo;
		 }
	 	

	}
	
//		   function showdate(mydate){
//			    var year = mydate.getYear();
//			    var day = mydate.getDay();
//			    var month = mydate.getMonth();
//			    var daym = mydate.getDate();
//			    if (daym < 10)
//			     daym = "" + daym;
//			    var dayarray = new Array("Viernes","Sabado","Domingo","Lunes","Martes","Miercoles","Jueves");
//			    var montharray = new Array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
//			  // alert(month);
//			    if (month==7) {
//				    var dayarray = new Array("Jueves","Viernes","Sabado","Domingo","Lunes","Martes","Miercoles");
//				
//			}
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
		  

	            
