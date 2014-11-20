var childbrowser;
 
document.addEventListener("deviceready", onDeviceReady, false);
 
function onDeviceReady()
{
	childbrowser = ChildBrowser.install();
	navigator.geolocation.getCurrentPosition(hasPosition, onError);
}


function hasPosition(position)
{
	var point = new google.maps.LatLng(position.coords.latitude, position.coords.longitude);
	var image = new google.maps.MarkerImage('assets/myMarker.PNG', null, null, null, new google.maps.Size(16, 16));
	var marker = new google.maps.Marker({ position: point, map: map, icon: image });
}


function onError(error) {
	//alert('code: '    + error.code    + '\n' + 'message: ' + error.message + '\n');
}
 
function onLinkClick(website) 
{   
    if(childbrowser != null)
    {
        //childbrowser.onLocationChange = function(loc){ alert("In index.html new loc = " + loc); };
        //childbrowser.onClose = function(){alert("In index.html child browser closed");};
        //childbrowser.onOpenExternal = function(){alert("In index.html onOpenExternal");};
        window.plugins.childBrowser.showWebPage(website); 
    }  
}


function sendEmail(subject,bodyText,recipients,ccRecipient,bccRecipient)
{
	window.plugins.emailComposer.showEmailComposer(subject,bodyText,recipients,ccRecipient,bccRecipient,false);
}

var wbp = (function()
{
	var frames  = ['home', 'info', 'map', 'search', 'offers', 'tour'];
	var accent  = as.GetAccent().split('-')[0];
	var weather = '';
	
	//alert(as.isOnline()); //Let's use this simple method for Online/Offline.
	
	return {
		correctAccent     : function()
		{
			switch(accent)
			{
				case 'el': accent = ''; break;
				case 'zh': accent = 'zh-hant'; break;
			}
		},
		chooseAccent      : function()
		{
			var index = 0;
			
			switch(accent)
			{
			case ''       : index = 0; break;
			case 'en'     : index = 1; break;
			case 'ru'     : index = 2; break;
			case 'zh-hant': index = 3; break;
			}
			as.$('#headAccent').selectedIndex = index;
			
			switch(accent)
			{
			case '':
				as.$('#navLabel0').innerText = 'ΑΡΧΙΚΗ';
				as.$('#navLabel1').innerText = 'ΠΛΗΡΟΦΟΡΙΕΣ';
				as.$('#navLabel2').innerText = 'ΧΑΡΤΗΣ';
				as.$('#navLabel3').innerText = 'ΑΝΑΖΗΤΗΣΗ';
				as.$('#navLabel4').innerText = 'ΠΡΟΣΦΟΡΕΣ';
				
				as.$('#selectAccomodation').value = 5;
				as.$('#selectRestaurants').value = 4;
				as.$('#selectBarCafe').value = 8;
				as.$('#selectShopping').value = 9;
				as.$('#selectFacilities').value = 19;
				as.$('#selectActivities').value = 20;
				as.$('#selectTransportation').value = 13;
				as.$('#selectTourism').value = 21;
				
				as.$('#selectAccomodation').innerText = 'Διαμονή';
				as.$('#selectRestaurants').innerText = 'Εστιατόρια';
				as.$('#selectBarCafe').innerText = 'Bar / Cafe';
				as.$('#selectShopping').innerText = 'Αγορές';
				as.$('#selectFacilities').innerText = 'Υπηρεσίες';
				as.$('#selectActivities').innerText = 'Δραστηριότητες';
				as.$('#selectTransportation').innerText = 'Μετακίνηση';
				as.$('#selectTourism').innerText = 'Τουρισμός';
				break;
				
			case 'en':
				as.$('#navLabel0').innerText = 'HOME';
				as.$('#navLabel1').innerText = 'INFO';
				as.$('#navLabel2').innerText = 'MAP';
				as.$('#navLabel3').innerText = 'SEARCH';
				as.$('#navLabel4').innerText = 'OFFERS';
				
				as.$('#selectAccomodation').value = 31;
				as.$('#selectRestaurants').value = 36;
				as.$('#selectBarCafe').value = 29;
				as.$('#selectShopping').value = 30;
				as.$('#selectFacilities').value = 40;
				as.$('#selectActivities').value = 35;
				as.$('#selectTransportation').value = 41;
				as.$('#selectTourism').value = 37;
				
				as.$('#selectAccomodation').innerText = 'Accommodation';
				as.$('#selectRestaurants').innerText = 'Restaraunts';
				as.$('#selectBarCafe').innerText = 'Bar / Cafe';
				as.$('#selectShopping').innerText = 'Shopping';
				as.$('#selectFacilities').innerText = 'Facilities';
				as.$('#selectActivities').innerText = 'Activities';
				as.$('#selectTransportation').innerText = 'Transportation';
				as.$('#selectTourism').innerText = 'Tourism';
				break;
				
			case 'ru':
				as.$('#navLabel0').innerText = 'ГЛАВНАЯ';
				as.$('#navLabel1').innerText = 'ИНФО';
				as.$('#navLabel2').innerText = 'КАРТЕ';
				as.$('#navLabel3').innerText = 'поиск';
				as.$('#navLabel4').innerText = 'ПРЕДЛОЖЕНИЯ';
				
				as.$('#selectAccomodation').value = 49;
				as.$('#selectRestaurants').value = 54;
				as.$('#selectBarCafe').value = 47;
				as.$('#selectShopping').value = 48;
				as.$('#selectFacilities').value = 59;
				as.$('#selectActivities').value = 53;
				as.$('#selectTransportation').value = 55;
				as.$('#selectTourism').value = 56;
				
				as.$('#selectAccomodation').innerText = 'НОМЕРНОЙ ФОНД';
				as.$('#selectRestaurants').innerText = 'РЕСТОРАНЫ';
				as.$('#selectBarCafe').innerText = 'БАР / КАФЕ';
				as.$('#selectShopping').innerText = 'ПОКУПКА';
				as.$('#selectFacilities').innerText = 'УСЛУГИ ДЛЯ ГОСТЕЙ';
				as.$('#selectActivities').innerText = 'ДЕЯТЕЛЬНОСТЬ';
				as.$('#selectTransportation').innerText = 'ТРАНСПОРТ';
				as.$('#selectTourism').innerText = 'ТУРИЗМ';
				break;
				
			case 'zh-hant':
				as.$('#navLabel0').innerText = '首页';
				as.$('#navLabel1').innerText = '信息';
				as.$('#navLabel2').innerText = '地图';
				as.$('#navLabel3').innerText = '搜索';
				as.$('#navLabel4').innerText = '优惠';
				
				as.$('#selectAccomodation').value = 67;
				as.$('#selectRestaurants').value = 72;
				as.$('#selectBarCafe').value = 23;
				as.$('#selectShopping').value = 66;
				as.$('#selectFacilities').value = 65;
				as.$('#selectActivities').value = 71;
				as.$('#selectTransportation').value = 73;
				as.$('#selectTourism').value = 74;
				
				as.$('#selectAccomodation').innerText = '住宿';
				as.$('#selectRestaurants').innerText = '餐饮';
				as.$('#selectBarCafe').innerText = '酒吧/咖啡厅';
				as.$('#selectShopping').innerText = '购物';
				as.$('#selectFacilities').innerText = '设施';
				as.$('#selectActivities').innerText = '活动';
				as.$('#selectTransportation').innerText = '交通运输';
				as.$('#selectTourism').innerText = '旅游';
				break;
			}			
		},
		returnAccent      : function()
		{
			return accent;
		},
		setAccent         : function(value)
		{
			accent = value;
		},
		returnWeather     : function()
		{
			as.request
			(
				'Reth Weather',
				'XML',
				'http://rss.wunderground.com/auto/rss_full/global/stations/16758.xml',
				function(k)
				{
					var root = k.getElementsByTagName('title')[2].textContent;
					weather  = root.split(' / ')[1].split('C')[0]+'<sup>o</sup>C';
					as.$('#headWeather').innerHTML = weather;
				}
			);
		},
		backButton        : function()
		{
			if (!as.available()) return;
			window.history.go(-2);
		},
		initNavbar        : function()
		{
			for (d=0; d<5; d++)
			{
				as.$('#navbar').innerHTML+=as.fastTouch('<div id="navbtn'+d+'" class="navbtn" onclick="wbp.switchCat('+d+')"><div id="navThumb'+d+'" class="navThumb" STYLE="-webkit-mask-box-IMAGE:url(\'assets/navbar/'+d+'.PNG\')"></div><div id="navLabel'+d+'" STYLE="width:100%;white-space:nowrap;overflow:hidden;text-overflow:ellipsis">'+(frames[d].charAt(0).toUpperCase()+frames[d].substr(1, as.GetLen(frames[d])))+'</div></div>');
			}
			wbp.switchCat(0);
			
			as.$('#mapSections').onfocus = function() { this.blur(); };
			as.$('#searchField').onfocus = function() { this.blur(); };
		},
		switchCat         : function(n)
		{
			if (as.available())
			{
				for (d=0; d<5; d++)
				{
					var e = as.$('#navbtn'+d);
					
					e.className =
					(d === n) ?
					'navbtnActive'
					:
					'navbtn';
					
					e.childNodes[0].className =
					(d === n) ?
					'navThumbActive'
					:
					'navThumb';
					
					if (n === 5)
					{
						as.$('#navbtn0').className = 'navbtnActive';
						as.$('#navbtn0').childNodes[0].className = 'navThumbActive';
					}
				}
				as.switchTo('#'+frames[n]);
			}
		},
		frameAndTitle     : function(frame)
		{
			var p;
			
			switch(frame) //Decide what titles the frames should have.
			{
			case '#blank'         : p = ['', '']; break;
			case '#home'          : p = ['RETHYMNO', 'ONLINE']; break;
			case '#catDetails'    : p = [as.$('#hideCatDetails1').innerText, as.$('#hideCatDetails2').innerText]; break;
			case '#catList'       : p = [as.$('#hideCatList1').innerText, as.$('#hideCatList2').innerText]; break;
			case '#entDetails'    : p = [as.$('#hideEntDetails1').innerText, as.$('#hideEntDetails2').innerText]; break;
			case '#bookDetails'   : p = [as.$('#hideBookDetails1').innerText, as.$('#hideBookDetails2').innerText]; break;
			case '#bookRequest'   : p = [as.$('#hideBookRequest1').innerText, as.$('#hideBookRequest2').innerText]; break;
			case '#info'          : p = ['RETHYMNO', 'CITY INFO']; break;
			case '#catInfoList'   : p = [as.$('#hideCatInfoList1').innerText, as.$('#hideCatInfoList2').innerText]; break;
			case '#entInfoDetails': p = [as.$('#hideEntInfoDetails1').innerText, as.$('#hideEntInfoDetails2').innerText]; break;
			case '#map'           : p = ['MAP', 'WHAT\'S AROUND YOU']; break;
			case '#search'        : p = ['SEARCH','']; break;
			case '#offers'        : p = ['OFFERS', '']; break;
			case '#tour'          : p = ['RETHYMNO', 'VISUAL TOUR']; break;
			
			default:
				p = ['UNTITLED', 'FIX THIS!'];
				break;
			}
			
			switch(frame) //Decide when to show several information on the Toolbar.
			{
			case '#home'  :
				as.$('#mapSections').onfocus = function() { this.blur(); };
				as.$('#searchField').onfocus = function() { this.blur(); };
				as.SetVisible(as.$('#brandLetters'), 'block');
				as.SetVisible(as.$(   '#brandBack'),  'none');
				as.SetVisible(as.$(  '#headAccent'), 'block');
				as.SetVisible(as.$( '#headWeather'), 'block');
				break;
				
			case '#blank' :
				as.$('#mapSections').onfocus = function() { this.blur(); };
				as.$('#searchField').onfocus = function() { this.blur(); };
				as.SetVisible(as.$(   '#brandBack'), 'none');
				as.SetVisible(as.$(  '#headAccent'), 'none');
				as.SetVisible(as.$( '#headWeather'), 'none');
				break;
				
			case '#info'  :
			case '#offers':
			case '#tour'  :
				as.$('#mapSections').onfocus = function() { this.blur(); };
				as.$('#searchField').onfocus = function() { this.blur(); };
				as.SetVisible(as.$('#brandLetters'), 'block');
				as.SetVisible(as.$(   '#brandBack'),  'none');
				as.SetVisible(as.$(  '#headAccent'),  'none');
				as.SetVisible(as.$( '#headWeather'),  'none');
				break;
				
			case '#map'   :
				as.$('#mapSections').onfocus = function() { this.focus(); };
				as.$('#searchField').onfocus = function() { this.blur(); };
				as.SetVisible(as.$('#brandLetters'), 'block');
				as.SetVisible(as.$(   '#brandBack'),  'none');
				as.SetVisible(as.$(  '#headAccent'),  'none');
				as.SetVisible(as.$( '#headWeather'),  'none');
				break;
				
			case '#search':
				as.$('#mapSections').onfocus = function() { this.blur(); };
				as.$('#searchField').onfocus = function() { this.focus(); };
				as.SetVisible(as.$('#brandLetters'), 'block');
				as.SetVisible(as.$(   '#brandBack'),  'none');
				as.SetVisible(as.$(  '#headAccent'),  'none');
				as.SetVisible(as.$( '#headWeather'),  'none');
				break;
				
			default:
				as.$('#mapSections').onfocus = function() { this.blur(); };
				as.$('#searchField').onfocus = function() { this.blur(); };
				as.SetVisible(as.$('#brandLetters'),  'none');
				as.SetVisible(as.$(   '#brandBack'), 'block');
				break;
			}
			
			as.$('#headTitle').innerHTML = p[0];
			as.$( '#subTitle').innerHTML = p[1];
		},
		switchLoader      : function()
		{
			if (as.GetVisible(as.$('#loader')) === 'none')
			{
				as.SetVisible(as.$('#brandLetters'), 'none');
				as.SetVisible(as.$('#loader'), 'block');
				as.forceSwitch();
				as.switchTo('#blank');
			}
			else
			{
				as.SetVisible(as.$('#loader'), 'none');
			}
		},
		homeContent       : function()
		{
			as.request
			(
				'Home Screens',
				'JSON',
				'http://app4u.gr/cms_reth/'+accent+'/api/taxonomy/get_terms/?taxonomy=catalogue-categories',
				function(k)
				{
					var homeLoading = as.$('#homeLoading');
					
					if (homeLoading) {
					homeLoading.style.display = "none";
					}
					
					var div = as.$('#scrHome');
					var cat1, cat2;
					
					cat1 = [0, 4, 6, 8];
					cat2 = [9, 10, 11, 12];
					
					if (accent == '')
					{
						cat1 = [1, 3, 7, 8];
					}
					
					div.innerHTML+=as.fastTouch('<div style="background:url(\'assets/picLoader.GIF\') 142px 42px no-repeat; width:300px; height:109px;MARGIN-bottom:9px; border-bottom:3px double #eee"><div STYLE="color:#fff;BACKGROUND:url(assets/tour-home.JPG); background-size:300px 100px;width:300px;HEIGHT:100px; text-align:center;" onclick="wbp.switchCat(5)"><div STYLE="position:relative;DISPLAY:table; margin:0 auto; BACKGROUND:#f5772a;font-size:14px;font-WEIGHT:bold;top:83px;left:0px;PADDING:3px 10px">VISUAL TOUR</div></div></div>')
					
					for (var d=0; d<as.GetLen(cat1); d++)
					{
						div.innerHTML+=as.fastTouch('<div style="background:url(\'assets/picLoader.GIF\') 142px 42px no-repeat; width:300px; height:100px;MARGIN-bottom:10px"><div STYLE="color:#fff;BACKGROUND:url(\''+k[cat1[d]].image_url+'\'); background-size:300px 100px;width:300px;HEIGHT:100px;" onclick="'+(k[cat1[d]].has_children == '1' ? 'wbp.catDetails('+k[cat1[d]].id+')' : 'wbp.catList('+k[cat1[d]].id+')')+'"><div STYLE="position:relative;DISPLAY:table;BACKGROUND:#f5772a;font-size:14px;font-WEIGHT:bold;top:70px;left:-5px;PADDING:3px 10px">'+k[cat1[d]].title+'</div></div></div>');
					}
					for (var d=0; d<as.GetLen(cat2); d++)
					{
						div.innerHTML+=as.fastTouch('<div STYLE="DISPLAY:inline-block;color:#fff;BACKGROUND:url(\''+k[cat2[d]].image_url+'\');background-size:145px 73px; -webkit-border-radius:4px; width:145px;HEIGHT:73px;MARGIN:0 '+(d%2 === 0 ? '10px' : '0')+' 10px 0" onclick="'+(k[cat2[d]].has_children == '1' ? 'wbp.catDetails('+k[cat2[d]].id+')' : 'wbp.catList('+k[cat2[d]].id+')')+'"><div STYLE="position:relative;DISPLAY:table; background:rgba(238, 238, 238, 0.9); font-size:12px; color:#333; font-WEIGHT:bold;top:45px;left:-5px;PADDING:3px 10px 2px 10px">'+k[cat2[d]].title+'</div></div>');
					}
					as.SetHei(div, as.GetHei(div));
					new iScroll('wrapHome');
				}
			);
		},
		catDetails        : function(id)
		{
			if (!as.available()) return;
			wbp.switchLoader();
			
			as.request
			(
				'Cat Details',
				'JSON',
				'http://app4u.gr/cms_reth/'+accent+'/api/taxonomy/get_terms/?taxonomy=catalogue-categories&term_id='+id,
				function(k)
				{	
				
					var div = as.$('#scrCatDetails');
					div.innerHTML = '';
					
					for (var d=0; d<50; d++)
					{
						if (k[d] !== undefined)
						{
							div.innerHTML+=as.fastTouch('<div STYLE="color:#777;BACKGROUND:#fff;font-size:15px;font-WEIGHT:bold;border-bottom:1px solid #eee;PADDING-bottom:10px;MARGIN-bottom:10px" onclick="wbp.catList('+k[d].id+')"><div STYLE="float:left">'+k[d].title+'</div><div STYLE="float:RIGHT;color:#fff;BACKGROUND:#f5772a;font-size:12px;text-ALIGN:center;width:20px;HEIGHT:20px;line-HEIGHT:20px;-webkit-border-radius:5px">'+k[d].post_count+'</div><div STYLE="clear:both"></div></div>');
						}
						else
						{
							break;
						}
					}
					
					
					
					/* Frame Size Calculation */
					as.SetHei(div, 380);
					(catDetailsFlow === null) ? catDetailsFlow = new iScroll('wrapCatDetails') : null;
					/* End of Frame Size Calculation */
					
					
					
					as.SetVisible(as.$('#brandLetters'),  'none');
					as.SetVisible(as.$(   '#brandBack'), 'block');
					
					setTimeout(function()
					{
						as.$('#hideCatDetails1').innerText = 'RETHYMNO';
						as.$('#hideCatDetails2').innerText = k[0].parent_name;
						
						wbp.switchLoader();
						as.switchTo('#catDetails');
					},
					500);
				}
			);
		},
		catList           : function(id)
		{
			if (!as.available()) return;
			wbp.switchLoader();
			
			as.request
			(
				'Cat List',
				'JSON',
				'http://app4u.gr/cms_reth/'+accent+'/api/taxonomy/get_taxonomy_posts/?taxonomy=catalogue-categories&id='+id+'&order_by=title&order=ASC&include=id,title,thumbnail,custom_fields&custom_fields=wpcf-stars,wpcf-price,wpcf-offer-discount,wpcf-banner-image,wpcf-banner-url',
				function(k)
				{
					
					function showBanner() {

						var bannerHtml = '';
						var hasBanner = false;
						var bannerIds = new Array();						
						var bannerUrl = new Array();
						var bannerPhotos = new Array();
						
						for (var d=0, h=0; d<k.count; d++)
						{
							
							if (k.posts[d].custom_fields['wpcf-banner-image'] != '')
							{	
								hasBanner = true;
								bannerIds[h]=k.posts[d].id;
								bannerPhotos[h]=k.posts[d].custom_fields['wpcf-banner-image'];
								bannerUrl[h]=k.posts[d].custom_fields['wpcf-banner-url'];
								h++;
							}
						}

						as.slideShow('#bannersSlideShow', '300', '75', bannerPhotos, 'slide', bannerIds, bannerUrl);
						
						if (hasBanner) 
						{
							bannerHtml = '<div id="bannersSlideShow" STYLE="BACKGROUND:url(\'assets/picLoader.GIF\') 142px 34px no-repeat;HEIGHT:75px;MARGIN-bottom:5px;"></div><div STYLE="height:3px; border-bottom:3px double #eee; MARGIN-bottom:10px;"></div>';
						}	
						else
						{
							bannerHtml = '';
						}
						return bannerHtml;
					}
						
					
					function offerDiscount(d)
					{
						return (d != null) ? '<div class="discount">'+d+'</div>' : '';
					}
					
					function returnStars(n)
					{
						var str = '';
						
						str+='<div STYLE="MARGIN-bottom:2px">';
						for (var d=0; d<n; d++)
						{
							str+='<IMG src="assets/star.PNG" STYLE="width:11px;MARGIN-RIGHT:3px"/>';
						}
						str+='</div>';
						
						return (n != 0) ? str : '';
					}
					function returnPrice(p)
					{
						return (p != '') ? '<div STYLE="float:left; margin-left:5px; width:100px; font-size:13px; color:#F4772A; font-WEIGHT:bold;"><span STYLE="color:#888; font-WEIGHT:normal;">from </span>'+p+'&euro;</div>' : '';
					}
					function returnImage(i)
					{
						return (i != null) ? 'BACKGROUND:url(\''+i+'\');' : 'BACKGROUND:url(\'assets/noPic.JPG\');';
					}
					
					var div = as.$('#scrCatList');
					var str = '<div id="catListCalcHei">';
					
					str+= showBanner();
					
					for (var d=0; d<k.count; d++)
					{
						str+=as.fastTouch('<div STYLE="position:relative; width:300px;-webkit-box-SIZING:border-box;border-bottom:'+(d === k.count-1 ? '0' : '1')+'px solid #eee;PADDING: 0px 0px 7px 0px; margin-bottom:7px" onclick="wbp.entDetails('+k.posts[d].id+')"><div STYLE="float:left;'+returnImage(k.posts[d].thumbnail)+'width:75px;HEIGHT:60px;-webkit-BACKGROUND-size:75px 60px; -webkit-border-radius:4px"></div><div STYLE="float:left;width:150px;HEIGHT:45px;MARGIN-left:5px">'+returnStars(parseInt(k.posts[d].custom_fields['wpcf-stars']))+'<div STYLE="color:#888;font-size:14px;font-WEIGHT:bold">'+k.posts[d].title+'</div></div>'+returnPrice(k.posts[d].custom_fields['wpcf-price'])+offerDiscount(k.posts[d].custom_fields['wpcf-offer-discount'])+'<div STYLE="clear:both"></div></div>');
					}
					str+='</div>';
			
					div.innerHTML = str;
					
					
					
					/* Frame Size Calculation */
					as.SetHei(div, as.GetHei(as.$('#catListCalcHei'))+25);
					(catListFlow === null) ? catListFlow = new iScroll('wrapCatList') : catListFlow.refresh();
					/* End of Frame Size Calculation */
					
					
					
					as.SetVisible(as.$('#brandLetters'),  'none');
					as.SetVisible(as.$(   '#brandBack'), 'block');
					
					setTimeout(function()
					{
						as.$('#hideCatList1').innerText = 'RETHYMNO';
						as.$('#hideCatList2').innerText = k.term.title.toUpperCase();
						
						wbp.switchLoader();
						as.switchTo('#catList');
					},
					500);
				}
			);
		},
		entDetails        : function(id)
		{
			if (!as.available()) return;
			wbp.switchLoader();
			
			as.request
			(
				'Ent Details',
				'JSON',
				'http://app4u.gr/cms_reth/'+accent+'/api/taxonomy/get_post/?post_type=catalogue-item&id='+id+'&include=id,title,content,custom_fields&custom_fields=wpcf-price,wpcf-phone,wpcf-email,wpcf-area,wpcf-address,wpcf-website,wpcf-catalogue-photo-1,wpcf-catalogue-photo-2,wpcf-catalogue-photo-3,wpcf-catalogue-photo-4,wpcf-catalogue-photo-5,wpcf-fac-pool,wpcf-fac-internet,wpcf-fac-pets,wpcf-fac-dinning,wpcf-fac-gym,wpcf-fac-room-service,wpcf-fac-jacuzzi,wpcf-fac-amea,wpcf-fac-parking,wpcf-fac-bussiness,wpcf-fac-breakfast,wpcf-booking,_wp_geo_longitude,_wp_geo_latitude',
				function(k)
				{
					
					function returnComfort(n)
					{
						var str = '';
						
						function addComfort(kb, kd)
						{
							if (parseInt(n[kb]) === 1) str+='<IMG src="assets/comfort/'+kd+'.PNG" STYLE="float:left;width:27px;OPACITY:.5;MARGIN-bottom:7px"/>';
						}
						
						addComfort('wpcf-fac-pool'        , 'pool');
						addComfort('wpcf-fac-internet'    , 'wifi');
						addComfort('wpcf-fac-pets'        , 'pets');
						addComfort('wpcf-fac-dinning'     , 'restaurant');
						addComfort('wpcf-fac-gym'         , 'sports');
						addComfort('wpcf-fac-room-service', 'room');
						addComfort('wpcf-fac-jacuzzi'     , 'jacuzzi');
						addComfort('wpcf-fac-amea'        , 'amea');
						addComfort('wpcf-fac-parking'     , 'parking');
						addComfort('wpcf-fac-bussiness'   , 'business');
						addComfort('wpcf-fac-breakfast'   , 'breakfast');
						
						return str;
					}
					function returnDetailsMap(d, i, p)
					{
						
						var str = (d != '') ? '<div class="infoSection" style="border-bottom:1px solid #eee;"><div STYLE="float:left;">'+d+'</div><div class="infoButton" onclick="if (as.available()) ' : '';
						
						if (str !== '')
						{
							switch(p)
							{
							case 'MAP':
								str+='wbp.showPlace(\''+i+'\')">'+p+'</div></div>';
								break;
							}
						}
						return str;
					}
					function returnDetails(d, p)
					{
						
						var str = (d != '') ? '<div class="infoSection" style="border-bottom:1px solid #eee;"><div STYLE="float:left;">'+d+'</div><div class="infoButton" onclick="if (as.available()) ' : '';
						
						if (str !== '')
						{
							switch(p)
							{
							case 'CALL':
								str+='location.href=\'tel:'+d+'\'">'+p+'</div></div>';
								break;
							
							case 'MAIL':
								str+='location.href=\'mailto:'+d+'\'">'+p+'</div></div>';
								break;
							
							case 'VISIT':
								str+='window.open(\''+d+'\')">'+p+'</div></div>';
								break;
							}
						}
						return str;
					}
					function returnPrice(price, bookType)
					{
						var priceStr = (price != '') ? '<div class="infoSection bookField" style="border-bottom:1px solid #eee;"><p class="fieldTitle"><span>from </span>'+price+'&euro;</p>' : '';
						
						if (bookType != '' && priceStr != '')
						{
							switch(parseInt(bookType))
							{
							case 0:
							priceStr+='</div>';
							break;
							
							case 1:
							priceStr+='<div class="infoButton" onclick="wbp.bookRequest('+k.post.id+')" STYLE="font-size:11px;">RESERVE</div></div>';
							break;
							
							case 2:
							priceStr+='<div class="infoButton" onclick="wbp.bookDetails('+k.post.id+')">BOOK</div></div>';
							//priceStr+='<div class="infoButton" onclick="wbp.bookRequest('+k.post.id+')">BOOK</div></div>';
							break;
							
							default:
							priceStr+='</div>';
							break;
							}
						
						}
						return priceStr;
					}
					
					var div = as.$('#scrEntDetails');
					div.innerHTML = '';
					
					
					
					/* Content Creation */
					div.innerHTML+=as.fastTouch(
					'<div id="entDetailsCalcHei"><div id="entDetailsSlideShow" STYLE="BACKGROUND:url(\'assets/picLoader.GIF\') 142px 42px no-repeat;HEIGHT:100px;MARGIN-bottom:10px"></div><div STYLE="HEIGHT:110px"></div>'+
					
					returnComfort(k.post.custom_fields)+
					'<div STYLE="clear:both;HEIGHT:3px;border-bottom:3px double #eee"></div>'+
					returnDetailsMap(k.post.custom_fields['wpcf-area'], k.post.id, 'MAP')+
					returnDetails(k.post.custom_fields['wpcf-phone'  ], 'CALL')+
					returnDetails(k.post.custom_fields['wpcf-email'  ], 'MAIL')+
					returnDetails(k.post.custom_fields['wpcf-website'], 'VISIT')+
					returnPrice(k.post.custom_fields['wpcf-price'], k.post.custom_fields['wpcf-booking'])+
					'<div class="content">'+k.post.content+'</div></div>');
					/* End of Content Creation */
					
					
					
					/* SlideShow Generation */
					var slideShowArr = [];
					
					for (var h=0; h<5; h++)
					{
						if (k.post.custom_fields['wpcf-catalogue-photo-'+(h+1)].toString() !== '')
						{
							slideShowArr.push(k.post.custom_fields['wpcf-catalogue-photo-'+(h+1)]);
						}
					}
					as.slideShowPlus('#entDetailsSlideShow', slideShowArr);
					as.$('#entDetailsSlideShow').innerHTML+='<IMG src="assets/zoom.PNG" onclick="wbp.rotateSlideShow(\'#entDetailsSlideShow\')" STYLE="z-index:25;position:absolute;width:25px;top:5px;RIGHT:7px"/>';
					/* End of SlideShow Generation */
					
					
					
					/* Rotated SlideShow Mirror */
					var totalPics = 0;
					
					for (var d=0; d<5; d++)
					{
						var photo = k.post.custom_fields['wpcf-catalogue-photo-'+(d+1)];
						
						if (photo != '')
						{
							as.$('#slideShowPlus1pic'+d).src = photo;
							as.SetVisible(as.$('#slideShowBullet'+(d+1)), 'block');
							totalPics++;
						}
						else
						{
							as.$('#slideShowPlus1pic'+d).src = null;
							as.SetVisible(as.$('#slideShowBullet'+(d+1)), 'none');
						}
					}
					as.$('#slideShowTotalPic').innerText = totalPics;
					
					as.$('#slideShowCurrentPic').innerText = 1;
					as.$('#slideshowLandscape').pos = 0;
					
					for (var d=0; d<5; d++)
					{
						as.SetBack(as.$('#slideShowBullet'+(d+1)), '#777');
						as.SetVisible(as.$('#slideShowPlus1pic'+d), 'none');
					}
					as.SetBack(as.$('#slideShowBullet1'), '#ddd');
					as.SetVisible(as.$('#slideShowPlus1pic0'), 'block');
					/* End of Rotated SlideShow Mirror */
					
					
					
					/* Frame Size Calculation */
					as.SetHei(div, as.GetHei(as.$('#entDetailsCalcHei'))+40);
					(entDetailsFlow === null) ? entDetailsFlow = new iScroll('wrapEntDetails') : entDetailsFlow.refresh();
					/* End of Frame Size Calculation */
					
					
					
					as.SetVisible(as.$('#brandLetters'),  'none');
					as.SetVisible(as.$(   '#brandBack'), 'block');
					
					setTimeout(function()
					{
						as.$('#hideEntDetails1').innerText = 'RETHYMNO';
						as.$('#hideEntDetails2').innerText = k.post.title;
						
						wbp.switchLoader();
						as.switchTo('#entDetails');
					},
					500);
				}
			);
		},
		bookDetails       : function(id)
		{
			if (!as.available()) return;
			wbp.switchLoader();
			
			as.request
			(
				'Book Details',
				'JSON',
				'http://app4u.gr/cms_reth/'+accent+'/api/taxonomy/get_post/?post_type=catalogue-item&id='+id+'&include=id,title,custom_fields&custom_fields=wpcf-phone,wpcf-email,wpcf-area,wpcf-address,wpcf-website,wpcf-price,wpcf-room-title-1,wpcf-room-price-1,wpcf-room-des-1,wpcf-room-title-2,wpcf-room-price-2,wpcf-room-des-2,wpcf-room-title-3,wpcf-room-price-3,wpcf-room-des-3,wpcf-room-title-4,wpcf-room-price-4,wpcf-room-des-4,wpcf-room-title-5,wpcf-room-price-5,wpcf-room-des-5',				
				function(k)
				{
					var div  = as.$('#scrbookDetails');
					var html = '<div id="bookDetailsCalcHei">';
					
					var rooms = new Array();
					
					for (var n=0,c=1; n<5; n++)
					{
						if (k.post.custom_fields['wpcf-room-title-'+c] != '')
						{
							rooms[n] = k.post.custom_fields['wpcf-room-title-'+c];
						}	
						c++;
					}
					
					for (var r=1,d=0; d<as.GetLen(rooms); d++)
					{
						html+='<div STYLE="width:300px;-webkit-box-SIZING:border-box; margin:0 0 10px 0; border-bottom:1px solid #eee; padding-bottom:10px">';
						html+='<h2 STYLE="color:#666;font-size:16px;font-WEIGHT:bold; margin:0 0 5px; 0">'+k.post.custom_fields['wpcf-room-title-'+r]+'</h2>';
						html+='<div STYLE="color:#888;">'+k.post.custom_fields['wpcf-room-des-'+r]+'</div>';
						html+='<div STYLE="float:left; background:#f4772a; -webkit-border-radius: 3px; HEIGHT: 20px; padding:1px 5px; margin-top:8px; line-HEIGHT: 21px; color:white;" onclick="wbp.bookRequest('+k.post.id+',&quot;'+k.post.custom_fields['wpcf-room-title-'+r]+'&quot;)">REQUEST</div>';
						html+='<div STYLE="float:right; color:#f4772a; font-size:16px; height:20px; font-weight:bold; margin-top:8px;">'+k.post.custom_fields['wpcf-room-price-'+r]+'&euro;</div>';
						html+='<div STYLE="clear:both"></div>';
						html+='</div>';
						r++;
					}
					html+='</div>';
					div.innerHTML = as.fastTouch(html);
					
					
					/* Frame Size Calculation */
					as.SetHei(div, as.GetHei(as.$('#bookDetailsCalcHei'))+40);
					(bookDetailsFlow === null) ? bookDetailsFlow = new iScroll('wrapBookDetails') : bookDetailsFlow.refresh();
					/* End of Frame Size Calculation */
					
					
					as.SetVisible(as.$('#brandLetters'),  'none');
					as.SetVisible(as.$(   '#brandBack'), 'block');
					
					setTimeout(function()
					{
						as.$('#hideBookDetails1').innerText = 'RETHYMNO';
						as.$('#hideBookDetails2').innerText = k.post.title;
						
						wbp.switchLoader();
						as.switchTo('#bookDetails');
					},
					500);
				}
			);
		},
		bookRequest       : function(id,room)
		{
			if (!as.available()) return;
			wbp.switchLoader();
			
			as.request
			(
				'Book Request',
				'JSON',
				'http://app4u.gr/cms_reth/'+accent+'/api/taxonomy/get_post/?post_type=catalogue-item&id='+id+'&include=id,title,custom_fields&custom_fields=wpcf-phone,wpcf-email,wpcf-area,wpcf-address,wpcf-website,wpcf-price,wpcf-booking',
				function(k)
				{
					var div = as.$('#scrbookRequest');
					
					var bookData = '';
					var bookFields  = '';
					var requestType = '';
					var businessEmail = k.post.custom_fields['wpcf-email'];
					
					if (k.post.custom_fields['wpcf-booking'] == 1) { // Reservation Request
						requestType = 1;
						bookFields+='<input id="name" required placeholder="Enter your Name"/><input id="email" name="email" required placeholder="Enter your e-mail"><input id="phone" placeholder="Enter your phone number"/><input id="persons" placeholder="Enter number of persons"/>';
						bookFields+='<div STYLE="clear:both;HEIGHT:3px;border-bottom:3px double #eee; margin-bottom:10px;"></div>';
						bookFields+='<div style="">Arrival Date:</div>';
						bookFields+='<div class="dateField">';
						bookFields+='TT: <select id="arrivalTime" style="HEIGHT:25px">';
						var time = ['13:00', '13:30', '14:00', '14:30', '15:00', '15:30', '16:00', '16:30', '17:00', '17:30', '18:00', '18:30', '19:00', '19:30', '20:00', '20:30', '21:00', '21:30', '22:00', '22:30', '23:00', '23:30', '00:00', '00:30', '01:00', '01:30', '02:00'];
						for (var d=0; d<27; d++)
						{
							bookFields+='<option value="'+time[d]+'">'+time[d]+'</option>';
						}
						bookFields+='</select>';
						bookFields+='DD: <select id="arrivalDay" style="HEIGHT:25px">';
						for (var d=0; d<31; d++)
						{
							bookFields+='<option value="'+(d+1)+'">'+(d+1)+'</option>';
						}
						bookFields+='</select>';
						bookFields+='MM: <select id="arrivalMonth" style="HEIGHT:25px">';
						var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
						for (var d=0; d<12; d++)
						{
							bookFields+='<option value="'+(d+1)+'">'+months[d]+'</option>';
						}
						bookFields+='</select>';
						bookFields+='</div>';
					}
					else if (k.post.custom_fields['wpcf-booking'] == 2) { // Accommodation Request
						requestType = 2;
						bookFields+='<input id="name" required placeholder="Enter your Name"><input id="email" name="email" required placeholder="Enter your e-mail"><input id="phone" placeholder="Enter your phone number"/>';
						bookFields+='<div STYLE="clear:both;HEIGHT:3px;border-bottom:3px double #eee; margin-bottom:10px;"></div>';
						bookFields+='<div style="">Arrival Date:</div>';
						bookFields+='<div class="dateField">';
						bookFields+='DD: <select id="arrivalDay" style="HEIGHT:25px">';
						for (var d=0; d<31; d++)
						{
							bookFields+='<option value="'+(d+1)+'">'+(d+1)+'</option>';
						}
						bookFields+='</select>';
						bookFields+='MM: <select id="arrivalMonth" style="HEIGHT:25px">';
						var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
						for (var d=0; d<12; d++)
						{
							bookFields+='<option value="'+(d+1)+'">'+months[d]+'</option>';
						}
						bookFields+='</select>';
						bookFields+='YY: <select id="arrivalYear" style="HEIGHT:25px">';
						for (var d=0; d<15; d++)
						{
							bookFields+='<option value="'+(2012+d)+'">'+(2012+d)+'</option>';
						}
						bookFields+='</select>';
						bookFields+='</div>';
						bookFields+='<div style="">Departure:</div>';
						bookFields+='<div class="dateField">';
						bookFields+='DD: <select id="departureDay" style="HEIGHT:25px">';
						for (var d=0; d<31; d++)
						{
							bookFields+='<option value="'+(d+1)+'">'+(d+1)+'</option>';
						}
						bookFields+='</select>';
						bookFields+='MM: <select id="departureMonth" style="HEIGHT:25px">';
						var months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
						for (var d=0; d<12; d++)
						{
							bookFields+='<option value="'+(d+1)+'">'+months[d]+'</option>';
						}
						bookFields+='</select>';
						bookFields+='YY: <select id="departureYear" style="HEIGHT:25px">';
						for (var d=0; d<15; d++)
						{
							bookFields+='<option value="'+(2012+d)+'">'+(2012+d)+'</option>';
						}
						bookFields+='</select>';
						bookFields+='</div>';
					}
					
					var sStr = (room !== undefined) ? room + '-' + k.post.title : k.post.title;
					
					bookData = '<div class="bookBtn" onclick="wbp.sendEmail('+requestType+', \''+sStr+'\', \''+businessEmail+'\');">Send Request</div>';
					
					div.innerHTML = as.fastTouch(
					'<h1 STYLE="color:#f4772a; margin:0; font-size:18px; font-weight:normal;">'+sStr+'</h1>'+
					'<h2 STYLE="color:#bbb; margin:0 0 5px 0; font-size:18px; font-weight:normal;">Request Form</h2>'+
					'<div STYLE="clear:both;HEIGHT:3px;border-bottom:3px double #eee"></div>'+
					'<div class="formRequest">'+bookFields+'<div STYLE="clear:both;HEIGHT:3px;border-bottom:3px double #eee; margin-bottom:10px;"></div></div>'+bookData);
					
					as.SetVisible(as.$('#brandLetters'),  'none');
					as.SetVisible(as.$(   '#brandBack'), 'block');
					
					setTimeout(function()
					{
						as.$('#hideBookRequest1').innerText = 'RETHYMNO';
						as.$('#hideBookRequest2').innerText = k.post.title;
						
						wbp.switchLoader();
						as.switchTo('#bookRequest');
					},
					500);
				}
			);
		},
		sendEmail         : function(id, type, email)
		{
			var bodyText;
			
			if (id === 1)
			{
				bodyText = 'My name is '+as.$('#name').value+' and I would like to book a reservation for '+as.$('#persons').value+' person(s) on '+as.$('#arrivalDay').value+'/'+as.$('#arrivalMonth').value+' at '+as.$('#arrivalTime').value+' o\' clock. Please contact me by sending an e-mail to '+as.$('#email').value+' or call me at '+as.$('#phone').value+'.';
			}
			else
			if (id === 2)
			{
				bodyText = 'My name is '+as.$('#name').value+' and I would like to book this property from '+as.$('#arrivalDay').value+'/'+as.$('#arrivalMonth').value+'/'+as.$('#arrivalYear').value+' until '+as.$('#departureDay').value+'/'+as.$('#departureMonth').value+'/'+as.$('#departureYear').value+'. Please contact me by sending an e-mail to '+as.$('#email').value+' or call me at '+as.$('#phone').value+'.';
			}
			window.location.href = 'mailto:'+email+'?subject='+type+'&body='+bodyText;
		},
		infoContent       : function()
		{
			as.request
			(
				'Info Screens',
				'JSON',
				'http://app4u.gr/cms_reth/'+accent+'/api/taxonomy/get_terms/?taxonomy=info-categories',
				function(k)
				{
					var div = as.$('#scrInfo');
					var cat = [0, 1, 2, 3, 4];
					
					for (var d=0; d<as.GetLen(cat); d++)
					{
						div.innerHTML+=as.fastTouch('<div STYLE="color:#fff;BACKGROUND:url(\''+k[cat[d]].image_url+'\'); background-size:300px 100px; width:300px;HEIGHT:100px;MARGIN-bottom:10px" onclick="wbp.catInfoList('+k[d].id+')"><div STYLE="position:relative;DISPLAY:table;BACKGROUND:#f5772a;font-size:14px;font-WEIGHT:bold;stop:70px;left:-5px;top:70px;PADDING:3px 10px">'+k[cat[d]].title+'</div></div>');
					}
					as.SetHei(div, as.GetHei(div));
					new iScroll('wrapInfo');
				}
			);
		},
		catInfoList       : function(id)
		{
			if (!as.available()) return;
			wbp.switchLoader();
			
			as.request
			(
				'Cat Info List',
				'JSON',
				'http://app4u.gr/cms_reth/'+accent+'/api/taxonomy/get_taxonomy_posts/?taxonomy=info-categories&id='+id+'&order_by=title&order=ASC&include=id,title,thumbnail',
				function(k)
				{
					
					var div = as.$('#scrCatInfoList');
					var str = '<div id="catInfoListCalcHei">';
					
					for (var d=0; d<as.GetLen(k.posts); d++)
					{
						str+=as.fastTouch('<div STYLE="color:#777;BACKGROUND:#fff;font-size:15px;font-WEIGHT:bold;width:300px;-webkit-box-SIZING:border-box;HEIGHT:35px;line-HEIGHT:35px;border-bottom:1px solid #eee" onclick="wbp.entInfoDetails('+k.posts[d].id+');"><div STYLE="float:left;HEIGHT:35px">'+k.posts[d].title+'</div><div STYLE="float:RIGHT;color:#fff;BACKGROUND:url(\'assets/arr.PNG\') no-repeat;BACKGROUND-size:7px 13px; font-size:12px;text-ALIGN:center;width:7px;HEIGHT:20px;line-HEIGHT:20px;MARGIN-top:11px"></div></div>');
					}
					str+='</div>';
					div.innerHTML = str;
					
					
					
					/* Frame Size Calculation */
					as.SetHei(div, as.GetHei(as.$('#catInfoListCalcHei'))+25);
					if (as.GetHei(div) < 380) as.SetHei(div, 380);
					(catInfoListFlow === null) ? catInfoListFlow = new iScroll('wrapCatInfoList') : catInfoListFlow.refresh();
					/* End of Frame Size Calculation */
					
					
					
					as.SetVisible(as.$('#brandLetters'),  'none');
					as.SetVisible(as.$(   '#brandBack'), 'block');
					
					setTimeout(function()
					{
						as.$('#hideCatInfoList1').innerText = 'RETHYMNO';
						as.$('#hideCatInfoList2').innerText = k.term.title;
						
						wbp.switchLoader();
						as.switchTo('#catInfoList');
					},
					500);
				}
			);
		},
		entInfoDetails    : function(id)
		{
			if (!as.available()) return;
			wbp.switchLoader();
			
			as.request
			(
				'Ent Info Details',
				'JSON',
				'http://app4u.gr/cms_reth/'+accent+'/api/taxonomy/get_post/?post_type=info-item&id='+id+'&include=id,title,content,custom_fields&custom_fields=wpcf-phone,wpcf-email,wpcf-area,wpcf-address,wpcf-website,wpcf-info-photo-1,wpcf-info-photo-2,wpcf-info-photo-3,wpcf-info-photo-4,wpcf-info-photo-5',
				function(k)
				{
					function returnDetailsMap(d, i, p)
					{
						
						var str = (d != '') ? '<div class="infoSection" style="border-bottom:1px solid #eee;"><div STYLE="float:left;">'+d+'</div><div class="infoButton" onclick="if (as.available()) ' : '';
						
						if (str !== '')
						{
							switch(p)
							{
							case 'MAP':
								str+='wbp.showPlace(\''+i+'\')">'+p+'</div></div>';
								break;
							}
						}
						return str;
					}
					function returnDetails(d, p)
					{	
						var str = (d != '') ? '<div class="infoSection" style="border-bottom:1px solid #eee;"><div STYLE="float:left;">'+d+'</div><div class="infoButton" onclick="if (as.available()) ' : '';
						
						if (str !== '')
						{
							switch(p)
							{
							case 'CALL':
								str+='location.href=\'tel:'+d+'\'">'+p+'</div></div>';
								break;
							
							case 'MAIL':
								str+='location.href=\'mailto:'+d+'\'">'+p+'</div></div>';
								break;
							
							case 'VISIT':
								str+='window.open(\''+d+'\')">'+p+'</div></div>';
								break;
							}
						}
						return str;
					}
					
					var div = as.$('#scrEntInfoDetails');
					div.innerHTML = '';
					
					
					
					/* Content Creation */
					div.innerHTML+=as.fastTouch(
					'<div id="entInfoDetailsCalcHei"><div id="entInfoDetailsSlideShow" STYLE="BACKGROUND:url(\'assets/picLoader.GIF\') 142px 42px no-repeat;HEIGHT:100px;MARGIN-bottom:10px"></div><div STYLE="HEIGHT:110px"></div>'+
					'<div STYLE="clear:both;HEIGHT:3px;border-bottom:3px double #eee"></div>'+
					returnDetailsMap(k.post.custom_fields['wpcf-area'], k.post.id, 'MAP')+
					returnDetails(k.post.custom_fields['wpcf-phone'  ], 'CALL')+
					returnDetails(k.post.custom_fields['wpcf-email'  ], 'MAIL')+
					returnDetails(k.post.custom_fields['wpcf-website'], 'VISIT')+
					'<div class="content">'+k.post.content+'</div></div>');
					/* End of Content Creation */
					
					
					
					/* SlideShow Generation */
					var slideShowArr = [];
					
					for (var h=0; h<5; h++)
					{
						if (k.post.custom_fields['wpcf-info-photo-'+(h+1)].toString() !== '')
						{
							slideShowArr.push(k.post.custom_fields['wpcf-info-photo-'+(h+1)]);
						}
					}
					as.slideShowPlus('#entInfoDetailsSlideShow', slideShowArr);
					as.$('#entInfoDetailsSlideShow').innerHTML+='<IMG src="assets/zoom.PNG" onclick="wbp.rotateSlideShow(\'#entInfoDetailsSlideShow\')" STYLE="z-index:25;position:absolute;width:25px;top:5px;RIGHT:7px"/>';
					/* End of SlideShow Generation */
					
					
					
					/* Rotated SlideShow Mirror */
					var totalPics = 0;
					
					for (var d=0; d<5; d++)
					{
						var photo = k.post.custom_fields['wpcf-info-photo-'+(d+1)];
						
						if (photo != '')
						{
							as.$('#slideShowPlus1pic'+d).src = photo;
							as.SetVisible(as.$('#slideShowBullet'+(d+1)), 'block');
							totalPics++;
						}
						else
						{
							as.$('#slideShowPlus1pic'+d).src = null;
							as.SetVisible(as.$('#slideShowBullet'+(d+1)), 'none');
						}
					}
					as.$('#slideShowTotalPic').innerText = totalPics;
					
					as.$('#slideShowCurrentPic').innerText = 1;
					as.$('#slideshowLandscape').pos = 0;
					
					for (var d=0; d<5; d++)
					{
						as.SetBack(as.$('#slideShowBullet'+(d+1)), '#777');
						as.SetVisible(as.$('#slideShowPlus1pic'+d), 'none');
					}
					as.SetBack(as.$('#slideShowBullet1'), '#ddd');
					as.SetVisible(as.$('#slideShowPlus1pic0'), 'block');
					/* End of Rotated SlideShow Mirror */
					
					
					
					/* Frame Size Calculation */
					as.SetHei(div, as.GetHei(as.$('#entInfoDetailsCalcHei'))+40);
					(entInfoDetailsFlow === null) ? entInfoDetailsFlow = new iScroll('wrapEntInfoDetails') : entInfoDetailsFlow.refresh();
					/* End of Frame Size Calculation */
					
					
					
					as.SetVisible(as.$('#brandLetters'),  'none');
					as.SetVisible(as.$(   '#brandBack'), 'block');
					
					setTimeout(function()
					{
						as.$('#hideEntInfoDetails1').innerText = 'RETHYMNO';
						as.$('#hideEntInfoDetails2').innerText = k.post.title;
						
						wbp.switchLoader();
						as.switchTo('#entInfoDetails');
					},
					500);
				}
			);
		},
		offersContent     : function()
		{
			as.request
			(
				'Offers Screens',
				'JSON',
				'http://app4u.gr/cms_reth/'+accent+'/api/taxonomy/get_all_taxonomy_posts/?post_type=catalogue-item&order_by=post_modified&include=id,title,custom_fields&custom_fields=wpcf-offer-des',
				function(k)
				{
					
					if (k.count != 0)
					{
						function returnImage(i)
						{
							return (i != null) ? 'BACKGROUND:url(\''+i+'\');' : 'BACKGROUND:url(\'assets/noPic.JPG\');';
						}
					
						var div = as.$('#scrOffers');
						for (var d=0; d<k.count; d++) 
						{
							if (k.posts[d].custom_fields['wpcf-offer-des'] != '')
							{
								div.innerHTML+=as.fastTouch('<div STYLE="width:300px;-webkit-box-SIZING:border-box; border-bottom:1px solid #eee; PADDING:'+(d === 0 ? '0px' : '7px')+' 0px 7px 0px" onclick="wbp.entDetails('+k.posts[d].id+')"><h2 STYLE="color:#666;font-size:14px;font-WEIGHT:bold; margin:0 0 5px; 0">'+k.posts[d].title+'</h2><div STYLE="color:#888;">'+k.posts[d].custom_fields['wpcf-offer-des']+'</div></div>');
							} 
						}
					}
					else
					{
						div.innerHTML+='<div class="noRecords">No records found.</div>';
					}
						
					as.SetHei(div, as.GetHei(div));
					new iScroll('wrapOffers');
				}
			);
		},
		tourContent       : function()
		{
			as.request
			(
				'Tour Screens',
				'JSON',
				'http://app4u.gr/cms_reth/'+accent+'/api/taxonomy/get_all_taxonomy_posts/?post_type=visual-tour&include=id,title,content,custom_fields&custom_fields=wpcf-tour-photo,wpcf-tour-icon-top,wpcf-tour-icon-left,wpcf-tour-video,wpcf-tour-video-url,wpcf-tour-website-url',
				function(k)
				{
					var div = as.$('#scrTour');
					
					div.innerHTML = '';
					
					if (k.count != 0)
					{
						var tourPhotos = new Array();
						for (var d=0; d<k.count; d++)
						{
							tourPhotos[d]=k.posts[d].custom_fields['wpcf-tour-photo'];
						}
					
						as.slideShow('#tourSlideShow', '320', '480', tourPhotos, 'slide');
					
						div.innerHTML+=as.fastTouch(
						'<div id="tourSlideShow" STYLE="BACKGROUND:url(\'assets/picLoader.GIF\') 320px 480px no-repeat;HEIGHT:480px; position:absolute; left:0; MARGIN-bottom:10px"></div><div STYLE="HEIGHT:480px"></div>'
						)
					}
					else
					{
						div.innerHTML+='<div class="noRecords">No records found.</div>';
					}	
					
				}
			);
		},
		showMap           : function()
		{
			map = as.createMap('#mapCanvas', 12, [35.366866, 24.474728]);
			wbp.updateMapSections(0, true);
		},
		updateMapSections : function(section, all)
		{	
			as.request
			(
				'Update Map Sections',
				'JSON',
				'http://app4u.gr/cms_reth/'+accent+'/api/taxonomy/get_recent_posts/?post_type=catalogue-item&include=id,type,title,catalogue-categories,custom_fields&custom_fields=_wp_geo_longitude,_wp_geo_latitude,wpcf-address',
				function(k)
				{
					as.clearMarkers(map, markers);
					
					infowindow = as.createInfoWindow();
					
					markup    = [];
					markers   = [];
					positions = [];
					
					for (var d=0, h=0; d<k.count; d++)
					{
						if (as.GetChars(k.posts[d]['terms_id'][0]) === section || all !== undefined)
						{
							markup.push('<b>'+k.posts[d].title+'</b><br/>'+k.posts[d].custom_fields['wpcf-address']+'<br/><br/><b><div onclick="wbp.entDetails('+k.posts[d].id+')" STYLE="color:#f4772a">View Details ></div></b>');
							positions.push([k.posts[d].custom_fields['_wp_geo_latitude'], k.posts[d].custom_fields['_wp_geo_longitude']]);
							markers[h] = as.createMarker(map, positions[h], infowindow, markup[h]);
							
							h++;
						}
					}
				}
			);
		},
		showPlace         : function(id)
		{
			as.request
			(
				'Show Single Place',
				'JSON',
				'http://app4u.gr/cms_reth/'+accent+'/api/taxonomy/get_recent_posts/?post_type=catalogue-item&include=id,type,title,catalogue-categories,custom_fields&custom_fields=_wp_geo_longitude,_wp_geo_latitude,wpcf-address',
				function(k)
				{
					as.clearMarkers(map, markers);
					
					infowindow = as.createInfoWindow();
					
					markup    = [];
					markers   = [];
					positions = [];
					
					for (var d=0, h=0; d<k.count; d++)
					{
						if (as.GetChars(k.posts[d]['id']) === id.toString())
						{
							markup.push('<b>'+k.posts[d].title+'</b><br/>'+k.posts[d].custom_fields['wpcf-address']+'<br/><br/><b><div onclick="wbp.entDetails('+k.posts[d].id+')" STYLE="color:#f4772a">View Details ></div></b>');
							positions.push([k.posts[d].custom_fields['_wp_geo_latitude'], k.posts[d].custom_fields['_wp_geo_longitude']]);
							markers[h] = as.createMarker(map, positions[h], infowindow, markup[h]);
							
							h++;
							map.setCenter(new google.maps.LatLng(k.posts[d].custom_fields['_wp_geo_latitude'], k.posts[d].custom_fields['_wp_geo_longitude']));
							wbp.switchCat(2);
							return;
						}
					}
				}
			);
		},
		rotateSlideShow   : function(id)
		{
			var x = as.$('#slidesLandscape');
			as.SetVisible(x, 'block');
			as.SetBlend(x, 1);
		},
		unrotateSlideShow : function()
		{
			var x = as.$('#slidesLandscape');
			as.SetBlend(x, 0);
			as.SetVisible(x, 'none');
		},
		updateSearch      : function(keyword)
		{
			as.request
			(
				'Update Search',
				'JSON',
				'http://app4u.gr/cms_reth/'+accent+'/api/get_search_results/?search='+keyword+'',
				function(k)
				{
					var div = as.$('#scrSearch');
					div.innerHTML = '';
					
					function returnTypeUrl(type, id)
					{
						
						var postTypeUrl = '';
						
						switch(type) 
						{
							case 'catalogue-item' :
							postTypeUrl = 'onclick="wbp.entDetails('+id+')"';
							break;
							
							case 'info-item' :
							postTypeUrl = 'onclick="wbp.entInfoDetails('+id+')"';
							break;
						} 
											
						return postTypeUrl;
					}
					
					if (k.count != 0)
					{
						for (var d=0; d<k.count; d++)
						{
							div.innerHTML+=as.fastTouch('<div STYLE="color:#777;BACKGROUND:#fff;font-size:15px;font-WEIGHT:bold;width:300px;-webkit-box-SIZING:border-box;HEIGHT:35px;line-HEIGHT:35px; border-bottom:1px solid #eee;"'+returnTypeUrl(k.posts[d].type, k.posts[d].id)+'><div STYLE="float:left;HEIGHT:35px">'+k.posts[d].title+'</div><div STYLE="float:RIGHT;color:#fff;BACKGROUND:url(\'assets/arr.PNG\') no-repeat; background-size:7px 13px; font-size:12px;text-ALIGN:center;width:7px;HEIGHT:20px;line-HEIGHT:20px;MARGIN-top:11px"></div></div>');
						}
					}
					else
					{
						div.innerHTML+='<div class="noRecords" STYLE="line-height:320px;">No records found.</div>';
					}
					
					as.SetHei(div, as.GetHei(div));
					if (as.GetHei(div) < 380) as.SetHei(div, 380);
					new iScroll('wrapSearch');
				}
			);
		}
	};
}());

