var dfoto;
var intMsg;
//var rwNot;

var deviceInfo = function() {
	document.addEventListener("offline", doOffline, false);
	$("#accuracy").html("Precisão de " + window.localStorage.getItem("precisao") + "m");
	window.setInterval("userCoordHome()", 300000); //5 min
	window.setInterval("atualizaOnline()", 60000);  //1 min
	
	$("#filtrarPointers").change(function() {
		carregarPointers();
	});
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

function sairHome(){
    navigator.notification.confirm(
        'Deseja mesmo sair?',
        onConfirm,
        'Sair',
        'Sair,Cancelar'
    );
}

//HOME
function userCoordHome(){
	navigator.geolocation.getCurrentPosition ( 
            function(position) {
                lat = position.coords.latitude; 
                lon = position.coords.longitude;
                precisao = position.coords.accuracy;
                window.localStorage.setItem("precisao", precisao);
                window.localStorage.setItem("lat", lat);
                window.localStorage.setItem("lon", lon);
                $("#accuracy").html("Precisão de " + precisao + "m");
                //atualiza localização no BD
                var id = window.localStorage.getItem("id_usuario");
                var url="http://www.rommel.com.br/point/atualiza_latlon.php?id="+id+"&lat="+lat+"&lon="+lon+"&precisao="+precisao;
            	$.getJSON(url,function(json){
            		$(json).each(function(){
            			if (this.update == "OK"){

            			}
            		});
            	});
            }, 
            function(){ 
            	//Não faz nada, caso não consiga pegar as coordenadas atuais
            	fadingMsg("Não foi possível atualizar sua localização.");
            }, { enableHighAccuracy: true }
); 
}

function atualizaOnline(){
	var not = "";
	var id = window.localStorage.getItem("id_usuario");
	var url="http://www.rommel.com.br/point/atualiza_online.php?id="+id;
	$.getJSON(url,function(json){
		if (json.count_msg != "0"){
			$("#count_msg").addClass("ui-li-count");
			$("#count_msg").html(json.count_msg);
			not += "Nova mensagem, ";
		}else{
			$("#count_msg").removeClass("ui-li-count");
			$("#count_msg").html("");
		}
		if (json.count_gostou != "0"){
			$("#count_gostou").addClass("ui-li-count");
			$("#count_gostou").html(json.count_gostou);
			not += "Gostaram de você, ";
		}else{
			$("#count_gostou").removeClass("ui-li-count");
			$("#count_gostou").html("");
		}
		if (json.count_afim != "0"){
			$("#count_afim").addClass("ui-li-count");
			$("#count_afim").html(json.count_afim);
			not += "Nova afinidade, ";
		}else{
			$("#count_afim").removeClass("ui-li-count");
			$("#count_afim").html("");
		}
		$("#listMenu").listview("refresh");
		//NOTIFICAÇÃO SOM E VIB, DE ACORDO COM CONFIG
		if (not != ""){
			not += "veja!";
			if (window.localStorage.getItem("notvib") == "S"){
				navigator.notification.vibrate(500);
			}
			if (window.localStorage.getItem("notsom") == "S"){
				navigator.notification.beep(1);
			}
			window.plugins.statusBarNotification.notify("Point Avisos", not);
			setTimeout("limparNotify()",5000);
			//rwNot = "S";
		}
	});
	carregarPointers();
}

function limparNotify(){
	window.plugins.statusBarNotification.clearNotify();
}

//POINTERS,ETC...
$('#home').live("pageshow", function() {
	atualizaOnline();
	window.clearInterval(intMsg);
	//if (rwNot == "S"){
	//	window.plugins.statusBarNotification.clearNotify();
	//	rwNot = "";
	//}
});

$('#pointers').live("pageshow", function() {
	carregarPointers();
	window.clearInterval(intMsg);
});

$('#listaMsg').live("pageshow", function() {
	carregarListaMsg();
	window.clearInterval(intMsg);
});

$('#mural').live("pageshow", function() {
	carregarMsgMural();
	window.clearInterval(intMsg);
});

$('#favoritos').live("pageshow", function() {
	carregarFavoritos();
	window.clearInterval(intMsg);
});

$('#gostei').live("pageshow", function() {
	carregarGostei();
	window.clearInterval(intMsg);
});

$('#gostou').live("pageshow", function() {
	carregarGostou();
	window.clearInterval(intMsg);
});

$('#correspondido').live("pageshow", function() {
	carregarAfinidade();
	window.clearInterval(intMsg);
});

$('#sobre').live("pageshow", function() {
	$("#btEnviarMsgFale").unbind('click').click(function(){
		enviarMsgFale($("#msgFale").val());
		$("#msgFale").val("");
	});
	window.clearInterval(intMsg);
});

$('#config').live("pageshow", function() {
	carregarConfig();
});

function carregarPointers(){
	$.mobile.showPageLoadingMsg();
	
	$("#pointersOnline").empty();
	listPointers='<li data-role="list-divider">Pointers Online</li>';
	var sexo = $("#filtrarPointers").val();
	var id = window.localStorage.getItem("id_usuario");
	var url="http://www.rommel.com.br/point/json.php?rw=pointers_online&id="+id+"&sexo="+sexo;
	$.getJSON(url,function(json){
		if (this.qtd == "0"){
			$("#pointersOnline").html(listPointers);
			$("#pointersOnline").listview("refresh");
		}else{
			$(json.results).each(function(){
				listPointers += '<li>';
				listPointers += '<a href="javascript:pageMsgUser(' + this.id + ');">';
				d = new Date();
				listPointers += '<img src="http://rommel.com.br/point/foto_thumb/' + this.foto + '" />';
				listPointers += '<h3>' + this.nome + '</h3>';
				listPointers += '<p>' + this.bio + '</p>';
				listPointers += '</a>';
				listPointers += '<a href="javascript:perfilUser(' + this.id + ');">Perfil</a>';
				listPointers += '</li>';
			});
			$("#pointersOnline").html(listPointers);
			$("#pointersOnline").listview("refresh");
		}
	});
	
	$.mobile.hidePageLoadingMsg();
}

function carregarListaMsg(){
	$.mobile.showPageLoadingMsg();
	
	$("#lstListarMsgOn").empty();
	listMsgOn='<li data-role="list-divider">Online</li>';
	var idOn = window.localStorage.getItem("id_usuario");
	var urlOn="http://www.rommel.com.br/point/json.php?rw=listar_user_msg&id="+idOn+"&estado=online";
	$.getJSON(urlOn,function(json){
		if (this.qtd == "0"){
			$("#lstListarMsgOn").html(listMsgOn);
			$("#lstListarMsgOn").listview("refresh");
		}else{
			$(json.results).each(function(){
				listMsgOn += '<li>';
				listMsgOn += '<a href="javascript:pageMsgUser(' + this.id + ');">';
				d = new Date();
				listMsgOn += '<img src="http://rommel.com.br/point/foto_thumb/' + this.foto + '" />';
				listMsgOn += '<h3>' + this.nome + '</h3>';
				listMsgOn += '<p>' + this.bio + '</p>';
				if (this.nao_lida != "0"){
					listMsgOn += '<span class="ui-li-count">'+this.nao_lida+'</span>';
				}
				listMsgOn += '</a>';
				listMsgOn += '<a href="javascript:retirarListaMsg(' + this.id + ');">Retirar</a>';
				listMsgOn += '</li>';
			});
			$("#lstListarMsgOn").html(listMsgOn);
			$("#lstListarMsgOn").listview("refresh");
		}
	});
	
	$("#lstListarMsgOff").empty();
	listMsgOff='<li data-role="list-divider">Offline</li>';
	var idOff = window.localStorage.getItem("id_usuario");
	var urlOff="http://www.rommel.com.br/point/json.php?rw=listar_user_msg&id="+idOff+"&estado=offline";
	$.getJSON(urlOff,function(json){
		if (this.qtd == "0"){
			$("#lstListarMsgOff").html(listMsgOff);
			$("#lstListarMsgOff").listview("refresh");
		}else{
			$(json.results).each(function(){
				listMsgOff += '<li>';
				listMsgOff += '<a href="javascript:pageMsgUser(' + this.id + ');">';
				d = new Date();
				listMsgOff += '<img src="http://rommel.com.br/point/foto_thumb/' + this.foto + '" />';
				listMsgOff += '<h3>' + this.nome + '</h3>';
				listMsgOff += '<p>' + this.bio + '</p>';
				if (this.nao_lida != "0"){
					listMsgOff += '<span class="ui-li-count">'+this.nao_lida+'</span>';
				}
				listMsgOff += '</a>';
				listMsgOff += '<a href="javascript:retirarListaMsg(' + this.id + ');">Retirar</a>';
				listMsgOff += '</li>';
			});
			$("#lstListarMsgOff").html(listMsgOff);
			$("#lstListarMsgOff").listview("refresh");
		}
	});
	
	$.mobile.hidePageLoadingMsg();
}

function carregarFavoritos(){
	$.mobile.showPageLoadingMsg();
	
	$("#lstListarFavOn").empty();
	listFavOn='<li data-role="list-divider">Online</li>';
	var idOn = window.localStorage.getItem("id_usuario");
	var urlOn="http://www.rommel.com.br/point/json.php?rw=listar_favoritos&id="+idOn+"&estado=online";
	$.getJSON(urlOn,function(json){
		if (this.qtd == "0"){
			$("#lstListarFavOn").html(listFavOn);
			$("#lstListarFavOn").listview("refresh");
		}else{
			$(json.results).each(function(){
				listFavOn += '<li>';
				listFavOn += '<a href="javascript:pageMsgUser(' + this.id + ');">';
				d = new Date();
				listFavOn += '<img src="http://rommel.com.br/point/foto_thumb/' + this.foto + '" />';
				listFavOn += '<h3>' + this.nome + '</h3>';
				listFavOn += '<p>' + this.bio + '</p>';
				if (this.nao_lida != "0"){
					listFavOn += '<span class="ui-li-count">'+this.nao_lida+'</span>';
				}
				listFavOn += '</a>';
				listFavOn += '<a href="javascript:retirarFavoritos(' + this.id + ');">Retirar</a>';
				listFavOn += '</li>';
			});
			$("#lstListarFavOn").html(listFavOn);
			$("#lstListarFavOn").listview("refresh");
		}
	});
	
	$("#lstListarFavOff").empty();
	listFavOff='<li data-role="list-divider">Offline</li>';
	var idOff = window.localStorage.getItem("id_usuario");
	var urlOff="http://www.rommel.com.br/point/json.php?rw=listar_favoritos&id="+idOff+"&estado=offline";
	$.getJSON(urlOff,function(json){
		if (this.qtd == "0"){
			$("#lstListarFavOff").html(listFavOff);
			$("#lstListarFavOff").listview("refresh");
		}else{
			$(json.results).each(function(){
				listFavOff += '<li>';
				listFavOff += '<a href="javascript:pageMsgUser(' + this.id + ');">';
				d = new Date();
				listFavOff += '<img src="http://rommel.com.br/point/foto_thumb/' + this.foto + '" />';
				listFavOff += '<h3>' + this.nome + '</h3>';
				listFavOff += '<p>' + this.bio + '</p>';
				if (this.nao_lida != "0"){
					listFavOff += '<span class="ui-li-count">'+this.nao_lida+'</span>';
				}
				listFavOff += '</a>';
				listFavOff += '<a href="javascript:retirarFavoritos(' + this.id + ');">Retirar</a>';
				listFavOff += '</li>';
			});
			$("#lstListarFavOff").html(listFavOff);
			$("#lstListarFavOff").listview("refresh");
		}
	});
	
	$.mobile.hidePageLoadingMsg();	
}

function carregarGostei(){
	$.mobile.showPageLoadingMsg();
	
	$("#lstListarGosteiOn").empty();
	listGosteiOn='<li data-role="list-divider">Online</li>';
	var idOn = window.localStorage.getItem("id_usuario");
	var urlOn="http://www.rommel.com.br/point/json.php?rw=listar_gostei&id="+idOn+"&estado=online";
	$.getJSON(urlOn,function(json){
		if (this.qtd == "0"){
			$("#lstListarGosteiOn").html(listGosteiOn);
			$("#lstListarGosteiOn").listview("refresh");
		}else{
			$(json.results).each(function(){
				listGosteiOn += '<li>';
				listGosteiOn += '<a href="javascript:pageMsgUser(' + this.id + ');">';
				d = new Date();
				listGosteiOn += '<img src="http://rommel.com.br/point/foto_thumb/' + this.foto + '" />';
				listGosteiOn += '<h3>' + this.nome + '</h3>';
				listGosteiOn += '<p>' + this.bio + '</p>';
				if (this.nao_lida != "0"){
					listGosteiOn += '<span class="ui-li-count">'+this.nao_lida+'</span>';
				}
				listGosteiOn += '</a>';
				listGosteiOn += '<a href="javascript:retirarGostei(' + this.id + ');">Retirar</a>';
				listGosteiOn += '</li>';
			});
			$("#lstListarGosteiOn").html(listGosteiOn);
			$("#lstListarGosteiOn").listview("refresh");
		}
	});
	
	$("#lstListarGosteiOff").empty();
	listGosteiOff='<li data-role="list-divider">Offline</li>';
	var idOff = window.localStorage.getItem("id_usuario");
	var urlOff="http://www.rommel.com.br/point/json.php?rw=listar_gostei&id="+idOff+"&estado=offline";
	$.getJSON(urlOff,function(json){
		if (this.qtd == "0"){
			$("#lstListarGosteiOff").html(listGosteiOff);
			$("#lstListarGosteiOff").listview("refresh");
		}else{
			$(json.results).each(function(){
				listGosteiOff += '<li>';
				listGosteiOff += '<a href="javascript:pageMsgUser(' + this.id + ');">';
				d = new Date();
				listGosteiOff += '<img src="http://rommel.com.br/point/foto_thumb/' + this.foto + '" />';
				listGosteiOff += '<h3>' + this.nome + '</h3>';
				listGosteiOff += '<p>' + this.bio + '</p>';
				if (this.nao_lida != "0"){
					listGosteiOff += '<span class="ui-li-count">'+this.nao_lida+'</span>';
				}
				listGosteiOff += '</a>';
				listGosteiOff += '<a href="javascript:retirarGostei(' + this.id + ');">Retirar</a>';
				listGosteiOff += '</li>';
			});
			$("#lstListarGosteiOff").html(listGosteiOff);
			$("#lstListarGosteiOff").listview("refresh");
		}
	});
	
	$.mobile.hidePageLoadingMsg();	
}

function carregarGostou(){
	$.mobile.showPageLoadingMsg();
	
	$("#lstListarGostouOn").empty();
	listGostouOn='<li data-role="list-divider">Online</li>';
	var idOn = window.localStorage.getItem("id_usuario");
	var urlOn="http://www.rommel.com.br/point/json.php?rw=listar_gostou&id="+idOn+"&estado=online";
	$.getJSON(urlOn,function(json){
		if (this.qtd == "0"){
			$("#lstListarGostouOn").html(listGostouOn);
			$("#lstListarGostouOn").listview("refresh");
		}else{
			$(json.results).each(function(){
				listGostouOn += '<li>';
				listGostouOn += '<a href="javascript:pageMsgUser(' + this.id + ');">';
				d = new Date();
				listGostouOn += '<img src="http://rommel.com.br/point/foto_thumb/' + this.foto + '" />';
				listGostouOn += '<h3>' + this.nome + '</h3>';
				listGostouOn += '<p>' + this.bio + '</p>';
				if (this.nao_visto != "0"){
					listGostouOn += '<span class="ui-li-count">'+this.nao_visto+'</span>';
				}
				listGostouOn += '</a>';
				listGostouOn += '<a href="javascript:retirarGostou(' + this.id + ');">Retirar</a>';
				listGostouOn += '</li>';
			});
			$("#lstListarGostouOn").html(listGostouOn);
			$("#lstListarGostouOn").listview("refresh");
		}
	});
	
	$("#lstListarGostouOff").empty();
	listGostouOff='<li data-role="list-divider">Offline</li>';
	var idOff = window.localStorage.getItem("id_usuario");
	var urlOff="http://www.rommel.com.br/point/json.php?rw=listar_gostou&id="+idOff+"&estado=offline";
	$.getJSON(urlOff,function(json){
		if (this.qtd == "0"){
			$("#lstListarGostouOff").html(listGostouOff);
			$("#lstListarGostouOff").listview("refresh");
		}else{
			$(json.results).each(function(){
				listGostouOff += '<li>';
				listGostouOff += '<a href="javascript:pageMsgUser(' + this.id + ');">';
				d = new Date();
				listGostouOff += '<img src="http://rommel.com.br/point/foto_thumb/' + this.foto + '" />';
				listGostouOff += '<h3>' + this.nome + '</h3>';
				listGostouOff += '<p>' + this.bio + '</p>';
				if (this.nao_visto != "0"){
					listGostouOff += '<span class="ui-li-count">'+this.nao_visto+'</span>';
				}
				listGostouOff += '</a>';
				listGostouOff += '<a href="javascript:retirarGostou(' + this.id + ');">Retirar</a>';
				listGostouOff += '</li>';
			});
			$("#lstListarGostouOff").html(listGostouOff);
			$("#lstListarGostouOff").listview("refresh");
		}
	});
	
	$.mobile.hidePageLoadingMsg();	
}

function carregarAfinidade(){
	$.mobile.showPageLoadingMsg();
	
	$("#lstListarAfimOn").empty();
	listAfimOn='<li data-role="list-divider">Online</li>';
	var idOn = window.localStorage.getItem("id_usuario");
	var urlOn="http://www.rommel.com.br/point/json.php?rw=listar_afinidade&id="+idOn+"&estado=online";
	$.getJSON(urlOn,function(json){
		if (this.qtd == "0"){
			$("#lstListarAfimOn").html(listAfimOn);
			$("#lstListarAfimOn").listview("refresh");
		}else{
			$(json.results).each(function(){
				listAfimOn += '<li>';
				listAfimOn += '<a href="javascript:pageMsgUser(' + this.id + ');">';
				d = new Date();
				listAfimOn += '<img src="http://rommel.com.br/point/foto_thumb/' + this.foto + '" />';
				listAfimOn += '<h3>' + this.nome + '</h3>';
				listAfimOn += '<p>' + this.bio + '</p>';
				if (this.nao_visto != "0"){
					listAfimOn += '<span class="ui-li-count">'+this.nao_visto+'</span>';
				}
				listAfimOn += '</a>';
				listAfimOn += '<a href="javascript:retirarCorrespondido(' + this.id + ');">Retirar</a>';
				listAfimOn += '</li>';
			});
			$("#lstListarAfimOn").html(listAfimOn);
			$("#lstListarAfimOn").listview("refresh");
		}
	});
	
	$("#lstListarAfimOff").empty();
	listAfimOff='<li data-role="list-divider">Offline</li>';
	var idOff = window.localStorage.getItem("id_usuario");
	var urlOff="http://www.rommel.com.br/point/json.php?rw=listar_afinidade&id="+idOff+"&estado=offline";
	$.getJSON(urlOff,function(json){
		if (this.qtd == "0"){
			$("#lstListarAfimOff").html(listAfimOff);
			$("#lstListarAfimOff").listview("refresh");
		}else{
			$(json.results).each(function(){
				listAfimOff += '<li>';
				listAfimOff += '<a href="javascript:pageMsgUser(' + this.id + ');">';
				d = new Date();
				listAfimOff += '<img src="http://rommel.com.br/point/foto_thumb/' + this.foto + '" />';
				listAfimOff += '<h3>' + this.nome + '</h3>';
				listAfimOff += '<p>' + this.bio + '</p>';
				if (this.nao_visto != "0"){
					listAfimOff += '<span class="ui-li-count">'+this.nao_visto+'</span>';
				}
				listAfimOff += '</a>';
				listAfimOff += '<a href="javascript:retirarCorrespondido(' + this.id + ');">Retirar</a>';
				listAfimOff += '</li>';
			});
			$("#lstListarAfimOff").html(listAfimOff);
			$("#lstListarAfimOff").listview("refresh");
		}
	});
	
	$.mobile.hidePageLoadingMsg();	
}

function carregarConfig(){
	$.mobile.showPageLoadingMsg();
	
	var id = window.localStorage.getItem("id_usuario");
	var url="http://www.rommel.com.br/point/json.php?rw=carregar_config&id_usuario="+id;
	$.getJSON(url,function(json){
		$(json).each(function(){
			d = new Date();
			document.getElementById("config_foto").src = "http://rommel.com.br/point/foto_thumb/" + this.foto+"?"+d.getTime();
			document.getElementById("ftperfilzoom").src='http://rommel.com.br/point/foto/' + this.foto + '?' + d.getTime();
			$("#email").val(this.email);
			$("#nome").val(this.nome);
			if (this.sexo == "M"){
				$("#sexom").attr('checked', true).checkboxradio("refresh");
				$("#sexof").attr('checked', false).checkboxradio("refresh");
			}else{
				$("#sexom").attr('checked', false).checkboxradio("refresh");
				$("#sexof").attr('checked', true).checkboxradio("refresh");
			}
			$("#bio").val(this.bio);
			$("#geovisivel").val(this.visivel);
			$('#geovisivel').slider('refresh');
			$("#geoarea").val(this.distancia);
			$('#geoarea').slider('refresh');
			if (window.localStorage.getItem("notsom") == "S"){
				$("#notsom").attr('checked', true).checkboxradio("refresh");
			}else{
				$("#notsom").attr('checked', false).checkboxradio("refresh");
			}
			if (window.localStorage.getItem("notvib") == "S"){
				$("#notvib").attr('checked', true).checkboxradio("refresh");
			}else{
				$("#notvib").attr('checked', false).checkboxradio("refresh");
			}
			$('#notemail').val(this.notificacao_email);
			$('#notemail').selectmenu('refresh');
		});
	});
	
	$.mobile.hidePageLoadingMsg();
}

function abrirMapa(){
	var visivel = window.localStorage.getItem("visivel");
	if (visivel == "S"){
		$.mobile.changePage("#page-map");
	}else{
		fadingMsg("Para ver quem tá online no mapa, você tem que estar visível. Altere em configurações.");
	}
}

function atualizarMapa(){
	$.mobile.showPageLoadingMsg();
	userCoordHome();
	window.location.reload();
	$.mobile.hidePageLoadingMsg();
}

function pageMsgUser(id){
	$.mobile.changePage("#msgUser", {});
	
	$.mobile.showPageLoadingMsg();

	var url="http://www.rommel.com.br/point/json.php?rw=carregar_perfil&id="+id;
	$.getJSON(url,function(json){
		$(json).each(function(){
			$("#btPerfilMsgUser").unbind('click').click(function(){
				perfilUser(id);
			});
			$("#nmMsg").html(this.nome);
		});
	});
	$("#btEnviarMsg").unbind('click').click(function(){
		enviarMsgUser(id, $("#msg").val());
		$("#msg").val("");
	});
	
	carregarMsgUser(id);
	intMsg = window.setInterval("carregarMsgUser("+id+")", 10000);  //10 seg
	
	$.mobile.hidePageLoadingMsg();
}

function carregarMsgUser(id){
	var id_de = window.localStorage.getItem("id_usuario");
	var id_para = id;
	var chat='';
	var local;
	var zoom;

	var url="http://www.rommel.com.br/point/json.php?rw=listar_msg&id_de="+id_de+"&id_para="+id_para;
	$.getJSON(url,function(json){
		$(json).each(function(){
			if ((this.lat != "") && (this.lon != "") && (this.tipo_mapa != "")){
				if (this.tipo_mapa == "roadmap"){
					zoom = 14;
				}else{
					zoom = 17;
				}
				local = '<br/><img src="http://maps.googleapis.com/maps/api/staticmap?center='+this.lat+','+this.lon+'&zoom='+zoom+'&format=png&sensor=false&size=200x200&maptype='+this.tipo_mapa+'&markers=icon:http://rommel.com.br/point/img/icon_voce.png|shadow:false|'+this.lat+','+this.lon+'" />';	
			}else{
				local = '';
			}
			if (this.id_de == id_de){//EU
				var lida="";
				if(this.dt_leitura != ""){
					lida = "Lida em "+this.dt_leitura; 
				}
				chat += '<div class="texto" style="font-size:10px; text-align:right; margin-bottom:-10px;">'+this.dt_envio+'</div>';
				chat += '<div><div style="float:left; margin-top:10px;"><img width="40" src="http://rommel.com.br/point/foto_thumb/'+this.ft_de+'" /></div><div class="triangle-right left ui-shadow textobubbles">'+this.msg+local+'<div class="tweet-right tweetDate"> '+lida+'</div></div></div>';
				chat += '<BR />';
			}else{//ELE(A)
				chat += '<div class="texto" style="font-size:10px; margin-bottom:-13px; padding-left:5px;">'+this.dt_envio+'</div>';
				chat += '<table border="0" width="100%"><tr valign="top"><td width="100%"><div class="triangle-right right ui-shadow textobubbles">'+this.msg+local+'</div></td><td width="80"><div style="margin-top:20px;"><img width="40" src="http://rommel.com.br/point/foto_thumb/'+this.ft_de+'" /></div></td></tr></table>';
				chat += '<BR />';
			}
		});
		$("#chat").html(chat);
	});
}

function carregarMsgMural(){
	var id = window.localStorage.getItem("id_usuario");
	var chatMural='';
	$("#chatMural").empty();
	var url="http://www.rommel.com.br/point/json.php?rw=listar_mural&id="+id;
	$.getJSON(url,function(json){
		$(json).each(function(){
			chatMural += '<div class="ui-body ui-body-d ui-corner-all ui-shadow">';
			chatMural += '	<div class="tweet">';
			chatMural += '		<div class="tweet-left"><a href="javascript:pageMsgUser('+this.id+');"><img src="http://rommel.com.br/point/foto_thumb/'+this.foto+'" /></a></div>';
			chatMural += '		<div><b>'+this.nome+'</b><br /><br /><p class="text">'+this.msg+'</p></div>';
			chatMural += '		<div class="tweet-right tweetDate">'+this.data+'</div>';
			if (this.id == id){
				chatMural += '		<div class="tweet-right">';
				chatMural += '			<a href="javascript:retirarMsgUserMural('+this.id_mural+');"><img src="img/lixeira.png" /></a>';
				chatMural += '		</div>';
			}
			chatMural += '	</div>';
			chatMural += '</div>';
			chatMural += '<br/>';
		});
		$("#chatMural").html(chatMural);
	});
	$("#btEnviarMsgMural").unbind('click').click(function(){
		enviarMsgMural(id, $("#msgMural").val());
		$("#msgMural").val("");
	});
}

function perfilUser(id){
	$.mobile.changePage("#perfilUser", {});
	
	$.mobile.showPageLoadingMsg();
	
	listPerfil='<li data-role="list-divider">Informações do Perfil</li>';

	var url="http://www.rommel.com.br/point/json.php?rw=carregar_perfil&id="+id;
	$.getJSON(url,function(json){
		$(json).each(function(){
			if (this.sexo == "M"){
				sexo = "Homem";
			}else{
				sexo = "Mulher";
			}
			listPerfil += '<li>';
			listPerfil += '<a href="#ftperfil">';
			d = new Date();
			listPerfil += '<img src="http://rommel.com.br/point/foto_thumb/' + this.foto + '?' + d.getTime() + '" />';
			listPerfil += '<h3>' + this.nome + '</h3>';
			listPerfil += '<p>' + sexo + '</p>';
			if (this.online != ""){
				listPerfil += '<span class="ui-li-count ui-body-e">Online</span>';
			}else{
				listPerfil += '<span class="ui-li-count ui-body-c">Offline</span>';
			}
			listPerfil += '</a>';
			listPerfil += '</li>';
			
			$("#perfilBio").html("<B>"+this.bio+"</B>");
			document.getElementById("ftperfilzoom").src='http://rommel.com.br/point/foto/' + this.foto + '?' + d.getTime();
		});
		$("#listPerfilUser").html(listPerfil);
		$("#listPerfilUser").listview("refresh");
	});
	
	$("#btPerfilFav").unbind('click').click(function(){
		favoritar(id);
	});
	$("#btPerfilGos").unbind('click').click(function(){
		gostar(id);
	});
	
	$.mobile.hidePageLoadingMsg();

}

function enviarMsgUser(id, msg){
	var id_de = window.localStorage.getItem("id_usuario");
	var id_para = id;
	var lat;
	var lon;
	var maptype;
	
	if( msg.indexOf( "#locationsat" ) != -1 ){
		lat = window.localStorage.getItem("lat");
		lon = window.localStorage.getItem("lon");
		maptype = "satellite";
		msg = msg.replace("#locationsat"," ");
	}else{
		if( msg.indexOf( "#location" ) != -1 ){
			lat = window.localStorage.getItem("lat");
			lon = window.localStorage.getItem("lon");
			maptype = "roadmap";
			msg = msg.replace("#location"," ");
		}else{
			lat = "";
			lon = "";
			maptype = "";
		}
	}
	var url="http://www.rommel.com.br/point/enviar_msg.php?id_de="+id_de+"&id_para="+id_para+"&msg="+msg+"&lat="+lat+"&lon="+lon+"&maptype="+maptype;
	$.getJSON(url,function(json){
		$(json).each(function(){
			if (this.update == "OK"){
				carregarMsgUser(id);
			}
		});
	});
}

function enviarMsgMural(id, msg){
	var id = window.localStorage.getItem("id_usuario");
	var lat = window.localStorage.getItem("lat");
	var lon = window.localStorage.getItem("lon");
	var precisao = window.localStorage.getItem("precisao");

	var url="http://www.rommel.com.br/point/enviar_mural.php?id_usuario="+id+"&msg="+msg+"&lat="+lat+"&lon="+lon+"&precisao="+precisao;
	$.getJSON(url,function(json){
		$(json).each(function(){
			if (this.update == "OK"){
				carregarMsgMural(id);
			}
		});
	});
}

function enviarMsgFale(msg){
	var id = window.localStorage.getItem("id_usuario");

	var url="http://www.rommel.com.br/point/enviar_faleconosco.php?id="+id+"&msg="+msg;
	$.getJSON(url,function(json){
		$(json).each(function(){
			if (this.update == "OK"){
				$('body,html').scrollTop(0);
				setTimeout(function()
						{
							navigator.notification.vibrate(0);
							fadingMsg("Mensagem enviada! Obrigado!");
						}, 1000);
			}
		});
	});
}

function retirarListaMsg(id){
	navigator.notification.confirm(
	        'Deseja retirar da lista?',
	        function(button){
	        	if(button == 1){
	        		var id_para = window.localStorage.getItem("id_usuario");
	        		var id_de = id;

	        		var url="http://www.rommel.com.br/point/retirar.php?rw=msg&id_de="+id_de+"&id_para="+id_para;
	        		$.getJSON(url,function(json){
	        			$(json).each(function(){
	        				if (this.update == "OK"){
	        					carregarListaMsg();
	        				}
	        			});
	        		});
	        	}
	        },
	        'Mensagem',
	        'Sim,Não'
	);
}

function retirarMsgUserMural(id){
	navigator.notification.confirm(
	        'Deseja excluir esta mensagem?',
	        function(button){
	        	if(button == 1){
	        		var url="http://www.rommel.com.br/point/retirar.php?rw=mural&id_mural="+id+"&id_de=0&id_para=0";
	        		$.getJSON(url,function(json){
	        			$(json).each(function(){
	        				if (this.update == "OK"){
	        					carregarMsgMural();
	        				}
	        			});
	        		});
	        	}
	        },
	        'Mural',
	        'Sim,Não'
	);
}

function retirarFavoritos(id){
	navigator.notification.confirm(
	        'Deseja retirar da lista?',
	        function(button){
	        	if(button == 1){
	        		var id_de = window.localStorage.getItem("id_usuario");
	        		var id_para = id;

	        		var url="http://www.rommel.com.br/point/retirar.php?rw=favorito&id_de="+id_de+"&id_para="+id_para;
	        		$.getJSON(url,function(json){
	        			$(json).each(function(){
	        				if (this.update == "OK"){
	        					carregarFavoritos();
	        				}
	        			});
	        		});
	        	}
	        },
	        'Favoritos',
	        'Sim,Não'
	);
}

function retirarGostei(id){
	navigator.notification.confirm(
	        'Deseja deixar de gostar?',
	        function(button){
	        	if(button == 1){
	        		var id_de = window.localStorage.getItem("id_usuario");
	        		var id_para = id;

	        		var url="http://www.rommel.com.br/point/retirar.php?rw=gostei&id_de="+id_de+"&id_para="+id_para;
	        		$.getJSON(url,function(json){
	        			$(json).each(function(){
	        				if (this.update == "OK"){
	        					carregarGostei();
	        				}
	        			});
	        		});
	        	}
	        },
	        'Gostei',
	        'Sim,Não'
	);
}

function retirarGostou(id){
	navigator.notification.confirm(
	        'Deseja retirar da lista?',
	        function(button){
	        	if(button == 1){
	        		var id_para = window.localStorage.getItem("id_usuario");
	        		var id_de = id;

	        		var url="http://www.rommel.com.br/point/retirar.php?rw=gostou&id_de="+id_de+"&id_para="+id_para;
	        		$.getJSON(url,function(json){
	        			$(json).each(function(){
	        				if (this.update == "OK"){
	        					carregarGostou();
	        				}
	        			});
	        		});
	        	}
	        },
	        'Gostou de você',
	        'Sim,Não'
	);
}

function retirarCorrespondido(id){
	navigator.notification.confirm(
	        'Deseja desistir da afinidade?',
	        function(button){
	        	if(button == 1){
	        		var id_de = window.localStorage.getItem("id_usuario");
	        		var id_para = id;

	        		var url="http://www.rommel.com.br/point/retirar.php?rw=gostei&id_de="+id_de+"&id_para="+id_para;
	        		$.getJSON(url,function(json){
	        			$(json).each(function(){
	        				if (this.update == "OK"){
	        					carregarAfinidade();
	        				}
	        			});
	        		});
	        	}
	        },
	        'Gostei',
	        'Sim,Não'
	);
}

function favoritar(id){
	var id_de = window.localStorage.getItem("id_usuario");
	var id_para = id;

	var url="http://www.rommel.com.br/point/favoritar.php?id_de="+id_de+"&id_para="+id_para;
	$.getJSON(url,function(json){
		$(json).each(function(){
			if (this.existe == "N"){
				fadingMsg("Adicionado como Favorito!");
			}else{
				fadingMsg("Já está como Favorito!");
			}
		});
	});
}

function gostar(id){
	var id_de = window.localStorage.getItem("id_usuario");
	var id_para = id;

	var url="http://www.rommel.com.br/point/gostar.php?id_de="+id_de+"&id_para="+id_para;
	$.getJSON(url,function(json){
		$(json).each(function(){
			if (this.existe == "N"){
				fadingMsg("Ok! Você gostou!");
			}else{
				fadingMsg("Já havia gostado antes!");
			}
		});
	});
}

function dump_pic(data) {
    document.getElementById("config_foto").src = data;
    document.getElementById("ftperfilzoom").src = data;
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

function salvarConfig(){
	$.mobile.showPageLoadingMsg();
	
	var mvisivel = $("#geovisivel").val();
	window.localStorage.setItem("visivel", mvisivel);
	
	if ($("#notsom").is(':checked')){
		window.localStorage.setItem("notsom", "S");
	}else{
		window.localStorage.setItem("notsom", "N");
	}
	if ($("#notvib").is(':checked')){
		window.localStorage.setItem("notvib", "S");
	}else{
		window.localStorage.setItem("notvib", "N");
	}
	
	if (dfoto != undefined){ //Se selecionou uma foto
		imageURI = dfoto;
	    var options = new FileUploadOptions();
	    options.fileKey="file";
	    options.fileName=imageURI.substr(imageURI.lastIndexOf('/')+1);
	    options.mimeType="image/jpeg";
	
	    d = new Date();
	    
	    var params = new Object();
	    params.nome = $("#nome").val();
	    params.bio = $("#bio").val();
	    params.sexo = $("input:radio[name=sexo]:checked").val();
	    params.distancia = $("#geoarea").val();
	    params.visivel = mvisivel;
	    params.notemail = $("#notemail").val();
	    params.uuid = device.uuid;
	    params.time = d.getTime();
	    params.id = window.localStorage.getItem("id_usuario");
	    params.acao = "alterar";
	    
	    options.params = params;
	    options.chunkedMode = false;
	
	    var ft = new FileTransfer();
	    ft.upload(imageURI, "http://rommel.com.br/point/cadastro.php", win, fail, options);
	}else{ //Se não selecionou foto
		var nome = $("#nome").val();
	    var bio = $("#bio").val();
	    var sexo = $("input:radio[name=sexo]:checked").val();
	    var distancia = $("#geoarea").val();
	    var visivel = mvisivel;
	    var notemail = $("#notemail").val();
	    var id = window.localStorage.getItem("id_usuario");
	    
	    var url="http://www.rommel.com.br/point/atualiza_cadastro.php?id="+id+"&nome="+nome+"&bio="+bio+"&sexo="+sexo+"&distancia="+distancia+"&visivel="+visivel+"&notemail="+notemail;
    	$.getJSON(url,function(json){
    		$(json).each(function(){
    			if (this.update == "OK"){
    				win(this.update);
    			}
    		});
    	});
	}
}

function win(r) {
	$('body,html').scrollTop(0);
	$.mobile.hidePageLoadingMsg();
	setTimeout(function()
			{
				navigator.notification.vibrate(0);
				fadingMsg("Alterado com sucesso!");
			}, 1000);
}

function fail(error) {
	$('body,html').scrollTop(0);
	$.mobile.hidePageLoadingMsg();
	setTimeout(function()
			{
				navigator.notification.vibrate(0);
				fadingMsg("Erro ao alterar. Tente mais tarde.");
			}, 1000);
}

function excluirConta(){
	navigator.notification.confirm(
	        'Deseja mesmo excluir seu cadastro?',
	        function(button){
	        	if(button == 1){
	        		var id = window.localStorage.getItem("id_usuario");

	        		var url="http://www.rommel.com.br/point/retirar.php?rw=cadastro&id="+id;
	        		$.getJSON(url,function(json){
	        			$(json).each(function(){
	        				if (this.update == "OK"){
	        					window.localStorage.setItem("logado", "N");
	        					window.localStorage.setItem("id_usuario", "");
	        					$.mobile.changePage( $(window.location="registro.html"), {} );
	        				}
	        			});
	        		});
	        	}
	        },
	        'Esta ação é irreversível!',
	        'Sim,Não'
	);
}

function compartilhar(){
	window.plugins.share.show({
	    subject: 'Point',
	    text: 'Estou online no Point. Venha e encontre pessoas realmente perto de você! http://bit.ly/HVjwXl'},
	    function() {}, // Success function
	    function() {alert('Falha no compartilhamento');} // Failure function
	);	
}

function voltar(){
	history.back();
}

function sairPageMsg(){
	window.clearInterval(intMsg);
	history.back();
}
