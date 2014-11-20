as.slideShow = function(id, width, height, pics, anim, banner_id, banner_url)
{
	//alert(pics);
	// if (as.GetLen(pics) < 2)
	// {
	// 	as.writeConsole('as.slideShow: Picture(s) population is less than 2.');
	// 	return;
	// }
	var sample = as.createPic();
	sample.src = pics[0];
	sample.onload = function()
	{
		var k = as.$(id);
		k.uid = 'show'+(++as.componentNumber)+'pic';
		k.pos = 1;
		
		as.SetOverflow(k, 'hidden');
		as.SetPerspective(k, 1);
		// as.SetWidth(k, 300);
		// as.SetHei(k, (300*as.GetPicHei(sample))/as.GetPicWidth(sample)-100);
		
		as.SetWidth      (k, width);
		as.SetHei        (k, height);
		
		for (var d=0; d<as.GetLen(pics); d++)
		{
			if (banner_id) {
				k.innerHTML+='<div onclick="wbp.entDetails('+banner_id[d]+')"><IMG id="'+(k.uid+(d+1))+'" src="'+pics[d]+'"  width="'+width+'" height="'+height+'" STYLE="position:absolute;'+(d === 0 ? '' : 'DISPLAY:none')+'"></div>';
			}
			else
			{
				k.innerHTML+='<IMG id="'+(k.uid+(d+1))+'" src="'+pics[d]+'"  width="'+width+'" height="'+height+'" STYLE="position:absolute;'+(d === 0 ? '' : 'DISPLAY:none')+'">';	
			}
		}
		
		function transition(e1, e2, anim)
		{
			function end()
			{
				e2.removeEventListener('webkitAnimationEnd', end, false);
				as.SetVisible(e1, 'none');
				e1.className = e2.className = '';
			}
			e2.addEventListener('webkitAnimationEnd', end, false);
			
			e1.className = anim+'-out';
			e2.className = anim+ '-in';
			as.SetVisible(e2, 'block');
		}
		
		as.swipe
		(
			id,
			function()
			{
				if (--k.pos < 1)
				{
					k.pos++;
					return;
				}
				transition(as.$('#'+k.uid+(k.pos+1)), as.$('#'+k.uid+k.pos), anim+'-rev');
			},
			function()
			{
				if (++k.pos > as.GetLen(pics))
				{
					k.pos--;
					return;
				}
				transition(as.$('#'+k.uid+(k.pos-1)), as.$('#'+k.uid+k.pos), anim);
			}
		);
	};
};

as.slideShowPos = function(c, pos)
{
	if (as.available())
	{
		if (c.uid === undefined) //The user has not initialized the 'as.slideShow' function.
		{
			as.writeConsole('as.slideShow: Has not been initialized.');
			return;
		}
		as.SetVisible(as.$(c.uid+(c.pos)), 'none');
		as.SetVisible(as.$(c.uid+(c.pos=pos)), 'block');
	}
};
