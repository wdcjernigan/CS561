function getGoleadores() {
	
	 		var url = "http://soccer.artiic.com/soccer/artiic.php/rest/Jugadores/goleadores/idliga/2?callback=?";

	     			
	     	$.getJSON(url, function(data){
	     		
	     		var nombre = "";
	     		var goles = "";
	     		var escudo = "";
	     		
    		      $.each(data, function(i,item){
    		    	 nombre =item.nombre;
		     		 goles = item.goles;
		     		 escudo = item.escudo;
		     		 posicion = i+1;
		     		 
		     		 if (i==0) {
				       	$("#timeline").append('<div class="ui-block-a"><img src="img/escudos/64x/'+escudo+'" alt="image" width="30" height="20" style="vertical-align: middle;"/></div><div class="ui-block-b"><b>&nbsp;&nbsp;'+ nombre +'</b></div><div class="ui-block-c"><b>'+goles+'</b></div>');
					}else{
						if (i%2==0) {
				       	 	$("#timeline").append('<div class="ui-block-a"><img src="img/escudos/64x/'+escudo+'" alt="image" width="30" height="20" style="vertical-align: middle;"/></div><div class="ui-block-b" style="color:#000000;background:white;">&nbsp;&nbsp;'+ nombre +'</div><div class="ui-block-c" style="color:#000000;background:white;"> '+goles+'</div>');
						}else {
				       	 	$("#timeline").append('<div class="ui-block-a" style="color:#000000;background:#D8D8D8;"><img src="img/escudos/64x/'+escudo+'" alt="image" width="30" height="20" style="vertical-align: middle;"/></div><div class="ui-block-b" style="color:#000000;background:#D8D8D8;">&nbsp;&nbsp;'+ nombre +'</div><div class="ui-block-c" style="color:#000000;background:#D8D8D8;" > '+goles+'</div>');
						}
					}
	       	  			
	          	});

	     	});
	 	}