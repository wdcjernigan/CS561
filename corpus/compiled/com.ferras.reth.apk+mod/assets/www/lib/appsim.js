var as = (function()
{
	var
	eh    = [],
	ev    = [],
	hash  = window.location.hash,
	animActive = false,
	bias  = 8,
	error =
	{
		init    : 'appsim needs four (4) parameters to initialize!',
		absTouch: 'appsim will attempt to run on a non-Touch capable device.'
	};
	
	if (hash === '')
	{
		window.location.hash = '_home';
	}
	
	return {
		////////////////////////
		///                  ///
		/// helper functions ///
		///                  ///
		////////////////////////
		
		$             : function(selector)
		{
			return (selector[0] === '#') ? document.querySelector(selector) : document.querySelectorAll(selector);
		},
		GetAccent     : function()
		{
			return navigator.language;
		},
		GetBlend      : function(e)
		{
			return parseInt(window.getComputedStyle(e, null).getPropertyValue('opacity'), 10);
		},
		GetChars      : function(ob)
		{
			return ob.toString();
		},
		GetDeviceHei  : function()
		{
			return window.innerHeight;
		},
		GetHead       : function()
		{
			return document.getElementsByTagName('head')[0];
		},
		GetHei        : function(e)
		{
			return parseInt(window.getComputedStyle(e, null).getPropertyValue('height'), 10);
		},
		GetLeft       : function(e)
		{
			return parseInt(window.getComputedStyle(e, null).getPropertyValue('left'), 10);
		},
		GetLen        : function(e)
		{
			return e.length;
		},
		GetMouseX     : function(e)
		{
			return e.pageX;
		},
		GetMouseY     : function(e)
		{
			return e.pageY;
		},
		GetPicHei     : function(e)
		{
			return e.height;
		},
		GetPicWidth   : function(e)
		{
			return e.width;
		},
		GetTopMost    : function()
		{
			var divs = as.$('div#appsim > div');
			
			for (d=0; d<as.GetLen(divs); d++)
			{
				if (as.GetLeft(divs[d]) === 0)
				{
					return divs[d];
				}
			}
		},
		GetTouchX     : function(e)
		{
			return e.targetTouches[0].pageX;
		},
		GetTouchY     : function(e)
		{
			return e.targetTouches[0].pageY;
		},
		GetVisible    : function(e)
		{
			return window.getComputedStyle(e, null).getPropertyValue('display');
		},
		GetXMLstate   : function(e)
		{
			return e.readyState;
		},
		
		SetBack       : function(e, v)
		{
			e.style.background = v;
		},
		SetBlend      : function(e, v)
		{
			e.style.opacity = v;
		},
		SetHei        : function(e, v)
		{
			e.style.height = v;
		},
		SetLeft       : function(e, v)
		{
			e.style.left = v;
		},
		SetOverflow   : function(e, v)
		{
			e.style.overflow = v;
		},
		SetPerspective: function(e, v)
		{
			e.style.webkitPerspective = v;
		},
		SetPopState   : function(fn)
		{
			window.onhashchange = fn;
		},
		SetPosition   : function(e, v)
		{
			e.style.position = v;
		},
		SetTop        : function(e, v)
		{
			e.style.top = v;
		},
		SetTransition : function(e, v)
		{
			e.style.webkitTransition = v;
		},
		SetTransform  : function(e, v)
		{
			e.style.webkitTransform = v;
		},
		SetVisible    : function(e, v)
		{
			e.style.display = v;
		},
		SetWidth      : function(e, v)
		{
			e.style.width = v;
		},
		SetXMLstate   : function(e, fn)
		{
			e.onreadystatechange = fn;
		},
		SetZindex     : function(e, v)
		{
			e.style.zIndex = v;
		},
		
		createLink    : function(rel, href)
		{
			var e = document.createElement('link');
			e.rel = rel;
			e.href = href;
			as.GetHead().appendChild(e);
		},
		createMeta    : function(name, content)
		{
			var e = document.createElement('meta');
			e.name = name;
			e.content = content;
			as.GetHead().appendChild(e);
		},
		createPic     : function()
		{
			return (new Image());
		},
		hasTouch      : function()
		{
			return 'ontouchstart' in window;
		},
		isOnline      : function()
		{
			return navigator.onLine;
		},
		standalone    : function()
		{
			return window.navigator.standalone;
		},
		writeConsole  : function(str)
		{
			console.log(str);
		},
		
		/////////////////////////////////////
		///                               ///
		/// core 'appsim.net' definitions ///
		///                               ///
		/////////////////////////////////////
		
		init         : function(callback, params)
		{
			as.createLink('STYLESHEET', 'lib/appsim.css');
			as.createMeta('viewport', 'width=320, user-scalable=Yes');
			as.createMeta('apple-mobile-web-app-capable', 'Yes');
			
			if (params !== undefined)
			{
				if (as.GetLen(params) === 4)
				{
					as.createLink('apple-touch-icon'+(params[1] ? '-precomposed' : ''), params[0]);
					as.createLink('apple-touch-startup-IMAGE', params[2]);
					as.createMeta('apple-mobile-web-app-status-bar-STYLE', params[3]);
				}
				else
				{
					as.writeConsole(error.init);
				}
			}
			document.addEventListener('DOMContentLoaded', function()
			{
				if (as.hasTouch())
				{
					var e = as.$('*');
					
					for (d=0; d<as.GetLen(e); d++)
					{
						if (e[d].onclick !== null)
						{
							e[d].setAttribute('ontouchend',
							as.GetChars(e[d].onclick).replace('function onclick(event) ', ''));
							e[d].removeAttribute('onclick');
						}
					}
					document.ontouchstart= function(e)
					{
						eh[0] = eh[1] = as.GetTouchX(e);
						ev[0] = ev[1] = as.GetTouchY(e);
					};
					document.ontouchmove = function(e)
					{
						eh[1] = as.GetTouchX(e);
						ev[1] = as.GetTouchY(e);
					};
				}
				else
				{
					as.writeConsole(error.absTouch);
					
					document.onmousedown = function(e)
					{
						eh[0] = eh[1] = as.GetMouseX(e);
						ev[0] = ev[1] = as.GetMouseY(e);
					};
					document.onmousemove = function(e)
					{
						eh[1] = as.GetMouseX(e);
						ev[1] = as.GetMouseY(e);
					};
				}
				if (!as.standalone()) //hide Address Bar when loaded in Browser Mode.
				{
					var k = document.documentElement;
					as.SetHei(k, (as.GetDeviceHei()*2)+'px');
					window.setTimeout(function() { window.scrollTo(0, 0); as.SetHei(k, as.GetDeviceHei()+'px'); }, 500);
				}
				as.SetPopState(function()
				{
					if (!animActive)
					{ 
						var hash = window.location.hash;
						as.forceSwitch();
						as.switchTo(hash === '' ? '#home' : hash.replace('_', ''));
					}
				});
				
				callback();
			},
			false);
		},
		fetchParams  : function()
		{
			var values = {};
			var p = window.location.href.replace(/[?&]+([^=&]+)=([^&]*)/gi,
			function(m, k, v) { values[k] = v; });
			
			return values;
		},
		request      : function(name, kind, u, callback)
		{
			var req    = new XMLHttpRequest();
			var remote = false; //(u.substr(0, 7) === 'http://') ? true : false;
//			var remote = (u.substr(0, 7) === 'http://') ? true : false;
			
			as.SetXMLstate(req, function()
			{
				if (as.GetXMLstate(req) === 4)
				{
					if (remote === true && req.status !== 200)
					{
						as.writeConsole('Can\'t complete "'+name+'", status '+req.status+'.');
						return;
					}
					switch(kind)
					{
					case 'HTML':
						callback(req.responseText);
						break;
						
					case 'XML':
						callback(req.responseXML);
						break;
						
					case 'JSON':
						callback(JSON === undefined ? eval(req.responseText) : JSON.parse(req.responseText));
						break;
					}
				}
			});
			req.open('GET', remote ? 'xdomain.php?u='+escape(u) : u, true);
			req.send();
		},
		available    : function()
		{
			//if an animation has not finished OR if the X-Y movement is not above the slack distance, do NOT execute further actions.
			return !(animActive || Math.abs(eh[0]-eh[1]) > bias || Math.abs(ev[0]-ev[1]) > bias);
		},
		forceSwitch  : function()
		{
			eh[0] = eh[1] = 0;
			ev[0] = ev[1] = 0;
		},
		fastTouch    : function(str)
		{
			return (as.hasTouch() ? str.replace(/onclick/gi, 'ontouchend') : str);
		},
		switchTo     : function(id, anim)
		{
			if (as.available())
			{
				var
				e1 = as.GetTopMost(),
				e2 = as.$(id);
				
				if (e1 === e2 || e1 === undefined || e2 === undefined)
				{
					return;
				}
				else
				{
					animActive = true;
					window.location.hash = '_'+e2.id;
					wbp.frameAndTitle(id);
				}
				
				if (anim === undefined)
				{
					as.SetLeft(e2, 0);
					as.SetLeft(e1, 10000);
					animActive = false;
					return;
				}
				
				function animEnded()
				{
					e1.removeEventListener('webkitAnimationEnd', animEnded, false);
					as.SetLeft(e1, 10000);
					e1.className = e2.className = '';
					animActive   = false;
				}
				e1.addEventListener('webkitAnimationEnd', animEnded, false);
				
				e1.className = anim+'-out';
				e2.className = anim+ '-in';
				as.SetLeft(e2, 0);
			}
		},
		swipe        : function(id, funcA, funcB)
		{
			var k = as.$(id);
			
			function doSwipe(fn)
			{
				as.forceSwitch();
				if (k.anim) { k.anim = false; fn(); }
			}
			k.anim    = false;
			k.capture = false;
			
			if (as.hasTouch())
			{
				k.ontouchstart= function(e)
				{
					k.swipeStart =
					k.swipeMove  =
					as.GetTouchX(e);
					
					k.anim =
					true;
				};
				k.ontouchmove = function(e)
				{
					if (Math.abs(k.swipeMove-k.swipeStart) > 5)
					{
						e.preventDefault();
					}
					k.swipeMove = as.GetTouchX(e);
					
					if (k.swipeMove-k.swipeStart > 30) { doSwipe(funcA); }
					else
					if (k.swipeMove-k.swipeStart <-30) { doSwipe(funcB); }
				};
			}
			else
			{
				k.onmousedown = function(e)
				{
					e.preventDefault();
					
					k.swipeStart =
					k.swipeMove  =
					as.GetMouseX(e);
					
					k.anim =
					k.capture =
					true;
				};
				k.onmousemove = function(e)
				{
					if (k.capture)
					{
						if (Math.abs(k.swipeMove-k.swipeStart) > 5)
						{
							e.preventDefault();
						}
						k.swipeMove = as.GetMouseX(e);
						
						if (k.swipeMove-k.swipeStart > 50) doSwipe(funcA);
						else
						if (k.swipeMove-k.swipeStart <-50) doSwipe(funcB);
					}
				};
				k.onmouseup   = function(e)
				{
					k.capture = false;
				};
			}
		},
		swipeVertical: function(id, funcA, funcB)
		{
			var k = as.$(id);
			
			function doSwipe(fn)
			{
				as.forceSwitch();
				if (k.anim) { k.anim = false; fn(); }
			}
			k.anim    = false;
			k.capture = false;
			
			if (as.hasTouch())
			{
				k.ontouchstart= function(e)
				{
					k.swipeStart =
					k.swipeMove  =
					as.GetTouchY(e);
					
					k.anim =
					true;
				};
				k.ontouchmove = function(e)
				{
					if (Math.abs(k.swipeMove-k.swipeStart) > 5)
					{
						e.preventDefault();
					}
					k.swipeMove = as.GetTouchY(e);
					
					if (k.swipeMove-k.swipeStart > 30) { doSwipe(funcA); }
					else
					if (k.swipeMove-k.swipeStart <-30) { doSwipe(funcB); }
				};
			}
			else
			{
				k.onmousedown = function(e)
				{
					e.preventDefault();
					
					k.swipeStart =
					k.swipeMove  =
					as.GetMouseY(e);
					
					k.anim =
					k.capture =
					true;
				};
				k.onmousemove = function(e)
				{
					if (k.capture)
					{
						if (Math.abs(k.swipeMove-k.swipeStart) > 5)
						{
							e.preventDefault();
						}
						k.swipeMove = as.GetMouseY(e);
						
						if (k.swipeMove-k.swipeStart > 50) doSwipe(funcA);
						else
						if (k.swipeMove-k.swipeStart <-50) doSwipe(funcB);
					}
				};
				k.onmouseup   = function(e)
				{
					k.capture = false;
				};
			}
		}
	};
}());

as.componentNumber = 0;
