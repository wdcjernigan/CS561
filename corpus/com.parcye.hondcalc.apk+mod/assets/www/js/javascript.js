$(document).ready(function(){
	$('#bereken-button').click(function(e) {
		e.preventDefault();
		var neededKCal = (Math.pow($('#gewicht').val(), 0.73) * 70.5);
		if ($('#volwassen').val() == 'ja') neededKCal = neededKCal * 2;
		var koolhydratenProcent = 100 - $('#eiwitten').val() - $('#vetten').val() - $('#vezels').val() - $('#mineralen').val() - $('input[name=vochtgehalte]:checked').val();
		
		
		var kcalEiwit = $('#eiwitten').val() * 40;
		var kcalVet = $('#vetten').val() * 90;
		var kcalKoolhydraat = koolhydratenProcent * 40;
		
		var kcalVoer = kcalEiwit + kcalVet + kcalKoolhydraat;
		
		var calGram = kcalVoer / 1000;
		
		alert('Gram brokken : ' + neededKCal/calGram);
	});
	
	$(document).delegate("#resultaten", "pagebeforeshow", function() {
		var neededKCal = (Math.pow($('#gewicht').val(), 0.73) * 70.5);
		if ($('#volwassen').val() == 'ja') neededKCal = neededKCal * 2;
		var koolhydratenProcent = 100 - $('#eiwitten').val() - $('#vetten').val() - $('#vezels').val() - $('#mineralen').val() - $('input[name=vochtgehalte]:checked').val();
		
		
		var kcalEiwit = $('#eiwitten').val() * 40;
		var kcalVet = $('#vetten').val() * 90;
		var kcalKoolhydraat = koolhydratenProcent * 40;
		
		var kcalVoer = kcalEiwit + kcalVet + kcalKoolhydraat;
		
		var calGram = kcalVoer / 1000;
		
		$('#txt_brokken').text(Math.round(neededKCal/calGram));
		$('#txt_hond').text(($('#volwassen').val() == 'ja') ? 'volwassen ' + $('input[name=geslacht]:checked').val() : $('input[name=geslacht]:checked').val() + ' pup');
		$('#txt_verbruik').text(Math.round(neededKCal));
		$('#txt_kcalkg').text(Math.round(kcalVoer));
		
		var prcn_eiwit = Math.round((kcalEiwit / kcalVoer) * 100);
		$('#txt_prcn_eiwit').text(prcn_eiwit);
		var prcn_vet = Math.round((kcalVet / kcalVoer) * 100);
		$('#txt_prcn_vet').text(prcn_vet);
		$('#txt_prcn_rest').text(100 - prcn_eiwit - prcn_vet);
	});
});
