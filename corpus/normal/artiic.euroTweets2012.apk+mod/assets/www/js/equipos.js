var linkEquipo = "equipo.html";		// Url de la pantalla de equipo


function getEquipos() {
	 		
	 		
	var selecciones = ["alemania","suecia","rusia","republicacheca","portugal","polonia","irlanda","italia","inglaterra","holanda","grecia","francia","espana","dinamarca","croacia","ucrania"]; 
	var idPlantilla = ["21","35","34","33","32","31","30","29","28","27","26","25","24","23","22","36"]; 

	for (i=0;i<selecciones.length;i++){ 
		 
		 if (i%4 == 0) {
	 	  	$("#timeline").append('<div class="ui-block-a" style="padding:0px 0px 10px 0px;"> '+'<a rel="external" href="javascript:seleccionarEquipo('+idPlantilla[i]+');"><img src="img/escudos/64x/'+selecciones[i]+'.png" width="" alt="image" /></a> </div>');

		 }
		 else  if (i%4 == 1) {
	 	  	$("#timeline").append('<div class="ui-block-b" style="padding:0px 0px 10px 0px;"> '+'<a rel="external" href="javascript:seleccionarEquipo('+idPlantilla[i]+');"><img src="img/escudos/64x/'+selecciones[i]+'.png" width="" alt="image" /></a> </div>');
		 } 
		else  if (i%4 == 2) {
	 	  	$("#timeline").append('<div class="ui-block-c" style="padding:0px 0px 10px 0px;"> '+'<a rel="external" href="javascript:seleccionarEquipo('+idPlantilla[i]+');"><img src="img/escudos/64x/'+selecciones[i]+'.png" width="" alt="image" /></a> </div>');
		 } 
		else  if (i%4 == 3) {
	 	  	$("#timeline").append('<div class="ui-block-d" style="padding:0px 0px 10px 0px;"> '+'<a rel="external" href="javascript:seleccionarEquipo('+idPlantilla[i]+');"><img src="img/escudos/64x/'+selecciones[i]+'.png" width="" alt="image" /></a> </div>');
		 } 

	} 
}

	// Guarda el equipo en la memoria interna y va a la pagina del equipo
	function seleccionarEquipo(idEquipo) {
		writeLocalStorage("equipo", idEquipo);

		window.location.href = linkEquipo;
		
	}
	 	