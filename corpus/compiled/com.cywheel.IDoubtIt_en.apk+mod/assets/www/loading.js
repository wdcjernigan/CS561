enchant();

window.onload = function() {

    game = new Game(320, 533);
	game.touchstart = false;
	gamestartTvt = true;
    game.fps = 24;
    game.preload();
    game.onload = function() {
		
		//cywheel_logo
		var cywheel_logo = new enchant.Label();
		cywheel_logo.y = 180;
		cywheel_logo.width = 320;
		cywheel_logo.className = 'cy-logo';
		game.rootScene.addChild(cywheel_logo);
		cywheel_logo.text = "<span class='c-logo'>cy</span>wheel";
		
		//loadboder
		var loadboder = new Sprite(1, 3);
		loadboder.x = 50;
		loadboder.y = 430;
		loadboder.backgroundColor = '#1f1f38';
		game.rootScene.addChild(loadboder);
		
	
		game.rootScene.addEventListener('enterframe', function() { 
			if(loadboder.width < 218){
				loadboder.width += 4;
			} else{
				location.replace([
					"index_main.html"
				].join(''));
				//navigator.app.loadUrl("file:///android_asset/www/index_main.html", {wait:0, loadingDialog:"Loading...", loadUrlTimeoutValue: 15000});
			}
		});
	};
    game.start();
};