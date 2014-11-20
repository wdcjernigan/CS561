var onDeviceReadytvt = function(){
		//document.addEventListener("menubutton", show_menu, false);
		document.addEventListener("backbutton", game_shutdow, false);
		document.addEventListener("pause", on_Pause, false);
		document.addEventListener("resume", on_Resume, false);
};

function on_Pause() {
    // Handle the pause event
	for(i=1;i<=6;i++){
		if(my_media[i] != null){
			stopAudio(i);
		}
	}
	game.pause();
}
function on_Resume() {
    // Handle the resume event
	game.resume();
}

//for backbutton?
	var forshutdow = "";
			
function onConfirm(buttonIndex) {
	if(buttonIndex != 1){
		if(!forshutdow){
			navigator.app.exitApp();
		} else{
			forshutdow = "";
			location.replace([
				"index_main.html"
			].join(''));
		}
	}
	return true;
}

// Show a custom confirmation dialog
//
function game_shutdow() {
	//playAudio(1,"/android_asset/sounds/bt.mp3",false,true);
	navigator.notification.confirm(
		'Are you sure to quit?',  // message
		onConfirm,              // callback to invoke with index of button pressed
		'T-ara',            // title
		'No,Yes'          // buttonLabels
	);
}
// Wait for Cordova to load



 // Cordova is ready
document.addEventListener("deviceready", onDeviceReadytvt, false);

// Audio player
//var my_media = null;
var my_media = new Array();
var mediaTimer = null;

// Play audio
function playAudio(id,src,loop,clone) { //alert("cha sounds");

	if(my_media[id] == null){ //alert("tao media");
		// Create Media object from src
		my_media[id] = new Media(src, onSuccess, onError);//alert("cha sounds");
		my_media[id].play();
	}
	
	if(clone ==  true){
		my_media[id].seekTo(0);
	}
	my_media[id].play();
	
		
	
	// Update my_media position every second
	/*if(mediaTimer == null){
		mediaTimer = setInterval(function() {
			// get my_media position
			my_media[id].getCurrentPosition(
				// success callback
				function(position){
					if(position > 1){
						//setAudioPosition((position) + " sec");
					} else{
						if(loop){
							my_media[id].play();
						}
					}
				},
				// error callback
				function(e) {
					console.log("Error getting pos=" + e);
					//setAudioPosition("Error: " + e);
				}
			);
		}, 1000);
	}*/
}

// Pause audio
function pauseAudio(id) {
	if (my_media[id]) {
		my_media[id].pause();
	}
}

// Stop audio
function stopAudio(id) {
	if (my_media[id]) {
		my_media[id].stop();
	}
	clearInterval(mediaTimer);
	mediaTimer = null;
}

// onSuccess Callback
function onSuccess() {
	console.log("playAudio():Audio Success");
}

// onError Callback 
function onError(error) {
	//alert('code: '    + error.code    + '\n' + 
		  //'message: ' + error.message + '\n');
}

// Set audio position
function setAudioPosition(position) {
	//document.getElementById('audio_position').innerHTML = position;
}