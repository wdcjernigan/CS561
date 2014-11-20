function humanDay(date)
{
	var showNiceDay = '';
	var d_names = new Array("Sunday", "Monday", "Tuesday",
	"Wednesday", "Thursday", "Friday", "Saturday");

	var m_names = new Array("January", "February", "March", 
	"April", "May", "June", "July", "August", "September", 
	"October", "November", "December");

	var d = date;
	var curr_day = d.getDay();
	var curr_date = d.getDate();
	var sup = "";
	if (curr_date == 1 || curr_date == 21 || curr_date ==31)
	   {
	   sup = "st";
	   }
	else if (curr_date == 2 || curr_date == 22)
	   {
	   sup = "nd";
	   }
	else if (curr_date == 3 || curr_date == 23)
	   {
	   sup = "rd";
	   }
	else
	   {
	   sup = "th";
	   }
	var curr_month = d.getMonth();
	var curr_year = d.getFullYear();

	showNiceDay = d_names[curr_day] + " " + curr_date + ""+ sup + " " + m_names[curr_month] + " " + curr_year;
	
	return showNiceDay;
}


var cb_showArrivalDate = function(date)
{
	document.getElementById("date1").innerHTML = humanDay(date);	
}

var cb_showDepartureDate = function(date)
{
	document.getElementById("date2").innerHTML = humanDay(date);
}

var cb_showDepartureDateTime = function(date)
{
	var d = date;
	var curr_hour = d.getHours();
	var curr_min = d.getMinutes();
	document.getElementById("dateTime").innerHTML = humanDay(date) + " - " + curr_hour + " : " + curr_min;
}


var showArrivalDate = function(mode)
{
	plugins.datePicker.show({date: new Date(), mode: mode, allowOldDates: false }, cb_showArrivalDate);
}
var showDepartureDate = function(mode)
{
	plugins.datePicker.show({date: new Date(), mode: mode, allowOldDates: false }, cb_showDepartureDate);
}

var showArrivalDateTime = function(mode)
{
	plugins.datePicker.show({date: new Date(), mode: mode, allowOldDates: false }, cb_showDepartureDateTime);
}
