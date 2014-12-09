//GERAL
var deviceInfo = function() {
	document.addEventListener("online", doOnline, false);
};

function init() {
    document.addEventListener("deviceready", deviceInfo, true);
    setTimeout("prepararEntrarLocal()",3000);
}

function prepararEntrarLocal(){
	document.getElementById("btsair").style.display="none";
	$.mobile.showPageLoadingMsg();
    setTimeout("entrarLocal()",2000);
}

function doOnline() {
	setTimeout("prepararEntrarLocal()",3000);
}

function alertDismissed() {
    // do something
}

function alerta(msg) {
    navigator.notification.alert(
        msg,
        alertDismissed,
        'Atenção',
        'Ok'
    );
}

function fadingMsg (locMsg) {
    $("<div class='ui-loader ui-overlay-shadow ui-body-e ui-corner-all'><h1>" + locMsg + "</h1></div>")
    .css({ "display": "block", "opacity": 0.9, "top": $(window).scrollTop() + 100 })
    .appendTo( $.mobile.pageContainer )
    .delay( 2200 )
    .fadeOut( 1000, function(){
        $(this).remove();
   });
}

//SPLASH

function sairSplash(){
	navigator.app.exitApp();
}

function userCoordHome(){
	navigator.geolocation.getCurrentPosition ( 
            function(position) {
                lat = position.coords.latitude; 
                lon = position.coords.longitude;
                precisao = position.coords.accuracy;
                //position.timestamp
                window.localStorage.setItem("precisao", precisao);
                window.localStorage.setItem("lat", lat);
                window.localStorage.setItem("lon", lon);
                //atualiza localização no BD
                var id = window.localStorage.getItem("id_usuario");
                if ((eval(id) > 0) && (lat!="") && (lon!="") && (precisao!="")){
	                var url="http://www.rommel.com.br/point/atualiza_latlon.php?id="+id+"&lat="+lat+"&lon="+lon+"&precisao="+precisao;
	            	$.getJSON(url,function(json){
	            		$(json).each(function(){
	            			if (this.update == "OK"){
	            				$.mobile.changePage( $(window.location="home.html"), {} );
	            			}
	            		});
	            	});
                }else{
                	//Se não conseguiu recuperar o id do localStorage
                	userCoordHome();
                }
            }, 
            function(){ 
            	navigator.notification.vibrate(0);
            	$.mobile.hidePageLoadingMsg();
            	fadingMsg("Não foi possível buscar sua localização.");
            	document.getElementById("btsair").style.display="block";
            }, { enableHighAccuracy: true }
); 
}

function entrarLocal(){
   if ((navigator.network.connection.type == Connection.ETHERNET) || (navigator.network.connection.type == Connection.WIFI) || (navigator.network.connection.type == Connection.CELL_2G) || (navigator.network.connection.type == Connection.CELL_3G) || (navigator.network.connection.type == Connection.CELL_4G)){
		if (window.localStorage.getItem("logado") == "S"){
			userCoordHome();
			//$.mobile.changePage( $(window.location="home.html"), {} );//TESTAR EMULADOR
		}else{
			$.mobile.changePage( $(window.location="registro.html"), {} );
		}
   }else{
	   $.mobile.hidePageLoadingMsg();
   	   navigator.notification.vibrate(0);	 
   	   fadingMsg("Verifique sua conexão com a internet.");
   	   document.getElementById("btsair").style.display="block";
   }
}