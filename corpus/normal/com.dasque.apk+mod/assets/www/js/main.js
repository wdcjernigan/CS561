var DOTD_JSONP_URL = "http://kdotd.s3-website-us-east-1.amazonaws.com/dotd.jsonp?callback=?"
var TITLE = "Kindle Deal of the Day";
var gdeals={};
var Share_button_label = "Share";
var Buy_button_label = "Buy";
var share_string = 'Kindle Deal of the Day: ';

var Cordova_Ready = function() {

    console.log("PG Init");

    /*
    window.plugins.analytics.start("UA-25476755-1", function() {
        console.log("plugins.analytics.start: success");
        pageTrack();
    }, function(err) {
        console.log("plugins.analytics.start: failure");
        console.log(err);
    });
    */
    window.SocialShare = new SocialShare();
    console.log("Socialshare");
    console.log(window.SocialShare);
    console.log(JSON.stringify(window.SocialShare));
for (bar in window.SocialShare)
{
    console.log("window.SocialShare has property " + bar);
}



        window.plugins.analytics.start(
            function(){
                console.log("Start: success");
            },
            function(){
                console.log("Start: failure");
            }
    );

    pageTrack(TITLE+" - Main Screen");


    console.log("device.uuid: " + device.uuid);

    // 47928ec68de07755 is my Galaxy Nexus (VZ) UUID
    if (device.uuid == "47928ec68de07755" || device.uuid == "4a567b11df7b2f5d") myPhone();

    /*
    document.getElementById("platform").innerHTML = device.platform;
    document.getElementById("version").innerHTML = device.version;
    document.getElementById("uuid").innerHTML = device.uuid;
    document.getElementById("pg_init").innerHTML=(new Date().getTime());
    */



};
function eventTrack(category,action,event) {

        window.plugins.analytics.trackEvent(
                category,
                action,
                event,
                 1,
                function(){
                    console.log("Track: success "+category+"."+action+"."+event);
                }, 
                function(){
                    console.log("Track: failure "+category+"."+action+"."+event);
                }
    );

}
function pageTrack(screen) {
    window.plugins.analytics.trackPageView(screen, function() {
        console.log("Page Track: success on "+screen);
    }, function() {
        console.log("Page Track: failure "+screen);
    });
}


function myPhone() {
    console.log("On one of my phones!");
}


var preventBehavior = function(e) {
    e.preventDefault();
};


function fail(msg) {
    alert(msg);
}

function close() {
    var viewport = document.getElementById('viewport');
    viewport.style.position = "relative";
    viewport.style.display = "none";
}

function init() {

    document.addEventListener("deviceready", Cordova_Ready, true);
}

$(document).delegate("#main_page", "pageinit", function(event) {

    console.log("jQuery Mobile Home page Init");

    $("#main_page h1 small").html(TITLE);
    
    $.mobile.allowCrossDomainPages = true;
    $.support.cors = true;


    load_data();

});


function load_data() {

    console.log("Loading data from:" + DOTD_JSONP_URL);

    var jqxhr = $.getJSON(DOTD_JSONP_URL, {
        dataType: 'jsonp'
    });

}

function dotd(deals) {
    console.log("Processing JSONP call results "+deals.ITEMS.length+" deals" );
    console.dir(deals.ITEMS);
    gdeals = deals;

    var justOneOffer = (deals.ITEMS.length == 1)
    var i = 0;
    var deal_HTML = '';

    $('#cset').html("");

    for (deal_index in deals.ITEMS)
    {

        var deal = deals.ITEMS[deal_index];

        var font_size_for_name = (deal.NAME.length > 30) ? "50" : "100";

        var deal_HTML = "";

        if (justOneOffer) deal_HTML += '<div>';
        else deal_HTML += '<div data-role="collapsible" data-collapsed="' + (i != 0) + '">\n';

        if (!justOneOffer) deal_HTML += '\t<h3>' + deal.PROGRAM + '</h3>\n';

        deal_HTML += '<div id="deal-' + i + '" class="center-wrapper">\n';

        deal_HTML += '<fieldset class="ui-grid-a">';

        deal_HTML += '<div class="ui-block-a"><div id="book_image">';

        deal_HTML += '<a rel="external" data-ajax="false" href="' + deal.SHORT_URL + '"><img src=' + deal.IMG_URL + '></a>\n'
        deal_HTML += '</div>\n';
        deal_HTML += '</div>\n';

        deal_HTML += '<div class="ui-block-b"><h2 class="deal_name"><a rel="external" data-ajax="false" href="' + deal.SHORT_URL + '" style="font-size:' + font_size_for_name + '%;">' + deal.NAME + '</a></h2>\n';
        
        if (deal.RATING) deal_HTML += '<span class="'+deal.RATING+'" title="4.5 out of 5 stars"></span>';

        deal_HTML += '<p class="product_price"><strong>' + deal.PRICE;

        if (deal.DISCOUNT) deal_HTML += ' (' + deal.DISCOUNT + ')';

        deal_HTML += '</strong></p>';

        var bBOOK = (deal.PROGRAM.indexOf('Kindle') !== -1);

        deal_HTML += '<a href="'+deal.SHORT_URL+'" data-mini="false" class="buy_on_amazon" data-role="button" data-inline="true" data-theme="e" data-ajax="false" data-rel="external">Buy'+((bBOOK)?" Book":"")+'</a>\n';
        
        // deal_HTML += '<br><a href="'+deal.SHORT_URL+'" data-icon="star" data-mini="true" class="share_on_facebook" data-role="button" data-inline="true"  data-ajax="false" data-rel="external" index="'+deal_index+'" price="'+deal.PRICE+'">'+Share_button_label+''+((bBOOK)?" Book":"")+'</a>\n';

        deal_HTML += '<br/><button data-mini="true" data-theme="b" data-icon="star" data-inline="true"  class="share_on_facebook" index="'+deal_index+'" price="'+deal.PRICE+'">'+Share_button_label+'</button>';

        deal_HTML += '</div>\n';

        deal_HTML += '</fieldset>';

        deal_HTML += '<p id="product_descr" style="text-align: left;"><small>' + deal.DESCR + '</small></p>\n';


        deal_HTML += '</div>\n';

        deal_HTML += '</div>\n';

        $('#cset').append(deal_HTML);

        i++;

    }

    $('#cset').collapsibleset('refresh');

    $('.buy_on_amazon').button();

    $(".buy_on_amazon").click(function() { 

       var index = $(this).attr("index")


        eventTrack("Button","Click","Buy_item_"+index);
     });

    $('.share_on_facebook').button().buttonMarkup({ theme: "f"});

    $(".share_on_facebook").click(function() {
            console.log("Handler for .click() called.");

            eventTrack("Button","Click","Share");


            var index = $(this).attr("index")

            console.log("Index --> "+index);
            console.log("Index --> "+gdeals.ITEMS[index].PRICE);
            console.log("Index --> "+gdeals.ITEMS[index].SHORT_URL);
            console.log("Index --> "+gdeals.ITEMS[index].NAME);

            eventTrack("Button","Click","Share_item_"+index);


             window.SocialShare.social({
                message: share_string+gdeals.ITEMS[index].NAME+'('+gdeals.ITEMS[index].PRICE+') at: '+gdeals.ITEMS[index].SHORT_URL
            

            },

            function(msg) {
                console.log("Success at Social.");

            },

            function(fail) {
                console.log("Failed at social. "+fail);

            });

        });

    /*
            $font_size_for_name = ($deal.NAME.length>40)?"70":"100";

            $('#main_page h2').html('<a rel="external" data-ajax="false" href="'+$deal.URL+'" style="font-size:'+$font_size_for_name+'%;">'+$deal.NAME+'</a>');
            
            $('#main_page #book_image').html('<a rel="external" data-ajax="false" href="'+$deal.URL+'"><img src='+$deal.IMG_URL+'></a>');
            
            $('#main_page #product_price').html("<strong style='color:#900'>"+$deal.PRICE+" ("+$deal.DISCOUNT+")</strong>");
            
            $('#main_page #product_descr').html("<small>"+$deal.DESCR+"</small>");

            $('#main_page .buy_on_amazon').attr( "href" , $deal.URL);
            
            
            $DOTD_EXTERNAL_PAGE_URL = $deal.DOTD_EXTERNAL_PAGE_URL;*/

}