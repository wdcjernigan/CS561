var WIN_WIDTH = window.innerWidth;
var currentWin = 0;
var maxWindows = 3;
var speed = 500;

var wdw;

var swipeOptions = {
    triggerOnTouchEnd: false,
    swipeStatus: swipeStatus,
    allowPageScroll: "vertical",
    threshold: 50
}

$(function() {

    $("nav a:eq(" + currentWin + ")").addClass('active');

    // defaults
    maxWindows = $('#wdw .window:visible').length;
    wdw = $("#wdw");
    $('#wdw .window').width(window.innerWidth);
    $('#wdw').height(window.innerHeight - 40);
    $('#wdw .window').css({
        'min-height': (window.innerHeight - 40) + 'px'
    });

    $('#wdw').width(window.innerWidth * $('#wdw .window').length);
    // set swipe
    wdw.swipe(swipeOptions);

    // add nav ontop
    $("nav a").click(function() {
        scrollWindows(false, false, $(this).index());
        currentWin = $(this).index();
    })

    // nav triange
    var menuarrow = $("nav a:eq(" + currentWin + ")").offset().left + ($("nav a:eq(" + currentWin + ")").width() / 2) - 5;
    $('nav em').animate({
        'left': menuarrow + 'px'
    }, 1000)

    });

function swipeStatus(event, phase, direction, distance) {
    if (phase == "move" && (direction == "left" || direction == "right")) {
        var duration = 0;
        if (direction == "left") {
            scrollWindows((WIN_WIDTH * currentWin) + distance, duration);
        } else if (direction == "right") {
            scrollWindows((WIN_WIDTH * currentWin) - distance, duration);
        }
    } else if (phase == "cancel") {
        scrollWindows(WIN_WIDTH * currentWin, speed);
    } else if (phase == "end") {
        if (direction == "right") {
            previousWindow();
        } else if (direction == "left") {
            nextWindow();
        }
    }
}

function previousWindow() {
    currentWin = Math.max(currentWin - 1, 0);
    scrollWindows(WIN_WIDTH * currentWin, speed, currentWin);
}

function nextWindow() {
    currentWin = Math.min(currentWin + 1, maxWindows - 1);
    scrollWindows(WIN_WIDTH * currentWin, speed, currentWin);
}
function scrollWindows(distance, duration, currentWin) {
    if (distance == false) {
        distance = 0 + (currentWin * WIN_WIDTH);
    }
    if (duration == false) {
        duration = speed;
    }
    maxWindows = $('#wdw .window:visible').length;

    // $('.window').html(currentWin);
    wdw.css("-webkit-transition-duration", (duration / 1000).toFixed(1) + "s");
    var value = (distance < 0 ? "": "-") + Math.abs(distance).toString();
    wdw.css("-webkit-transform", "translate3d(" + value + "px,0px,0px)")

        if (typeof(currentWin) != "undefined") {
        var menuarrow = $("nav a:eq(" + currentWin + ")").offset().left + ($("nav a:eq(" + currentWin + ")").width() / 2) - 5;
        $('nav em').animate({
            'left': menuarrow + 'px'
        }, 1000)
            $("nav a").removeClass('active');
        $("nav a:eq(" + currentWin + ")").addClass('active');
    };
}