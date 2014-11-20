/**
 * nineleap.enchant.js
 * @version 0.3 (2012/02/01)
 * @requires enchant.js v0.4.0 or later
 *
 * @description
 * enchant.js extension for 9leap.net
 * 9leap.net 向けの enchant.js 拡張プラグイン。
 * game.end の引数にスコアと結果の文字列を渡すことで、ランキングに登録できる。
 * (9leapにアップロードした後のみランキング画面にジャンプする)
 *
 * @usage

 var game = new Game(320, 320);

 game.onload = function(){
     // executed after player pushed "START"
     // ...
     if(some.condition)game.end(score, result);
 };

 game.start();

 */

(function () {

enchant.nineleap = { assets: ['start.png','start-bg.png','button_nex.png'] };

/**
 * @scope enchant.nineleap.Game.prototype
 */
enchant.nineleap.Game = enchant.Class.create(enchant.Game, {
    /**
     *
     * @param width
     * @param height
     */
    initialize: function(width, height) {
        enchant.Game.call(this, width, height);
        this.addEventListener('load', function() {
            var game = this;
            this.startScene = new SplashScene();
            this.startScene._element.style.zIndex = 10;
            this.startScene.image = this.assets['start.png'];
			//infoScene
			this.infoScene = new SplashScene();
            this.infoScene.image = this.assets['start-bg.png'];
				//bg_white
				var bg_white = new Sprite(640, 1066);
				bg_white.opacity = 0.5;
				bg_white.backgroundColor="#ffffff";
				this.infoScene.addChild(bg_white);
				
				//sound
				for_sound1 = true;
				//howto
				howto = new Array();
				howto[1] = "Welcome to I Doubt It - T-ara! Play with 6 girls. Here is how you play.";
				howto[2] = "The one who discarded all the cards wins! Your 3 competitors will be chosen by roulette.";
				howto[3] = "Discard a card in the order of A, 2, 3, 4,…10, J, Q, K. You can discard 4 cards at once.</br>Card which can be removed should be brought high.";
				howto[4] = "Cards which is not suitable in the situation can also be discarded as &quot;fake&quot;. Press [Doubt] if you think someone is doing fake for &quot;DOUBT!&quot;. </br></br>If the card was actually a fake, the person has to have all the cards discarded. If it wasn't fake, you who said &quot;Doubt!&quot; has to do that.";
				howto[5] = "If you don't call for &quot;DOUBT!&quot;, press [Skip] to pass to the next player. Other players may also do &quot;Doubt!&quot;";
				howto[6] = "One game is over when someone discard all the card, or 20th round is done. Scores from 4 games will be the final point.";
				curent_howto = 1;
				//howto_play
				var howto_play = new enchant.Label();
				howto_play.x = 40;
				howto_play.y = 128;
				howto_play.width = 560;
				howto_play.className = 'deckStock';
				//howto_play.backgroundColor = '#ffff00';
				this.infoScene.addChild(howto_play);
				howto_play.text = "<div class='ready_go_select' style='padding-bottom:100px;'>HOW TO PLAY</div><div>"+howto[1]+"</div>";
				//button_nextstart
				var button_nextstart = new Sprite(195,60);
				button_nextstart.x = 60;
				button_nextstart.y = 960;
				button_nextstart.image = game.assets['button_nex.png'];
				button_nextstart.frame = 2;
				this.infoScene.addChild(button_nextstart);
				
				//button_skipstart
				var button_skipstart = new Sprite(195,60);
				button_skipstart.x = 385;
				button_skipstart.y = 960;
				button_skipstart.image = game.assets['button_nex.png'];
				button_skipstart.frame = 1;
				this.infoScene.addChild(button_skipstart);
			
			//startScene touch
            this.startScene.addEventListener('touchend', function(e) {//alert(e.x+"-"+e.y);
				if(e.y > 915 && e.y < 1000 && e.x > 150 && e.x < 490){
					if(game.currentScene == this) game.popScene();
					this.removeEventListener('touchend', arguments.callee);
					if(for_sound1 == true){
						//game.assets['bt.ogg'].clone().play();
						playAudio(1,"/android_asset/sounds/bt.mp3",false,true);
					}
					forshutdow = 1;
				}
				if(e.y < 70 && e.x > 0 && e.x < 82){//alert("off");
					game_shutdow();
					if(for_sound1 == true){
						//game.assets['bt.ogg'].clone().play();
						playAudio(1,"/android_asset/sounds/bt.mp3",false,true);
					}
				}
            });
			this.pushScene(this.infoScene);
			
			//infoScene touch
			this.infoScene.addEventListener('touchend', function(e) {
				if(e.y >= button_skipstart.y-15 && e.y <= button_skipstart.y + button_skipstart.height+20){
					if(e.x >= button_skipstart.x && e.x <= button_skipstart.x + button_skipstart.width){
						if (game.started == false) {
							if (game.onstart != null) game.onstart();
							game.started = true;
							gameStart = true;   // deprecated
						}
						if(game.currentScene == this) game.popScene();
						this.removeEventListener('touchend', arguments.callee);
						if(for_sound1 == true){
							//game.assets['bt.ogg'].clone().play();
							playAudio(1,"/android_asset/sounds/bt.mp3",false,true);
						}
					}
				}
				//button_nextstart
				if(e.y >= button_nextstart.y-15 && e.y <= button_nextstart.y + button_nextstart.height+20){
					if(e.x >= button_nextstart.x && e.x <= button_nextstart.x + button_nextstart.width){
						if(curent_howto < 6){
							curent_howto++;
							howto_play.text = "<div class='ready_go_select' style='padding-bottom:100px;'>HOW TO PLAY</div><div>"+howto[curent_howto]+"</div>";
						}
						if(curent_howto == 6){
							button_nextstart.x = -300;
							button_skipstart.x = 222;
							button_skipstart.frame = 0;
						}
						if(for_sound1 == true){
							//game.assets['bt.ogg'].clone().play();
							playAudio(1,"/android_asset/sounds/bt.mp3",false,true);
						}
					}
				}
            });
		
			
            this.addEventListener('keydown', function() {
                if (this.started == false) {
                    if(this.onstart != null) this.onstart();
                    this.started = true;
                    gameStart = true;   // deprecated
                }
                if (game.currentScene == game.startScene) game.popScene();
                this.removeEventListener('keydown', arguments.callee);
            });
            this.pushScene(this.startScene);
			
            this.endScene = new SplashScene();
            this.endScene.image = this.assets['end.png'];
        });
        this.scoreQueue = false;
        this.started = false;
        gameStart = false; // deprecated
    },

    loadImage: function(src, callback) {
        if (callback == null) callback = function() {};
        this.assets[src] = enchant.Surface.load(src);
        this.assets[src].addEventListener('load', callback);
    },

    start: function() {
        var game = this;

        if (this._intervalID) {
            window.clearInterval(this._intervalID);
        } else if (this._assets.length) {
            var o = {};
            var assets = this._assets.filter(function(asset) {
                return asset in o ? false : o[asset] = true;
            });
            var tAssets = (this._twitterAssets != undefined)? this._twitterAssets : [];
            var nAssets = (this._netpriceData != undefined)? this._netpriceData : [];
            var mAssets = (this._memoryAssets != undefined) ? this._memoryAssets : [];
            var loaded = 0;
            var total = assets.length + tAssets.length + nAssets.length + mAssets.length;
            for (var i = 0, len = assets.length; i < len; i++) {
                this.load(assets[i], function() {
                    var e = new enchant.Event('progress');
                    e.loaded = ++loaded;
                    e.total = total;
                    game.dispatchEvent(e);
                    if (loaded == total) {
                        game.removeScene(game.loadingScene);
                        game.dispatchEvent(new enchant.Event('load'));
                    }
                });
            }
            for (var i = 0, len = tAssets.length; i < len; i++) {
                this.loadImage(tAssets[i], function() {
                    var e = new enchant.Event('progress');
                    e.loaded = ++loaded;
                    e.total = total;
                    game.dispatchEvent(e);
                    if (loaded == total) {
                        game.removeScene(game.loadingScene);
                        game.dispatchEvent(new enchant.Event('load'));
                    }
                });
            }
            for (var i = 0, len = mAssets.length; i < len; i++) {
                this.loadImage(mAssets[i], function() {
                    var e = new enchant.Event('progress');
                    e.loaded = ++loaded;
                    e.total = total;
                    game.dispatchEvent(e);
                    if (loaded == total) {
                        game.removeScene(game.loadingScene);
                        game.dispatchEvent(new enchant.Event('load'));
                    }
                });
            }

            for (var i = 0, len = nAssets.length; i < len; i++) {
                this.loadImage(nAssets[i], function() {
                    var e = new enchant.Event('progress');
                    e.loaded = ++loaded;
                    e.total = total;
                    game.dispatchEvent(e);
                    if (loaded == total) {
                        game.removeScene(game.loadingScene);
                        game.dispatchEvent(new enchant.Event('load'));
                    }
                });
            }
            this.pushScene(this.loadingScene);
        } else {
            this.dispatchEvent(new enchant.Event('load'));
        }
        this.currentTime = Date.now();
        this._intervalID = window.setInterval(function() {
            game._tick()
        }, 1000 / this.fps);
        this.running = true;
    },

    end: function(score, result, img) {
        if(img !== undefined){
            this.endScene.image = img;
        }
        this.pushScene(this.endScene);
        if (location.hostname == 'r.jsgames.jp') {
            var submit = function() {
                var id = location.pathname.match(/^\/games\/(\d+)/)[1]; 
                location.replace([
                    'http://9leap.net/games/', id, '/result',
                    '?score=', encodeURIComponent(score),
                    '&result=', encodeURIComponent(result)
                ].join(''));
            }
            this.endScene.addEventListener('touchend', submit);
            window.setTimeout(submit, 3000);
        }
        enchant.Game.instance.end = function(){ };
    }
});

/**
 * @scope enchant.nineleap.SplashScene.prototype
 */
enchant.nineleap.SplashScene = enchant.Class.create(enchant.Scene, {
    image: {
        get: function() {
            return this._image;
        },
        set: function(image) {
            this._image = image;

            while (this.firstChild) {
                this.removeChild(this.firstChild);
            }
            var sprite = new Sprite(image.width, image.height);
            sprite.image = image;
            sprite.x = (this.width - image.width) / 2;
            sprite.y = (this.height - image.height) / 2;
            this.addChild(sprite);
        }
    }
});

})();
