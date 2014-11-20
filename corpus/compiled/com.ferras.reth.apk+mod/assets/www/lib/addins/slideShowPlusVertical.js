as.slideShowPlusVertical = function(id, pics)
{
	var div = as.$(id);
	div.uid = ++as.componentNumber;
	div.pos = 0;
	div.not = false;
	
	as.SetBack(div, '#000');
	as.SetZindex(div, 5);
	as.SetPosition(div, 'absolute');
	as.SetOverflow(div, 'hidden');
	as.SetWidth(div, 480);
	as.SetHei(div, 320);
	
	function doTransition(n)
	{
		var unique = '#slideShowPlus'+div.uid+'pic';
		var pic1   = as.$(unique+(div.pos+n));
		var pic2   = as.$(unique+(div.pos));
		
		as.$('#slideShowCurrentPic').innerText = div.pos+1;
		
		for (var d=0; d<5; d++)
		{
			as.SetBack(as.$('#slideShowBullet'+(d+1)), '#777');
		}
		as.SetBack(as.$('#slideShowBullet'+(div.pos+1)), '#ddd');
		
		as.SetVisible(pic2, 'block');
		as.SetVisible(pic1, 'none');
	}
	
	for (var d=0; d<5; d++)
	{
		div.innerHTML+='<IMG id="slideShowPlus'+div.uid+'pic'+d+'" src="" STYLE="DISPLAY:'+(d === 0 ? 'block' : 'none')+';position:absolute;width:480px"/>';
	}
	
	as.swipeVertical(id,
	function()
	{
		if ((div.pos-1) < 0 || as.$('#slideShowPlus'+div.uid+'pic'+(div.pos-1)).src == '') return;
		--div.pos;
		doTransition(+1);
	},
	function()
	{
		if ((div.pos+1) > 4 || as.$('#slideShowPlus'+div.uid+'pic'+(div.pos+1)).src == '') return;
		++div.pos;
		doTransition(-1);
	});
};
