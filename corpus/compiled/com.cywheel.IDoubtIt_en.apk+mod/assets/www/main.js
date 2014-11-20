enchant();
function rand(num){
    return Math.floor(Math.random() * num);
}
window.onload=function(){
	game = new Game(640,1066);
	game.preload('start-bg.png','bg.png','card.png','chara.png','button_nex.png','oki.png','mc_ban.png','sound_icon.png','star.png','doubt.png','button.png','arrow.png','rectang.png','result.png');
	game.onload=function(){
		//game.rootScene.backgroundColor="#000000";
		// bg
		var bg = new Sprite(640, 1066);
        bg.image = game.assets['bg.png'];
		game.rootScene.addChild(bg);
		
		// sound_icon
		var sound_icon = new Sprite(40, 40);
		sound_icon.x = 580;
		sound_icon.y = 18;
        sound_icon.image = game.assets['sound_icon.png'];
		sound_icon.frame = 1;
		game.rootScene.addChild(sound_icon);
		
		// star_icon
		var star_icon = new Sprite(2, 46);
		star_icon.x = 150;
		star_icon.y = 14;
        star_icon.image = game.assets['star.png'];
		game.rootScene.addChild(star_icon);
		
		// card2
		var card0 = new Sprite(68, 98);
		card0.x = -200;
		card0.y = 200;
        card0.image = game.assets['card.png'];
		game.rootScene.addChild(card0);
		
		
		//mc_oki0
		var mc_oki0 = new Sprite(68, 98);
		mc_oki0.x = 375;
		mc_oki0.y = 495;
		mc_oki0.opacity = 0;
        mc_oki0.image = game.assets['oki.png'];
		game.rootScene.addChild(mc_oki0);
		
		//mc_oki
		var mc_oki = new Sprite(68, 98);
		mc_oki.x = 375;
		mc_oki.y = 445;
		mc_oki.opacity = 0;
        mc_oki.image = game.assets['oki.png'];
		game.rootScene.addChild(mc_oki);
		
		//mc_oki1
		var mc_oki1 = new Sprite(68, 98);
		mc_oki1.x = 525;
		mc_oki1.y = 530;
		mc_oki1.opacity = 0;
        mc_oki1.image = game.assets['oki.png'];
		game.rootScene.addChild(mc_oki1);
		
		//mc_oki2
		var mc_oki2 = new Sprite(68, 98);
		mc_oki2.x = 401;
		mc_oki2.y = 200;
		mc_oki2.opacity = 0;
        mc_oki2.image = game.assets['oki.png'];
		game.rootScene.addChild(mc_oki2);
		
		//mc_oki3
		var mc_oki3 = new Sprite(68, 98);
		mc_oki3.x = 47;
		mc_oki3.y = 530;
		mc_oki3.opacity = 0;
        mc_oki3.image = game.assets['oki.png'];
		game.rootScene.addChild(mc_oki3);
		
		//rectang
		var rectang = new Sprite(144, 136);
		rectang.x = 220;
		rectang.y = 460;
		rectang.opacity = 0;
        rectang.image = game.assets['rectang.png'];
		game.rootScene.addChild(rectang);
		
		//mc_ban
		var mc_ban = new Sprite(34,30);
		mc_ban.x = 47;
		mc_ban.y = -480;
        mc_ban.image = game.assets['mc_ban.png'];
		game.rootScene.addChild(mc_ban);
		
		//deckStock0
		var deckStock0 = new enchant.Label();
		deckStock0.x = 320;
		deckStock0.y = 730;
		deckStock0.width = 320;
		deckStock0.opacity = 0;
		deckStock0.className = 'deckStock0';
		//deckStock0.backgroundColor = '#ffff00';
		game.rootScene.addChild(deckStock0);
		deckStock0.text = "Remain: 88 cards";
		
		//deckStock1
		var deckStock1 = new enchant.Label();
		deckStock1.x = 465;
		deckStock1.y = 560;
		deckStock1.width = 60;
		deckStock1.opacity = 0;
		deckStock1.className = 'deckStock';
		//deckStock1.backgroundColor = '#ffff00';
		game.rootScene.addChild(deckStock1);
		deckStock1.text = "88";
		
		//deckStock2
		var deckStock2 = new enchant.Label();
		deckStock2.x = 405;
		deckStock2.y = 300;
		deckStock2.width = 60;
		deckStock2.opacity = 0;
		deckStock2.className = 'deckStock';
		//deckStock2.backgroundColor = '#ffff00';
		game.rootScene.addChild(deckStock2);
		deckStock2.text = "88";
		
		//deckStock3
		var deckStock3 = new enchant.Label();
		deckStock3.x = 115;
		deckStock3.y = 560;
		deckStock3.width = 60;
		deckStock3.opacity = 0;
		deckStock3.className = 'deckStock';
		//deckStock3.backgroundColor = '#ffff00';
		game.rootScene.addChild(deckStock3);
		deckStock3.text = "88";
		
		//now_put_disp
		var now_put_disp = new enchant.Label();
		now_put_disp.x = 230;
		now_put_disp.y = 490;
		now_put_disp.width = 120;
		now_put_disp.opacity = 0;
		now_put_disp.className = 'put_disp';
		//now_put_disp.backgroundColor = '#ffff00';
		now_put_disp.color = '#ff0000';
		game.rootScene.addChild(now_put_disp);
		now_put_disp.text = "1";
		
		//turnLimit_mc
		var turnLimit_mc = new enchant.Label();
		turnLimit_mc.x = 150;
		turnLimit_mc.y = 365;
		turnLimit_mc.width = 380;
		turnLimit_mc.opacity = 0;
		turnLimit_mc.className = 'turnLimit_cnt';
		//turnLimit_mc.backgroundColor = '#ffff00';
		game.rootScene.addChild(turnLimit_mc);
		turnLimit_mc.text = "Remain: 88 turn";
		
		//test_text
		/*var test_text = new enchant.Label();
		test_text.x = 0;
		test_text.y = 20;
		test_text.width = 640;
		test_text.opacity = 1;
		test_text.className = 'deckStock';
		//turnLimit_mc.backgroundColor = '#ffff00';
		game.rootScene.addChild(test_text);
		test_text.text = "test_text";*/
		
		
		//put_card_cnt_mc
		var put_card_cnt_mc = new enchant.Label();
		put_card_cnt_mc.x = 122;
		put_card_cnt_mc.y = 600;
		put_card_cnt_mc.width = 350;
		put_card_cnt_mc.opacity = 0;
		put_card_cnt_mc.className = 'put_card_cnt';
		//put_card_cnt_mc.backgroundColor = '#ffff00';
		game.rootScene.addChild(put_card_cnt_mc);
		put_card_cnt_mc.text = "Card to discard 1";
		
		//button_Left
		var button_Left = new Sprite(24,43);
		button_Left.x = 20;
		button_Left.y = -825;
        button_Left.image = game.assets['arrow.png'];
		game.rootScene.addChild(button_Left);
		//mc_function_hidari();
		
		//button_Right
		var button_Right = new Sprite(24,43);
		button_Right.x = 597;
		button_Right.y = -825;
		button_Right.rotation = 180;
        button_Right.image = game.assets['arrow.png'];
		game.rootScene.addChild(button_Right);
        //mc_function_migi();
		
		//button_Select_doubt
		var button_Select_doubt = new Sprite(195,60);
		button_Select_doubt.x = -600;
		button_Select_doubt.y = 960;
        button_Select_doubt.image = game.assets['button.png'];
		game.rootScene.addChild(button_Select_doubt);
		
		//button_Discard_skip
		var button_Discard_skip = new Sprite(195,60);
		button_Discard_skip.x = -600;
		button_Discard_skip.y = 960;
        button_Discard_skip.image = game.assets['button.png'];
		game.rootScene.addChild(button_Discard_skip);
		
		
		
		// mc_result
		var mc_result = new Sprite(640, 1066);
		mc_result.y = 76;
		mc_result.opacity = 0;
        mc_result.image = game.assets['result.png'];
		game.rootScene.addChild(mc_result);
		
		//tao label result
		label_result = new Array();
		for (i=1; i<=20; i++) {
			hx = i%5;
			switch(hx){
				case 0:
					x = 558;break;
				case 1:
					x = 267;break;
				case 2:
					x = 338;break;
				case 3:
					x = 409;break;
				case 4:
					x = 480;break;
			}
			if(i<=5){
				y = 344;
			} else if(i<=10){
				y = 455;
			} else if(i<=15){
				y = 598;
			} else if(i<=20){
				y = 736;
			}
			
			var label_result2 = new enchant.Label();
				label_result[i] = label_result2;
				label_result[i].x = x;
				label_result[i].y = y;
				label_result[i].width = 75;
				label_result[i].className = 'deckStock';
				label_result[i].opacity = 0;
				//label_result[i].backgroundColor="#ffffff";
				game.rootScene.addChild(label_result[i]);
				label_result[i].text = "400";
		}
		
		
		// bg_start_select
		var bg_start_select = new Sprite(640, 1066);
        bg_start_select.image = game.assets['start-bg.png'];
		game.rootScene.addChild(bg_start_select);
		
		//button_nex
		var button_nex = new Sprite(195, 60);
		button_nex.x = 223;
		button_nex.y = -950;
        button_nex.image = game.assets['button_nex.png'];
		game.rootScene.addChild(button_nex);
		
		//ready_go
		var ready_go = new enchant.Label();
		ready_go.x = 70;
		ready_go.y = 128;
		ready_go.width = 500;
		ready_go.opacity = 1;
		ready_go.className = 'ready_go_select';
		//deckStock3.backgroundColor = '#ffff00';
		game.rootScene.addChild(ready_go);
		ready_go.text = "Select a player";
		
		//select_focus_mc
		var select_focus_mc = new Sprite(122, 138);
		select_focus_mc.x = -200;
		select_focus_mc.y = 0;
		select_focus_mc.opacity = 0.8;
        select_focus_mc.backgroundColor="#ffffff";
		game.rootScene.addChild(select_focus_mc);
		
		//mc_doubt
		var mc_doubt = new Sprite(640,320);
		mc_doubt.y = -400;
        mc_doubt.image = game.assets['doubt.png'];
		game.rootScene.addChild(mc_doubt);
		
		//win_doubt
		var win_doubt = new Sprite(122,138);
		win_doubt.x = 259;
		win_doubt.y = -400;
        win_doubt.image = game.assets['chara.png'];
		game.rootScene.addChild(win_doubt);
		
		
		
		//    Khoi tao    ****************************************************************************
	gametime1 = 0;
	gametime2 = 0;
	gametime3 = 0;
	gametime4 = 0;
	gametime5 = 0;
	gametime6 = 0;
	
	
	for_touch_topbar = false;
	
	fc_eng_frame = false;
	score_disp_frame = false;
	for_score_disp_frame = 0;
	for_button_left_right = false;
	mc_oki_frame = false;
	for_start_frame = false;
	for_pc_turn_frame = 0;
	
	cha = new Array();
	che = new Array();
	cha_name = new Array();
	cha_name_mc = new Array();
	win  = new Array();
	card = new Array();
	
	SHUFFLE = new Array();
	CARD = new Array();
	select_flg = new Array();
	deckStock = new Array();
	dustCard = new Array();
	score_point = new Array();
	set_cha_flg = new Array();
	cha_flg = new Array();
	doubtRtp_BASE = new Array();
	doubtRtp = new Array();
	
	callmen_flg = new Array();
	pointsort = new Array();
	
		//    end Khoi tao    ****************************************************************************

//button_Select_fn
button_Select_fn = function(){
	if (select_cnt<=4) {
		if(select_flg["0"+cursorPoint] != 1){
			if(select_cnt<4){
				select_cnt++;
				select_flg["0"+cursorPoint] = 1;
				card[cursorPoint].y = y_point-15;
				mc_ban.y = 765;
				if(for_sound1 == true){
					//game.assets['bt.ogg'].clone().play();
					playAudio(1,"/android_asset/sounds/bt.mp3",false,true);
				}
			}
		} else{
			select_cnt--;
			select_flg["0"+cursorPoint] = 0;
			card[cursorPoint].y = y_point;
			mc_ban.y = 780;
			if(select_cnt == 0){
				button_Select_doubt.frame = 1;
			}
			if(for_sound1 == true){
				//game.assets['bt.ogg'].clone().play();
				playAudio(1,"/android_asset/sounds/bt.mp3",false,true);
			}
		}
	}
}
//end button_Select_fn		

//button_Doubt_fn
button_Doubt_fn = function(){
	if(select_em != 0 && !doubt_flg){
		if(doubt_flg == 0){
			on_doubt = 0;
			doubt_flg = 1;
			main_timeline = false;
			mc_doubt_frame = true;
		}
	}
}
//end button_Doubt_fn
		
//mc_function_static *********************************************************************************************
mc_function_static = function(){
	cha_name[1] = "E.Jeong";
	cha_name[2] = "Hyo Min";
	cha_name[3] = "Ji Yeon";
	cha_name[4] = "So Yeon";
	cha_name[5] = "Bo Ram";
	cha_name[6] = "Qri";
	doubtRtp_BASE[1] = 6;
	doubtRtp_BASE[2] = 5;
	doubtRtp_BASE[3] = 4;
	doubtRtp_BASE[4] = 3;
	doubtRtp_BASE[5] = 2;
	doubtRtp_BASE[6] = 0;
	doubtBonus = 5;
	y_point = 800;
}
//end mc_function_static *********************************************************************************************


//mc_function_init *********************************************************************************************
mc_function_init = function(){
	score_point[01] = "-";
	score_point[11] = "-";
	score_point[21] = "-";
	score_point[31] = "-";
	score_point[02] = "-";
	score_point[12] = "-";
	score_point[22] = "-";
	score_point[32] = "-";
	score_point[03] = "-";
	score_point[13] = "-";
	score_point[23] = "-";
	score_point[33] = "-";
	score_point[04] = "-";
	score_point[14] = "-";
	score_point[24] = "-";
	score_point[34] = "-";
	turnLimit = 20;
	set_cha_cnt = 0;
	set_cha_flg[1] = 0;
	set_cha_flg[2] = 0;
	set_cha_flg[3] = 0;
	cha_flg[1] = 0;
	cha_flg[2] = 0;
	cha_flg[3] = 0;
	doubtRtp[1] = 0;
	doubtRtp[2] = 0;
	doubtRtp[3] = 0;
	round_cnt = 1;
	score = 0;
	r_buf = 0;
	sort_p = 0;
	
	main_timeline = false;
	mc_doubt_frame = false;
	//doubt_think_frame = false;
}
//end mc_function_init *********************************************************************************************


//mc_function_startF *********************************************************************************************
mc_function_startF = function(){
	for (i=0; i<=3; i++) {
		for (ii=1; ii<=13; ii++) {
			ii = String(ii);
			SHUFFLE[i+ii] = 0;
			CARD[i+ii] = 0;
			select_flg[i+ii] = 0;
		}
		deckStock[i] = 13;
	}
	put_card_cnt = 0;
	for (i=0; i<=52; i++) {
		dustCard[i] = "";
	}
	now_put = rand(13)+1;
	doubt_flg = 0;
	//nguoi choi dau tien
	if(round_cnt == 1){
		select_em = 0;
		end_round = 3;
	}
	select_cnt = 0;

}
//end mc_function_startF *********************************************************************************************


//mc_function_kubari *********************************************************************************************
mc_function_kubari = function(){
	for (i=0; i<=3; i++) {
		for (ii=1; ii<=13; ii++) {
			ii = String(ii);
			condition = 1;
			do {
				ind = rand(4);
				ind = String(ind);
				r = rand(13)+1;
				r = String(r);
				if(SHUFFLE[ind+r] == 0){
					SHUFFLE[ind+r] = 1;
					if (r < 10) {
						r = "0" + r;
					}
					ind = ind+r;
					CARD[i+ii] = ind;
					condition = 0;
				}
			} while(condition);
		}
	}
}
//end mc_function_kubari *********************************************************************************************


//mc_function_card_sort *********************************************************************************************
mc_function_card_sort = function(){//alert(sort_p);
	cardNum = deckStock[sort_p];
	//alert("cardNum truoc sort_p:"+cardNum);
	//alert("sort_p:"+sort_p);
	if (sort_p == 0) {
		if (cardNum<=11) {
			cardNum = 11;
		}
	} 
	sort_p = String(sort_p);
	buf = "";
	buf1 = "";
	buf2 = "";
	kari = "";
	for(j=1; j<cardNum; j++){
		//alert(CARD[sort_p+5].substr(1,2));
		for(i=1; i<cardNum; i++){
			buf = (i)%cardNum+1;
			i = String(i);
			buf1 = CARD[sort_p+i].substr(1,2);//alert("co21:"+buf1);
			buf2 = CARD[sort_p+buf].substr(1,2);//alert(i+"-"+CARD[sort_p+i]+"-"+buf1+"-"+CARD[sort_p+buf]+"-"+buf2);
			if(buf1>buf2){
				kari = CARD[sort_p+i];
				CARD[sort_p+i] = CARD[sort_p+buf];
				CARD[sort_p+buf] = kari;
			}
		}
	}
	//alert("co21");
	
	
}
//end mc_function_card_sort *********************************************************************************************



//mc_function_enemy_think *********************************************************************************************
mc_function_enemy_think = function(){
	for(i=1; i<=deckStock[select_em]; i++){
		i = String(i);
		b = CARD[select_em+i];
		if (b != "999") {
			buf = b.substr(1,2);
			buf = Number(buf);
			if (buf == now_put) {
				CARD[select_em+i] = "999";
				select_cnt++;
				dustCard[put_card_cnt] = b;
				put_card_cnt++;
			}
		}
	}
	if(select_cnt == 0){
		condition = true;
		do {
			r = rand(13)+1;
			r = String(r);
			b = CARD[select_em+r];
			if (b != "999") {
				buf = b.substr(1,2);
				buf = Number(buf);
				CARD[select_em+r] = "999";
				select_cnt++;
				dustCard[put_card_cnt] = b;
				put_card_cnt++;
				condition = false;
			}
		} while(condition);
	}
	sort_p = select_em;
	mc_function_card_sort(); 
	mc_function_next_num();
	
	put_card_cnt_mc.text = "Card to discard "+put_card_cnt;
	//gotoAndPlay("/mc_oki1");?????????????????????????????????????????????????????????????????????????????????????????//
	//gotoAndPlay("doubt_think");
	//alert("doubt_think");
	main_timeline = true;
}
//end mc_function_enemy_think *********************************************************************************************


//mc_function_next_num *********************************************************************************************
mc_function_next_num = function(){
	buf = deckStock[select_em];
	buf = buf-select_cnt;
	deckStock[select_em] = buf;
}
//end mc_function_next_num *********************************************************************************************


//mc_function_doubt *********************************************************************************************
mc_function_doubt = function(){
	s = put_card_cnt-select_cnt;
	ok = 1;
	for (i=s; i<put_card_cnt; i++) {
		buf = dustCard[i];
		buf = buf.substr(1,2);
		buf = Number(buf);
		if(buf != now_put) {
			ok = 0;
			break;
		}
	}
	if(ok){
		pn = on_doubt;
		if (select_em != 0) {
			//gotoAndStop("/win" add select_em add "/win12"); 
			win[select_em].frame = (cha_flg[select_em] - 1)*3 + 1;
			if(for_sound1 == true){//alert("khoc");
				//game.assets['bt.ogg'].clone().play();
				playAudio(5,"/android_asset/sounds/lose.mp3",false,true);
			}
		}
	} else{
		pn = select_em;
		//pn = pn.toString();
		if (on_doubt != 0) {
			//gotoAndStop("/win" add on_doubt add "/win12"); 
			win[on_doubt].frame = (cha_flg[on_doubt] - 1)*3 + 1;
			if(for_sound1 == true){//alert("cuoi");
				//game.assets['bt.ogg'].clone().play();
				playAudio(6,"/android_asset/sounds/win.mp3",false,true);
			}
		}
		p = score_point[on_doubt];
		p += 5;
		score_point[on_doubt] = p;
	}
	addCnt = deckStock[pn];
	for(i=0; i<put_card_cnt; i++) {
		addCnt++;
		buf = dustCard[i];
		CARD[String(pn)+addCnt] = buf;
	}
	deckStock[pn] = addCnt;
	//
	if(pn == 0) {//alert("doub:"+addCnt);
		sort_p = pn;
		mc_function_card_sort();
		//alert("put_card_cnt:"+put_card_cnt);
		for (i=1; i<=11; i++) {
			buf = CARD["0"+i];
			//gotoAndStop("/p" add i add "c" add buf); 
			chang_card_frame(i,buf);//alert("chim");
		}
	} else{
		//gotoAndStop("/win" add pn add "/win13");
		win[pn].frame = (cha_flg[pn] - 1)*3 + 2;
		if(for_sound1 == true){
			if(on_doubt == 0) {//alert("minh cuoi");
				playAudio(6,"/android_asset/sounds/win.mp3",false,true);
			} else if(select_em == 0) {//alert("khoc");
				//game.assets['bt.ogg'].clone().play();
				playAudio(5,"/android_asset/sounds/lose.mp3",false,true);
			}
		}
		//alert("pn:"+pn);
	}
	put_card_cnt = 0;
	put_card_cnt_mc.text = "Card to discard "+put_card_cnt;
	for (i=0; i<=52; i++) {
		dustCard[i] = "";
	}
}
//end mc_function_doubt *********************************************************************************************


//mc_function_migi *********************************************************************************************
mc_function_migi = function(){
	if (deckStock[0]>=2) {
		buf1 = CARD["0"+deckStock[0]];
		buf3 = select_flg["0"+deckStock[0]];
		for (i=deckStock[0]; i>=1; i--) {
			buf2 = CARD["0"+(i-1)];
			buf4 = select_flg["0"+(i-1)];
			CARD["0"+i] = buf2;
			select_flg["0"+i] = buf4;
			//gotoAndStop("/p" add i add "c" add buf2); 
			if(i <= 11){
				chang_card_frame(i,buf2);//alert("chim");
			}
		}
		CARD["01"] = buf1;
		select_flg["01"] = buf3;
		//gotoAndStop("/p1c" add buf1);
		chang_card_frame(1,Number(buf1));
		for (i=1; i<=11; i++) {
			if (select_flg["0"+i] == 1) {
				card[i].y = y_point-15;
			} else{
				card[i].y = y_point;
			}
		}
		
		if(for_pc_turn_frame == 1){
			if(select_flg["0"+cursorPoint] == 1){
				mc_ban.y = 765;
			} else{
				mc_ban.y = 780;
			}
		}
		//
		if (select_num<=1) {
			select_num = deckStock[0];
		} else {
			select_num--;
		}
	}
}
//end mc_function_migi *********************************************************************************************


//mc_function_hidari *********************************************************************************************
mc_function_hidari = function(){
	if(deckStock[0]>=2){
		//gotoAndPlay("/mc_42"); ??????????????????????????????????????????????????
		buf1 = CARD["01"];
		buf3 = select_flg["01"];
		for (i=1; i<=deckStock[0]; i++) {
			buf2 = CARD["0"+(i+1)];
			buf4 = select_flg["0"+(i+1)];
			CARD["0"+i] = buf2;
			select_flg["0"+i] = buf4;
			if(i <= 11){
				chang_card_frame(i,Number(buf2));
			}
			
			//gotoAndStop("/p" add i add "c" add buf2); 
		}
		CARD["0"+deckStock[0]] = buf1;
		select_flg["0"+deckStock[0]] = buf3;
		if(deckStock[0] <= 11){
			chang_card_frame(deckStock[0],Number(buf1));
		}
		//gotoAndStop("/p" add deckStock0 add "c" add buf1); 
		for (i=1; i<=11; i++) {
			if(select_flg["0"+i] == 1){
				card[i].y = y_point-15;
			} else{
				card[i].y = y_point;
			}
		}
		
		if(for_pc_turn_frame == 1){
			if(select_flg["0"+cursorPoint] == 1){
				mc_ban.y = 765;
			} else{
				mc_ban.y = 780;
			}
		}
		
		//
		if(select_num>=deckStock[0]) {
			select_num = 1;
		} else{
			select_num++;
		}
	}
}
//end mc_function_hidari *********************************************************************************************


//mc_function_cha_select *********************************************************************************************
mc_function_cha_select = function(){
	condition = true;
	do {
		r = rand(6)+1;
		f = 1;
		for (i=1; i<=3; i++) {
			if (set_cha_flg[i] == r) {
				f = 0;
			}
		}
		if (f) {
			if (r_buf != r) {
				condition = false;
			}
		}
	} while (condition);
	select_focus_mc_currentframe = r;
	r_buf = r;
}
//end mc_function_cha_select *********************************************************************************************

//frame1 **************************************************************************************************************
mc_function_static();
//end frame1 **************************************************************************************************************

//frame2 **************************************************************************************************************
mc_function_init();
//end frame2 **************************************************************************************************************

//select_frame ************************************************************************************************************
for (i=1; i<=6; i++) {
	switch(i){
		case 1:
			x = 398; y = 310;break;
		case 2:
			x = 488; y = 530;break;
		case 3:
			x = 398; y = 750;break;
		case 4:
			x = 120; y = 750;break;
		case 5:
			x = 30; y = 530;break;
		case 6:
			x = 120; y = 310;break;
	}
	var cha2 = new Cha(x, y);
	cha[i] = cha2;
	cha[i].frame = (i-1)*3;
	cha2.insert(select_focus_mc);
}
//che
for (i=1; i<=6; i++) {
	x = cha[i].x;
	y = cha[i].y;
	var che2 = new Che_Cha(x, y);
	che[i] = che2;
	che2.insert(select_focus_mc);
	
	var cha_name_mc2 = new enchant.Label();
		cha_name_mc[i] = cha_name_mc2;
		game.rootScene.insertBefore(cha_name_mc2, select_focus_mc);
		cha_name_mc[i].x = x-20;
		cha_name_mc[i].y = y-44;
		cha_name_mc[i].width = 165;
		cha_name_mc[i].className = 'deckStock';
		cha_name_mc[i].text = cha_name[i];
}
//end select_frame ************************************************************************************************************

//select_disp_frame ************************************************************************************************
select_disp_frame = function(){
	select_focus_mc.x = -200;
	start_cha_sel_cnt = 0;
	fc_eng_frame = true;
	/*tellTarget ("/fc_eng") {
		play();gametime1
	}*/
	set_cha_cnt++;
	if(set_cha_cnt>3) {
		//play();
		fc_eng_frame = false;
		//start_frame();
		select_focus_mc.opacity = 0;
		select_focus_mc.width = 640;
		select_focus_mc.height = 1066;
		select_focus_mc.x = 0;
		select_focus_mc.y = 0;
		
		// làm chậm quá trình start_frame();
		for_start_frame = true;
		//alert("xong"+set_cha_flg[1]+"b"+set_cha_flg[2]+"c"+set_cha_flg[3]);
	}
}
select_disp_frame();
//end select_disp_frame ************************************************************************************************

//start_frame ********************************************************************************************
start_frame = function(){
	// xoa 6 cai cu
	for (i=1; i<=6; i++) {
		cha[i].remove();
		che[i].remove();
		//xoa 3 cha_name_mc
		if(i >= 4){
			game.rootScene.removeChild(cha_name_mc[i]);
		}
	}
	
	//
	for (i=1; i<=11; i++) {
		var x = 23 + i*44;
		var	y = y_point;
		var card2 = new Card(x, y);
		card[i] = card2;
		card[i].frame = 52;
		card2.insert(card0);
	}
	mc_function_startF();
	mc_function_kubari();
	
	//start_frame
	for (i=1; i<=3; i++) {
		switch(i){
			case 1:
				x = 498; y = 380;break;
			case 2:
				x = 259; y = 180;break;
			case 3:
				x = 20; y = 380;break;
		}
		var win2 = new Cha(x, y);
		win[i] = win2;
		win[i].frame = (i-1)*3;
		win2.insert(select_focus_mc);
		ch = set_cha_flg[i];
		cha_flg[i] = ch;
		win[i].frame = (ch-1)*3;
		/*cm = eval("cha_name" add ch);
		set("game_cha_name" add i, cm);*/
		cha_name_mc[i].x = x-20;
		cha_name_mc[i].y = y-44;
		cha_name_mc[i].width = 165;
		cha_name_mc[i].className = 'deckStock';
		cha_name_mc[i].text = cha_name[ch];
		
		bs = doubtRtp_BASE[ch];
		doubtRtp[i] = bs;
	}
	
	//gotoAndStop("/mc_oki/stop"); ??????????????????????????????????????????????????????????
}
//end start_frame ********************************************************************************************


//start_frame2 ********************************************************************************************
start_frame2 = function(){
	//truoc pc_turn_frame 1 frame
		put_card_cnt_mc.opacity = 0;
		turnLimit_mc.opacity = 0;
		now_put_disp.opacity = 0;
		deckStock0.opacity = 0;
		deckStock1.opacity = 0;
		deckStock2.opacity = 0;
		deckStock3.opacity = 0;
		mc_oki0.opacity = 0;
		mc_oki1.opacity = 0;
		mc_oki2.opacity = 0;
		mc_oki3.opacity = 0;
		rectang.opacity = 0;
		mc_ban.y = -480;
						
	//
	for (i=1; i<=11; i++) {
		card[i].frame = 52;
	}
	mc_function_startF();
	mc_function_kubari();
	
	//start_frame
	for (i=1; i<=3; i++) {
		switch(i){
			case 1:
				x = 498; y = 380;break;
			case 2:
				x = 259; y = 180;break;
			case 3:
				x = 20; y = 380;break;
		}
		ch = set_cha_flg[i];
		cha_flg[i] = ch;
		win[i].x = x;
		win[i].y = y;
		win[i].frame = (ch-1)*3;
		/*cm = eval("cha_name" add ch);
		set("game_cha_name" add i, cm);*/
		cha_name_mc[i].x = x-20;
		cha_name_mc[i].y = y-44;
		
		bs = doubtRtp_BASE[ch];
		doubtRtp[i] = bs;
	}
	
	//gotoAndStop("/mc_oki/stop"); ??????????????????????????????????????????????????????????
}
//end start_frame2 ********************************************************************************************


//chang_card_frame **************************************************************
chang_card_frame = function(i,buf_tvt){ //alert(buf_tvt);
	if(buf_tvt < 100){
		card[i].frame = buf_tvt-1;
	} else if(buf_tvt < 200){
		card[i].frame = buf_tvt-101 + 13;
	} else if(buf_tvt < 300){
		card[i].frame = buf_tvt-201 + (13*2);
	} else if(buf_tvt < 400){
		card[i].frame = buf_tvt-301 + (13*3);
	}
}
//end chang_card_frame **************************************************************


//frame_28_frame **************************************************************************************
frame_28_frame = function(){ 
	for (i=1; i<=11; i++) {
		buf = CARD["0"+i]; //alert("ban"+buf);
		chang_card_frame(i,Number(buf));
	} 
}
//end frame_28_frame **************************************************************************************

//frame_31_frame **************************************************************************************
frame_31_frame = function(){
	for (i=1; i<=11; i++) {
		chang_card_frame(i,Number(53));
	} 
}
//end frame_31_frame **************************************************************************************

//frame_33_frame **************************************************************************************
frame_33_frame = function(){
	//frame_33 
	//sort card lai cho pc
	sort_p = 0;
	mc_function_card_sort();
	
	for (i=1; i<=11; i++) {
		buf = CARD["0"+i]; //alert("ban"+buf);
		chang_card_frame(i,Number(buf));
	} //alert("doi");
}
//end frame_33_frame **************************************************************************************

//pc_turn_frame *************************************************************************************
pc_turn_frame = function(){
	//them vao
	now_put_disp.color = '#ff0000';
	button_Select_doubt.x = 60;
	button_Select_doubt.frame = 1;
	button_Discard_skip.x = 385;
	button_Discard_skip.frame = 3;
	for_pc_turn_frame = 1;
	//xoa chọn cũ
	for(i=1;i<=deckStock[0];i++){
		select_flg["0"+i] = 0;
	}
						
	doubt_flg = 0;
	if (deckStock[0]>=11) {
		cursorPoint = 5;
	} else {
		cursorPoint = (deckStock[0]+(deckStock[0])%2)/2;
	}
	
	// them vao tren
	mc_ban.x = cursorPoint*44+32;
	mc_ban.y = 780;
	//mc_ban.rotation = 0;
	
	select_num = cursorPoint;
	//gotoAndPlay("/p" add cursorPoint add "/focus2");???????????????????????????????????????????????
	//card[cursorPoint].y = y_point-2;
	//gotoAndStop("/win3/win1/waku1");
	if(now_put == 1){
		now_put_disp.text = "A";
	} else if(now_put == 11){
		now_put_disp.text = "J";
	} else if(now_put == 12){
		now_put_disp.text = "Q";
	} else if(now_put == 13){
		now_put_disp.text = "K";
	} else{
		now_put_disp.text = now_put;
	} 
	//alert("now_put:"+now_put);
	//turnLimit_mc.text = "Remain: "+'<span style="font-size:60px">'+turnLimit+'</span>'+" turn";
	put_card_cnt_mc.text = "Card to discard "+put_card_cnt;
}
//end pc_turn_frame *************************************************************************************

//enemy_turn_frame *************************************************************************************
enemy_turn_frame = function(){
	if(now_put == 1) {
		now_put_disp.text = "A";
	} else if(now_put == 11){
		now_put_disp.text = "J";
	} else if(now_put == 12){
		now_put_disp.text = "Q";
	} else if(now_put == 13){
		now_put_disp.text = "K";
	} else{
		now_put_disp.text = now_put;
	}
	//  
	doubt_flg = 0;
	//gotoAndStop("/mc_ban" add select_em);
	if(select_em == 1){
		mc_ban.x = 458;
		mc_ban.y = 440;
		//mc_ban.rotation = -90;
	} else if(select_em == 2){
		mc_ban.x = 305;
		mc_ban.y = 325;
		//mc_ban.rotation = 180;
	} else if(select_em == 3){
		mc_ban.x = 148;
		mc_ban.y = 440;
		//mc_ban.rotation = 90;
	}
	
	//danh bai
	mc_oki_frame = true;
	if(for_sound1 == true){
		//game.assets['bt.ogg'].clone().play();
		playAudio(4,"/android_asset/sounds/discard.mp3",false,true);
	}
	//call("/mc_functionenemy_think");
	mc_function_enemy_think();
}
//end enemy_turn_frame *************************************************************************************

//discard_a_card ****************************************************************************************	
discard_a_card = function(){
	if(select_cnt){
		for (i=1; i<=deckStock[0]; i++) {
			if (select_flg["0"+i]) {
				if(i<=11){
					card[i].y = y_point;
					card[i].frame = 53;
				}
				dustCard[put_card_cnt] = CARD["0"+i];
				put_card_cnt++;
				CARD["0"+i] = "999";//alert(CARD["0"+5]);
				select_flg["0"+i] = 0;
			}
		}
		//danh bai
		mc_oki_frame = true;
		if(for_sound1 == true){
			//game.assets['bt.ogg'].clone().play();
			playAudio(4,"/android_asset/sounds/discard.mp3",false,true);
		}
		now_put_disp.color = '#000000';
		put_card_cnt_mc.text = "Card to discard "+put_card_cnt;
		
		sort_p = select_em;//alert("co1"+sort_p);
		mc_function_card_sort();//alert("co2");
		for (i=1; i<=11; i++) {
			buf = CARD["0"+i];
			if (buf == "999") {
				card[i].frame = 53; //alert("co3");
			} else {
				//gotoAndStop("/p" add i add "c" add buf);
				chang_card_frame(i,buf);
			}
		}
		
		//gotoAndStop("/p" add cursorPoint add "/focus1");??????????????????????????????????????????????????????????????
		//card[cursorPoint].rotation = 0;
		
		mc_function_next_num();
		//gotoAndPlay("doubt_think");??????????????????????????????????????????????????????????????????????????????????
		//alert("doubt_think");?
		main_timeline = true;
		//doubt_think_frame = true;
	}
}
//end discard_a_card ****************************************************************************************
		
		
		game.rootScene.addEventListener("touchstart", function(e){ //alert(e.x+"_"+e.y);
			//top bar
			if(for_touch_topbar == true && e.y < 70){
				if(e.x > 0 && e.x < 82){//alert("off");
					game_shutdow();
					if(for_sound1 == true){
						//game.assets['bt.ogg'].clone().play();
						playAudio(1,"/android_asset/sounds/bt.mp3",false,true);
					}
				}
				if(e.x > 480 && e.x < 550){//alert("download");
					if(for_sound1 == true){
						//game.assets['bt.ogg'].clone().play();
						playAudio(1,"/android_asset/sounds/bt.mp3",false,true);
					}
					location.replace([
						"market://search?q=pub:Cywheel"
					].join(''));
				}
				if(e.x > 570 && e.x < 640){//alert("sound");
					if(for_sound1 == true){
						for_sound1 = false;
						sound_icon.frame = 0;
					} else{
						for_sound1 = true;
						sound_icon.frame = 1;
						//game.assets['bt.ogg'].clone().play();
						playAudio(1,"/android_asset/sounds/bt.mp3",false,true);
					}
				}
			}//end top bar
			
			if(e.y >= button_Select_doubt.y-15 && e.y <= button_Select_doubt.y + button_Select_doubt.height+20){
				if(e.x >= button_Select_doubt.x && e.x <= button_Select_doubt.x + button_Select_doubt.width){
					//alert("select");
					if(for_pc_turn_frame == 1){
						button_Select_doubt.frame = 2;
						button_Select_fn();
					} else if(for_pc_turn_frame == 2){
						if(select_em != 0 && !doubt_flg){
							button_Select_doubt.frame = 6;
							button_Doubt_fn();
						}
					}
				}
			}
			
			//button_Discard_skip
			if(e.y >= button_Discard_skip.y-15 && e.y <= button_Discard_skip.y + button_Discard_skip.height+20){
				if(e.x >= button_Discard_skip.x && e.x <= button_Discard_skip.x + button_Discard_skip.width){
					//alert("select");
					if(for_pc_turn_frame == 1){
						if(select_cnt){
							button_Discard_skip.frame = 4;
							mc_ban.y = -770;
							discard_a_card();
						}
					} else if(for_pc_turn_frame == 2){
						if(gametime2 < 95){
							button_Discard_skip.frame = 8; //alert(gametime2);
							gametime2 = 95;//alert("sdfdf");
							if(select_em == 3){
								if(for_sound1 == true){
									//game.assets['bt.ogg'].clone().play();
									playAudio(1,"/android_asset/sounds/bt.mp3",false,true);
								}
							}
						}
					}
				}
			}
			
			//button
			if(for_button_left_right == true && e.y >= 790 && e.y <= 910){
				if(e.x >= 0 && e.x <= 65){
					mc_function_hidari();
					datatouch = false;
				} else if(e.x >= 575 && e.x <= 640){
					mc_function_migi();
					datatouch = false;
				} else{
					//keo
					datatouch = true;
					game._startX = e.x;
					game._startY = e.y;
					//alert("sdsđfs");
				}
			}
			
			//score_disp_frame = true;
			if(for_score_disp_frame){
				if(e.y >= button_nex.y-15 && e.y <= button_nex.y+button_nex.height+15){
					if(e.x >= button_nex.x-15 && e.x <= button_nex.x+button_nex.width+15){
						if(for_score_disp_frame == 1){
							if(for_sound1 == true){
								//game.assets['bt.ogg'].clone().play();
								playAudio(1,"/android_asset/sounds/bt.mp3",false,true);
							}
							for_score_disp_frame = 2;
							if(round_cnt >= 4){
								button_nex.frame = 3;
							}
							
							// vi tri ket qua
							win[1].x = 4;
							win[1].y = 406;
							cha_name_mc[1].x = 112;
							cha_name_mc[1].y = 455;
							
							win[2].x = 4;
							win[2].y = 548;
							cha_name_mc[2].x = 112;
							cha_name_mc[2].y = 598;
							
							win[3].x = 4;
							win[3].y = 691;
							cha_name_mc[3].x = 112;
							cha_name_mc[3].y = 736;
							// end vi tri ket qua
							//gan vao
							for(ii=1; ii<=round_cnt; ii++){
								for(i=1; i<=20; i++){
									if(i%5 == ii){
										label_result[i].opacity = 1;
									}
									if(i%5 == round_cnt){
										label_result[i].text = score_point[Math.floor(i/5)+String(round_cnt)];
									}
									if(i%5 ==0){
										label_result[i].opacity = 1;
										label_result[i].text = score_point[i/5-1+"5"];
									}
								}
							} // end gan vao
							//bg
							mc_result.opacity = 1;
						} else if(for_score_disp_frame == 2){
							if(for_sound1 == true){
								//game.assets['bt.ogg'].clone().play();
								playAudio(1,"/android_asset/sounds/bt.mp3",false,true);
							}
							for_score_disp_frame = 0;
							if(round_cnt < 4){
								round_cnt++;
								//alert("tiep");
							} else{
								round_cnt = 1;
								star_icon.width = 2;
							}
							for(i=1; i<=20; i++){
								label_result[i].opacity = 0;
							}
							
							mc_result.opacity = 0;
							button_nex.y = -700;
								
							for_start_frame = true;
							gametime6 = 41;
						}
					}
				}
			}//end score_disp_frame = true;
			
		});
		
		game.rootScene.addEventListener('touchmove', function(e){
			//button
			if(for_button_left_right == true && datatouch == true && e.y >= 790 && e.y <= 910){
				if(game._startX - e.x >= 30){
					mc_function_hidari();
					game._startX -= 30;
				} else if(e.x - game._startX >= 30){
					mc_function_migi();
					game._startX += 30;
				}
				//alert("sadasd");
			}
		});
		
		//texttvt = 1;
		game.rootScene.addEventListener('enterframe',function(){
			//test
				/*texttvt = select_flg["0"+1]+"-"+select_flg["0"+2]+"-"+select_flg["0"+3]+"-"+select_flg["0"+4]+"-"+select_flg["0"+5]+"-"+select_flg["0"+6]+"-"+select_flg["0"+7]+"-"+select_flg["0"+8]+"-"+select_flg["0"+9]+"-"+select_flg["0"+10]+"-"+select_flg["0"+11];
				test_text.text = texttvt;*/
			//tvt
			deckStock0.text = "Remain: "+deckStock[0]+" cards";
			deckStock1.text = deckStock[1];
			deckStock2.text = deckStock[2];
			deckStock3.text = deckStock[3];
	
			//fc_eng_frame == true
			if(fc_eng_frame == true){
				gametime1++;
				if(gametime1 == 1){//alert("dcdfcdc");
					if(for_sound1 == true){
						//game.assets['tap.wav'].clone().play();
						playAudio(3,"/android_asset/sounds/rand.mp3",false,true);
					}
					start_cha_sel_cnt++;
					mc_function_cha_select();
					select_focus_mc.x = cha[select_focus_mc_currentframe].x;
					select_focus_mc.y = cha[select_focus_mc_currentframe].y;
					if (start_cha_sel_cnt>15) {
						//tellTarget ("/select_focus") {
							f = select_focus_mc_currentframe;
							set_cha_flg[set_cha_cnt] = f;
							//gotoAndStop("/cha" add f add "/win1/waku/2");
							cha[f].frame = f*3 - 2;
							che[f].opacity = 0;
						//}
						select_disp_frame();
					}
				} else if(gametime1 >= 3){
					gametime1 = 0;
				}
			} //end fc_eng_frame == true
			
			
			//for_start_frame
			if(for_start_frame == true){
				gametime6++;
				if(gametime6 > 20 && gametime6 <= 40){
					select_focus_mc.opacity += 0.05;
				} else if(gametime6 == 41){
					ready_go.opacity = 0;
					game.rootScene.removeChild(bg_start_select);
					start_frame();
				} else if(gametime6 == 42){
					select_focus_mc.opacity = 1;
					select_focus_mc.x = 0;
					start_frame2();
				} else if(gametime6 > 45 && gametime6 < 65){
					select_focus_mc.opacity -= 0.05
				} else if(gametime6 == 70){
					frame_28_frame();
					ready_go.className = 'ready_go1';
					ready_go.text = "Round"+"<div class='ready_go3'>"+round_cnt+"</div>";
					ready_go.y = 340;
					ready_go.opacity = 1;
					star_icon.width = 56*round_cnt;
				} else if(gametime6 == 80){
					frame_31_frame();
				} else if(gametime6 == 90){
					frame_33_frame();
					ready_go.y = 360;
					ready_go.className = 'ready_go2';
					ready_go.text = "Get Ready!";
				} else if(gametime6 == 110){
					ready_go.className = 'ready_go3';
					ready_go.text = "Go!!";
				} else if(gametime6 == 125){
					select_focus_mc.x = 650;
					ready_go.opacity = 0;
				} else if(gametime6 == 126){
					//nguoi choi dau tien
					//alert("chon"+select_em);
					if(select_em == 0){
						pc_turn_frame();
					} else{
						enemy_turn_frame();
						//them vao
						now_put_disp.color = '#000000';
						button_Select_doubt.x = 60;
						button_Select_doubt.frame = 5;
						button_Discard_skip.x = 385;
						button_Discard_skip.frame = 7;
						for_pc_turn_frame = 2;
					}
					turnLimit_mc.text = "Remain: "+'<span style="font-size:60px">20</span>'+" turn";
					for_button_left_right = true;
					button_Left.y = 825;
					button_Right.y = 825;
					//truoc pc_turn_frame 1 frame
						put_card_cnt_mc.opacity = 1;
						turnLimit_mc.opacity = 1;
						now_put_disp.opacity = 1;
						deckStock0.opacity = 1;
						deckStock1.opacity = 1;
						deckStock2.opacity = 1;
						deckStock3.opacity = 1;
						mc_oki0.opacity = 1;
						mc_oki1.opacity = 1;
						mc_oki2.opacity = 1;
						mc_oki3.opacity = 1;
						rectang.opacity = 1;
					//
					gametime6 = 0;
					for_start_frame = false;
					for_touch_topbar = true;
				}
			}
			//end for_start_frame
			
			
			//main_timeline = true;
			if(main_timeline == true){
				gametime2++;
				//doubt_think_frame == true
				if(gametime2 == 1){
					//them
					button_Select_doubt.frame = 5;
					button_Discard_skip.frame = 7;
					for_pc_turn_frame = 2;
					//gotoAndStop("/mc_doubtstop");???????????????????????????????????????????????????????????????????
					mc_doubt_frame = false;
				} else if(gametime2 == 100){//end doubt_think_frame == true
					if (!doubt_flg) {
						callmen_flg[1] = 0;
						callmen_flg[2] = 0;
						callmen_flg[3] = 0;
						for (i=0; i<=2; i++) {
							condition = true;
							do {
								callmen = rand(3)+1;
								if (callmen_flg[callmen] == 0) {
									callmen_flg[callmen] = 1;
									condition = false;
								}
							} while (condition);
							//
							if (select_em != callmen) {
								c = 0;
								for (ii=1; ii<=deckStock[callmen]; ii++) {
									ii = String(ii);
									if (now_put == CARD[callmen+ii]) {
										c++;
									}
								}
								r1 = c*25;
								//------------------------------------ 
								buf1 = (7-deckStock[callmen])*4;
								buf2 = (6-deckStock[select_em])*5;
								r2 = r1-buf1+buf2+doubtRtp[callmen];
								r3 = rand(100);
								if (r2>=r3) {
									if (deckStock[callmen]>=20) {
										if (rand(2)) {
											doubt_flg = 1;
										}
									} else {
										doubt_flg = 1;
									}
									break;
								}
								if (deckStock[0] == 0) {
									doubt_flg = 1;
									break;
								}
							}
							//                       
						}
						if (doubt_flg) {
							on_doubt = callmen;
							/*tellTarget ("/") {
								stop();
							}*/
							main_timeline = false;
							//gotoAndPlay("/mc_doubt1");
							mc_doubt_frame = true;
							//alert("mc_doubt");
						}
					}
				} else if(gametime2 == 101){//turn_end frame
					//them
					button_Discard_skip.frame = 0;
					button_Select_doubt.frame = 0;
					if (select_em == end_round) {
						turnLimit--;
						turnLimit_mc.text = "Remain: "+'<span style="font-size:60px">'+turnLimit+'</span>'+" turn";
					}
					if (deckStock[select_em]<=0 || turnLimit<=0) {
							score_disp_frame = true;
							//gotoAndPlay("win");
					} else {
						if (now_put<13) {
							now_put++;
						} else {
							now_put = 1;
						}
						select_em++;
						select_cnt = 0;
						if (select_em>3) {
							select_em = 0;
							//turnLimit--;
							//gotoAndPlay("pc_turn");
							main_timeline = false;
							gametime2 = 0;
							pc_turn_frame();
						} else {
							//gotoAndPlay("enemy_turn");
							//alert("enemy_turn");
							main_timeline = false;
							gametime2 = 0;
							enemy_turn_frame();
						}
					}
				}
			}//end main_timeline = true;
			
			//mc_doubt_frame = true;
			if(mc_doubt_frame == true){
				gametime3++;
				if(gametime3 == 1){
					if(for_sound1 == true){
						//game.assets['doubt.ogg'].clone().play();
						playAudio(2,"/android_asset/sounds/doubt.mp3",false,true);
					}
					if (on_doubt) {
						//gotoAndStop("win" add eval("cha_flg" add on_doubt));
						win_doubt.frame = (cha_flg[on_doubt] - 1)*3;
					} else {
						//gotoAndStop("win7"); you
						win_doubt.frame = 18;
					}
					mc_doubt.y = 0;
					win_doubt.y = 70;
					//alert(on_doubt);
				} else if(gametime3 == 3){
					mc_doubt.frame = 1;
				} else if(gametime3 == 5){
					mc_doubt.frame = 2;
				} else if(gametime3 == 7){
					mc_doubt.frame = 3;
				} else if(gametime3 == 20){
					//call("/mc_functiondoubt");
					mc_doubt.y = -400;
					win_doubt.y = -400;
					mc_function_doubt();
					
				} else if(gametime3 == 40){
					for(i=1; i<=3; i++){
						win[i].frame = (cha_flg[i] - 1)*3;
					}
					//alert("test");
					//alert("main_timeline:"+main_timeline);
					main_timeline = true;
					gametime2 = 100;
					//alert(gametime2);
					gametime3 = 0;
					mc_doubt.frame = 0;
					mc_doubt_frame = false;
				} 
			}//end mc_doubt_frame = true;
			
			//mc_oki_frame
			if(mc_oki_frame == true){
				gametime5 ++;
				if(gametime5 < 10){
					mc_oki.opacity = 1;
					mc_oki.y += 5;
				} else{
					mc_oki_frame = false;
					gametime5 = 0;
					mc_oki.opacity =0;
					mc_oki.y = 445;
				}
			}
			//end mc_oki_frame
			
			//score_disp_frame = true;
			if(score_disp_frame == true){
				main_timeline = false;
				gametime2 = 0;
				button_Select_doubt.x = -500;
				button_Discard_skip.x = -500;
				
				
				if(gametime4 < 35){//score_disp
					gametime4++;
				} else{
					for_score_disp_frame = 1;
					score_disp_frame = false;
					gametime4 = 0;
					button_nex.frame = 2;
					button_nex.x = 223;
					button_nex.y = 950;
					
					
					turnLimit = 20;
					//alert("deckStock truoc");
					pointsort[0] = deckStock[0]+"0";
					pointsort[1] = deckStock[1]+"1";
					pointsort[2] = deckStock[2]+"2";
					pointsort[3] = deckStock[3]+"3";
					//alert("deckStock sau:"+pointsort[0]+"_"+pointsort[1]+"_"+pointsort[2]+"_"+pointsort[3]);
					for(ii=0; ii<=3; ii++){
						for(i=0; i<=3; i++){
							if(Number(pointsort[ii]) < Number(pointsort[i])){
								buf = pointsort[i];
								pointsort[i] = pointsort[ii];
								pointsort[ii] = buf;
							}
						}
					}
					/*for(i=0; i<=3; i++){
						alert("test:"+pointsort[i]);
					}*/
					buf2 = 0;
					for(i=0; i<=3; i++){
						buf = pointsort[i];
						//alert("buf truoc:"+buf);
						buf = buf.substr(buf.length-1,1);
						//alert("buf sau:"+buf);
						if(i == 0){
							score_point[buf] = 100;
							//nguoi choi dau tien
							select_em = buf;
							if(buf == 0){
								end_round = 3;
							} else{
								end_round = buf-1;
							}
						} else if(i != 3){
							b = deckStock[buf];
							score_point[buf] = (50-b)*2;
						} else{
							score_point[buf] = 0;
						}
					}
					for(i=0; i<=3; i++){
						buf = score_point[i];
						score_point[i+String(round_cnt)] = buf;
						//alert("score_point"+i+String(round_cnt)+":"+buf);
						
						for (ii=1; ii<=round_cnt; ii++) {
							buf2 += score_point[i+String(ii)];
						}
						score_point[i+"5"] = buf2;
						buf2 = 0;
					}
				}
			}//end score_disp_frame = true;
		});
	}

	game.start();
}


var Card = enchant.Class.create(enchant.Sprite, {

	initialize: function (x, y) {
		enchant.Sprite.call(this, 68, 98);
		this.image = game.assets['card.png'];
		this.x = x;
		this.y = y;
		this.frame = 1;
		//game.rootScene.addChild(this);
	},
	insert: function(Enemy) {
		game.rootScene.insertBefore(this, Enemy);
	},
	remove: function () {
		game.rootScene.removeChild(this);
		//delete enemies[this.key];
	}
});

var Cha = enchant.Class.create(enchant.Sprite, {

	initialize: function (x, y) {
		enchant.Sprite.call(this, 122, 138);
		this.image = game.assets['chara.png'];
		this.x = x;
		this.y = y;
		this.frame = 1;
		//game.rootScene.addChild(this);
	},
	insert: function(Enemy) {
		game.rootScene.insertBefore(this, Enemy);
	},
	remove: function () {
		game.rootScene.removeChild(this);
		//delete enemies[this.key];
	}
});

var Che_Cha = enchant.Class.create(enchant.Sprite, {

	initialize: function (x, y) {
		enchant.Sprite.call(this, 122, 138);
        this.backgroundColor="#000000";
		this.x = x;
		this.y = y;
		this.opacity = 0.3;
		//game.rootScene.addChild(this);
	},
	insert: function(Enemy) {
		game.rootScene.insertBefore(this, Enemy);
	},
	remove: function () {
		game.rootScene.removeChild(this);
		//delete enemies[this.key];
	}
});

var Cha_Name = enchant.Class.create(enchant.Label, {

	initialize: function (x, y) {
		enchant.Label.call(this);
        this.backgroundColor="#000000";
		this.x = x;
		this.y = y;
		this.opacity = 0.3;
		//game.rootScene.addChild(this);
	},
	insert: function(Enemy) {
		game.rootScene.insertBefore(this, Enemy);
	},
	remove: function () {
		game.rootScene.removeChild(this);
		//delete enemies[this.key];
	}
});