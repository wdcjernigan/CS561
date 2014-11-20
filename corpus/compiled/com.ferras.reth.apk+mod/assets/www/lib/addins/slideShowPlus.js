as.slideShowPlus = function(id, pics)
{
	var div = as.$(id);
	div.uid = ++as.componentNumber;
	div.pic = as.createPic();
	div.pos = 0;
	div.not = false;
	
	as.SetZindex(div, 5);
	as.SetPosition(div, 'absolute');
	as.SetOverflow(div, 'hidden');
	as.SetWidth(div, 300);
	as.SetHei(div, 100);
	
	function doTransition(n)
	{
		var unique    = '#slideShowPlus'+div.uid+'pic'; div.not = true;
		var direction = (n === 1) ? 'slide-rev-' : 'slide-';
		
		var pic1 = as.$(unique+(div.pos+n));
		var pic2 = as.$(unique+(div.pos));
		
		function animEnded()
		{
			pic2.removeEventListener('webkitAnimationEnd', animEnded, false);
			as.SetVisible(pic1, 'none');
			div.not = false;
		}
		as.SetVisible(pic2, 'block');
		pic1.className = direction+'out';
		pic2.className = direction+ 'in';
		pic2.addEventListener('webkitAnimationEnd', animEnded, false);
	}
	
	div.pic.onload = function()
	{
		for (var d=0; d<as.GetLen(pics); d++)
		{
			div.innerHTML+='<IMG id="slideShowPlus'+div.uid+'pic'+d+'" src="'+pics[d]+'" STYLE="DISPLAY:'+(d === 0 ? 'block' : 'none')+';position:absolute;width:300px;top:-50px"/>';
		}
		as.swipe(id,
		function()
		{
			if (div.not || (div.pos-1 < 0)) return;
			--div.pos;
			doTransition(+1);
		},
		function()
		{
			if (div.not || (div.pos+1 > as.GetLen(pics)-1)) return;
			++div.pos;
			doTransition(-1);
		});
	};
	div.pic.src = pics[0];
};
