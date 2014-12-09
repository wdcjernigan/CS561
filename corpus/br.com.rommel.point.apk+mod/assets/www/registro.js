var dfoto;

var deviceInfo = function() {
	document.addEventListener("offline", doOffline, false);
};

function init() {
    document.addEventListener("deviceready", deviceInfo, true);
}

function doOffline() {
	$.mobile.changePage( $(window.location="index.html"), {} );
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

function onConfirm(button) {
	if(button == 1){
		navigator.app.exitApp();
	}
}

function sairRegistro(){
    navigator.notification.confirm(
        'Deseja mesmo sair?',
        onConfirm,
        'Sair',
        'Sair,Cancelar'
    );
}

//CADASTRO
function dump_pic(data) {
    document.getElementById("foto").src = data;
    dfoto = data;
}

function onFail(message) {
	fadingMsg('Você não selecionou a foto.');
}

function getPicAlbum() {
    navigator.camera.getPicture(dump_pic, onFail, {
        quality : 30,
        destinationType: navigator.camera.DestinationType.FILE_URI,
        sourceType: navigator.camera.PictureSourceType.PHOTOLIBRARY
    });
}

function getPicCam() {
    navigator.camera.getPicture(dump_pic, onFail, {
    	quality : 30,
        destinationType: navigator.camera.DestinationType.FILE_URI,
        sourceType: navigator.camera.PictureSourceType.CAMERA
    });
}

function salvarRegistro(){
	if (dfoto == undefined){
		alert("Selecione ou tire, uma foto de rosto.");
	}else{
		if ($("#email").val() == ""){
			alert("Preencha seu E-mail!");
		}else{
			if ($("#nome").val() == ""){
				alert("Preencha seu Nome!");
			}else{
				if ($("#bio").val() == ""){
					alert("Preencha sua Bio!");
				}else{
					$("#btSalvar").addClass('ui-disabled');
					$.mobile.showPageLoadingMsg();
					gravarDados(dfoto);
				}
			}
		}
	}
}

function gravarDados(imageURI) {
	var url="http://www.rommel.com.br/point/json.php?rw=existe_cadastro&email="+$("#email").val();
	$.getJSON(url,function(json){
		$(json).each(function(){
			if (this.existe == "N"){
			    var options = new FileUploadOptions();
			    options.fileKey="file";
			    options.fileName=imageURI.substr(imageURI.lastIndexOf('/')+1);
			    options.mimeType="image/jpeg";
			
			    d = new Date();
			    
			    var params = new Object();
			    params.email = $("#email").val();
			    params.nome = $("#nome").val();
			    params.bio = $("#bio").val();
			    params.sexo = $("input:radio[name=sexo]:checked").val();
			    params.uuid = device.uuid;
			    params.time = d.getTime();
			    params.acao = "inserir";
			    
			    options.params = params;
			    options.chunkedMode = false;
			
			    var ft = new FileTransfer();
			    ft.upload(imageURI, "http://rommel.com.br/point/cadastro.php", win, fail, options);
			}else{
				if (this.existe == "S"){
					$('body,html').scrollTop(0);
					$.mobile.hidePageLoadingMsg();
					setTimeout(function()
							{
								navigator.notification.vibrate(0);
								fadingMsg("Já existe cadastro com este e-mail!");
							}, 1000);
				}else{
					$('body,html').scrollTop(0);
					$.mobile.hidePageLoadingMsg();
					setTimeout(function()
							{
								navigator.notification.vibrate(0);
								fadingMsg("Erro ao cadastrar. Tente mais tarde!");
							}, 1000);
				}
			}
		});
	});
}

function win(r) {
	$('body,html').scrollTop(0);
	$.mobile.hidePageLoadingMsg();
	setTimeout(function()
			{
				navigator.notification.vibrate(0);
				fadingMsg("Cadastrado(a) com sucesso! Acesse seu e-mail!");
			}, 1000);
}

function fail(error) {
	$('body,html').scrollTop(0);
	$.mobile.hidePageLoadingMsg();
	setTimeout(function()
			{
				navigator.notification.vibrate(0);
				fadingMsg("Erro ao cadastrar. Tente mais tarde.");
			}, 1000);
}

function logar(){
	$.mobile.showPageLoadingMsg();
	var url="http://www.rommel.com.br/point/json.php?rw=logar&email="+$("#login_email").val()+"&codigo="+$("#login_codigo").val();
	$.getJSON(url,function(json){
		$(json).each(function(){
			if (this.id_usuario == "0"){
				navigator.notification.vibrate(0);
				$.mobile.hidePageLoadingMsg();
				fadingMsg("E-mail ou Senha inválidos.");
			}else{
				window.localStorage.setItem("id_usuario", this.id_usuario);
				window.localStorage.setItem("logado", "S");
                window.localStorage.setItem("visivel", "S");
                window.localStorage.setItem("notsom", "S");
                window.localStorage.setItem("notvib","S");
				userCoordRegistro(this.id_usuario);
			}
		});
	});
}

function reenviarCodigo(){
	$.mobile.showPageLoadingMsg();
	var url="http://www.rommel.com.br/point/json.php?rw=reenviar_codigo&email="+$("#reenv_email").val();
	$.getJSON(url,function(json){
		$(json).each(function(){
			if (this.existe == "S"){
				$.mobile.hidePageLoadingMsg();
				$.mobile.changePage( "#registro", {} );
				navigator.notification.vibrate(0);
				fadingMsg("A senha foi enviada para seu e-mail!");
			}else{
				navigator.notification.vibrate(0);
				$.mobile.hidePageLoadingMsg();
				fadingMsg("E-mail inválido.");
			}
		});
	});
}

function userCoordRegistro(id){
	navigator.geolocation.getCurrentPosition ( 
            function(position) {
                lat = position.coords.latitude; 
                lon = position.coords.longitude;
                precisao = position.coords.accuracy;

                window.localStorage.setItem("precisao", precisao);
                window.localStorage.setItem("lat", lat);
                window.localStorage.setItem("lon", lon);
                //atualiza localização no BD
                var url="http://www.rommel.com.br/point/atualiza_latlon.php?id="+id+"&lat="+lat+"&lon="+lon+"&precisao="+precisao;
            	$.getJSON(url,function(json){
            		$(json).each(function(){
            			if (this.update == "OK"){
            				$.mobile.changePage( $(window.location="home.html"), {} );
            			}
            		});
            	});
            }, 
            function(){ 
            	navigator.notification.vibrate(0);
            	$.mobile.hidePageLoadingMsg();
            	fadingMsg("Não foi possível buscar sua localização.");
            }, { enableHighAccuracy: true }
); 
}