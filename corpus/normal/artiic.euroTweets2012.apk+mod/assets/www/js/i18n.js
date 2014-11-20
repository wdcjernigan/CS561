function _(s) {
	

	if (typeof(i18n)!='undefined' && i18n[s]) {
		
		return i18n[s];
	}
	return s;
}

function translate() {
	
	$('[key]').each(function (i) {
		
        $(this).html(_($(this).attr("key")));
    });
}