var pictureSource;
// picture source
var destinationType;
// sets the format of returned value 
var firedalert = false;
var myScroll;
// Wait for PhoneGap to connect with the device
//
document.addEventListener("deviceready", onDeviceReady, false);

// PhoneGap is ready to be used!
//
function onDeviceReady() {
    pictureSource = navigator.camera.PictureSourceType;
    destinationType = navigator.camera.DestinationType;
    document.addEventListener("menubutton", onMenuKeyDown, false);  
    
}
////// Settings
// settings
function onMenuKeyDown(){
    var nav = $('#settings');	 
    if(!nav.hasClass('active')) {
        nav.addClass('active');
    } else {
        nav.removeClass('active');
    }
    return false;
}


// Called when a photo is successfully retrieved
//
function onPhotoDataSuccess(imageData) {
    var largeImage = document.getElementById('largeImage');
    largeImage.src = "data:image/jpeg;base64," + imageData;
    //largeImage.style.display = 'block';
    dostuff(imageData);
}

// Called when a photo is successfully retrieved
//
function onPhotoURISuccess(imageURI) {
    var largeImage = document.getElementById('largeImage');
    largeImage.src = imageURI;
    //largeImage.style.display = 'block';	  	 
    dostuff(false);
}

// A button will call this function
//
function capturePhoto() {
	$('#spinwrap').fadeIn(500);
    // Take picture using device camera and retrieve image as base64-encoded string
    navigator.camera.getPicture(onPhotoDataSuccess, onFail, {
        quality: 50
    });
}

// A button will call this function
//
function getPhoto(source) {
	$('#spinwrap').fadeIn(500);	
    // Retrieve image file location from specified source
    navigator.camera.getPicture(onPhotoURISuccess, onFail, {
        quality: 50,
        destinationType: destinationType.FILE_URI,
        sourceType: source
    });
}

// Called if something bad happens.
// 
function onFail(message) {
	$('#spinwrap').fadeOut(500);	
                navigator.notification.alert(
                    message,  // message
                    false,         // callback
                    'Oh Noes',            // title
                    'Continue'                  // buttonName
                );    
}

////////////////////////////////////////////////////////////////////////////////////////////////////

/* Creates array from native objects */
function createArray(nativeObject) {
    var array = [];
    // iterate backwards ensuring that length is an UInt32
    for (var i = nativeObject.length >>> 0; i--;) {
        array[i] = nativeObject[i];
    }
    return array;
}

function getAverageColor(col1, col2) {
    var r = Math.round((col1[0] + col2[0]) / 2);
    var g = Math.round((col1[1] + col2[1]) / 2);
    var b = Math.round((col1[2] + col2[2]) / 2);
    return [r, g, b];
}

function averageColorFor(data) {
    var result = [0, 0, 0],
    total_pixels = data.length / 4;

    for (var i = 0; i <= total_pixels; i += 4) {
        result[0] += data[i];
        result[1] += data[i + 1];
        result[2] += data[i + 2];
    }

    for (var i = 0; i < 3; i++) {
        result[i] = Math.round(result[i] / total_pixels) * 4;
        result[i] = (result[i] > 255) ? 255: result[i];
    }

    return result;
}

function areSimilarColors(col1, col2,segment) {
	var dval = Math.floor(segment*.75);
    var delta = (70-dval);
    if ((Math.abs(col2[0] - col1[0]) <= delta) && (Math.abs(col2[1] - col1[1]) <= delta) && (Math.abs(col2[2] - col1[2]) <= delta))
        return true;
    else
        return false;
}

function rgbToHex(array) {
    var hex = [];
    for (var i = 0; i < 3; i++) {
        var bit = (array[i] - 0).toString(16);
        hex.push((bit.length == 1) ? '0' + bit: bit);
    }
    return '#' + hex.join('');
}

function rgbcmyk(array) {
    var computedC = 0;
    var computedM = 0;
    var computedY = 0;
    var computedK = 0;
    //remove spaces from input RGB values, convert to int
    var r = parseInt(('' + array[0]).replace(/\s/g, ''), 10);
    var g = parseInt(('' + array[1]).replace(/\s/g, ''), 10);
    var b = parseInt(('' + array[2]).replace(/\s/g, ''), 10);

    if (r == null || g == null || b == null || isNaN(r) || isNaN(g) || isNaN(b)) {
        // alert ('Please enter numeric RGB values!');
        return;
    }
    if (r < 0 || g < 0 || b < 0 || r > 255 || g > 255 || b > 255) {
        //  alert ('RGB values must be in the range 0 to 255.');
        return;
    }

    // BLACK
    if (r == 0 && g == 0 && b == 0) {
        computedK = 1;
        return [0, 0, 0, 1];
    }

    computedC = 1 - (r / 255);
    computedM = 1 - (g / 255);
    computedY = 1 - (b / 255);

    var minCMY = Math.min(computedC, Math.min(computedM, computedY));
    computedC = (computedC - minCMY) / (1 - minCMY);
    computedM = (computedM - minCMY) / (1 - minCMY);
    computedY = (computedY - minCMY) / (1 - minCMY);
    computedK = minCMY;
    // tidy it up
    computedC = Math.floor(computedC * 100);
    computedM = Math.floor(computedM * 100);
    computedY = Math.floor(computedY * 100);
    computedK = Math.floor(computedK * 100);

    return 'C:' + computedC + ' M:' + computedM + ' Y:' + computedY + ' K:' + computedK;
}

function buildColorPalette(colorsArray) {
    var htmloutput = '';
    var prevCol = [0, 0, 0],
    uniqueColors = 0;
    //,
    // container = document.createElement('DIV');
    //container.className = 'b-palette-wrap';
    for (var i = 0; i < colorsArray.length; i++) {
        var col = colorsArray[i];

        if ($("input[name=colorFormat]:checked").val() == 'hex') {
            htmloutput = htmloutput + '<a href="#color">';
            htmloutput = htmloutput + '<h4 style="background:rgb(' + col[0] + ',' + col[1] + ',' + col[2] + ')"></h4>' + rgbToHex(col) + '';
            htmloutput = htmloutput + '<em class="ico clrcopy" rel="' + rgbToHex(col) + '"><img src="images/copy.png"/></em>';
            htmloutput = htmloutput + '<div class="swcheck"><input type="checkbox" value="' + rgbToHex(col) + '" rel="' + rgbToHex(col) + ' | rgb(' + col[0] + ',' + col[1] + ',' + col[2] + ') | ' + rgbcmyk(col) + '" id="color-' + i + '" name="check" checked="checked" /><label for="color-' + i + '"></label></div>';
            htmloutput = htmloutput + '<span>rgb(' + col[0] + ',' + col[1] + ',' + col[2] + ')<br/>' + rgbcmyk(col) + '</span></a>';
            htmloutput = htmloutput + '<hr/>';
        } else if ($("input[name=colorFormat]:checked").val() == 'rgb') {
            htmloutput = htmloutput + '<a href="#color">';
            htmloutput = htmloutput + '<h4 style="background:rgb(' + col[0] + ',' + col[1] + ',' + col[2] + ')"></h4>' + rgbToHex(col) + '';
            htmloutput = htmloutput + '<em class="ico clrcopy" rel="' + rgbToHex(col) + '"><img src="images/copy.png"/></em>';
            htmloutput = htmloutput + '<div class="swcheck"><input type="checkbox" value="' + rgbToHex(col) + '" rel="' + rgbToHex(col) + ' | rgb(' + col[0] + ',' + col[1] + ',' + col[2] + ') | ' + rgbcmyk(col) + '" id="color-' + i + '" name="check" checked="checked" /><label for="color-' + i + '"></label></div>';
            htmloutput = htmloutput + '<span>' + rgbcmyk(col) + '<br/>rgb(' + col[0] + ',' + col[1] + ',' + col[2] + ')</span></a>';
            htmloutput = htmloutput + '<hr/>';
        } else {
            htmloutput = htmloutput + '<a href="#color">';
            htmloutput = htmloutput + '<h4 style="background:rgb(' + col[0] + ',' + col[1] + ',' + col[2] + ')"></h4>' + rgbcmyk(col);
            htmloutput = htmloutput + '<em class="ico clrcopy" rel="' + rgbcmyk(col) + '"><img src="images/copy.png"/></em>';
            htmloutput = htmloutput + '<div class="swcheck"><input type="checkbox" value="' + rgbToHex(col) + '" rel="' + rgbToHex(col) + ' | rgb(' + col[0] + ',' + col[1] + ',' + col[2] + ') | ' + rgbcmyk(col) + '" id="color-' + i + '" name="check" checked="checked" /><label for="color-' + i + '"></label></div>';
            htmloutput = htmloutput + '<span>rgb(' + col[0] + ',' + col[1] + ',' + col[2] + ')<br/>' + rgbToHex(col) + '</span></a>';
            htmloutput = htmloutput + '<hr/>';
        }

        if (!areSimilarColors(prevCol, col)) {
            prevCol = col;
            uniqueColors++;
        }

    }


    return {
        'html': htmloutput,
        'unique': uniqueColors,
        'total': colorsArray.length
    };
}

function dostuff(imageData) {

    var largeImage = document.getElementById('largeImage');

    var targetEl = document.getElementById('drop');
    targetEl.innerHTML = 'Processing...';

    var image = new Image();
    // Create new img element  
    if (imageData.length) {
        image.src = imageData;
    } else {
        image.src = largeImage.src;
        // Set source path 		  
        }

    image.onload = function() {
        // Image is loaded. Let's start working with data.
        // Prepare canvas and clear container element
        targetEl.innerHTML = '';
        targetEl.className = '';

        var canvas = document.createElement('canvas');
        var ctx = canvas.getContext('2d');

        // Reduce image size to fit container. Right now it's just twice as small.
        canvas.width = image.width / 3 >> 0;
        canvas.height = image.height / 3 >> 0;
        ctx.drawImage(image, 0, 0, canvas.width, canvas.height);

        var colorSensitivity = $("input[@name=colorSensitivity]:checked").val();

        var averageColors = [],
        uniqueColors = [],
        rows = colorSensitivity,
        cells = colorSensitivity,
        cellWidth = (canvas.width / cells) >> 0,
        cellHeight = (canvas.height / rows) >> 0;

        // Devide the original image into slices and get average color for each slice.
        for (var i = 0; i < rows; i++) {
            for (var j = 0; j < cells; j++) {
                var colorArray = ctx.getImageData(cellWidth * j, cellHeight * i, cellWidth, cellHeight);
                var averageColor = averageColorFor(colorArray.data);
                averageColors.push(averageColor);
            }
        }
        // Iterate until array is empty
        while (averageColors.length > 0) {
            var baseCol = averageColors.shift(),
            avgColor = baseCol,
            k = 0;
            while (true) {
                if (averageColors.length > k) {
                    var secondCol = averageColors[k];
                    if (areSimilarColors(baseCol, secondCol,colorSensitivity)) {
                        avgColor = getAverageColor(avgColor, averageColors.splice(k, 1)[0]);
                    } else
                        k++;
                } else
                    break;
            }
            uniqueColors.push(avgColor);
            // targetEl.innerHTML = targetEl.innerHTML +  ',' + avgColor;			
            }

        // add buttons 
        var extrahtml = '';
        extrahtml = extrahtml + '<br/><br/><h1><br/>Share Ticked Colors</h1>';

        extrahtml = extrahtml + '<a href="#color">';    
        extrahtml = extrahtml + 'Share as plain text';
        extrahtml = extrahtml + '<em class="ico sendplain"><img src="images/plain.png"/></em>';
        extrahtml = extrahtml + '<span>Text only</span></a>';
        extrahtml = extrahtml + '<hr/>';            
        
        extrahtml = extrahtml + '<a href="#color">';    
        extrahtml = extrahtml + 'Email as color HTML';
        extrahtml = extrahtml + '<em class="ico sendhtml"><img src="images/color.png"/></em>';
        extrahtml = extrahtml + '<span>For use in gmail only</span></a>';
        extrahtml = extrahtml + '<hr/>'; 



        document.getElementById('outputact').innerHTML = '<h1>' + buildColorPalette(uniqueColors).total + ' Colors Matched</h1>' + (buildColorPalette(uniqueColors).html) + extrahtml;
        targetEl.appendChild(canvas);

    /* SEND EMAIL CODE */
    
    $('.sendplain').bind('click', function(event) {
        var plaintxt= '';
        var ptcount = 0;
        $('.swcheck input:checked').each(function(){
            plaintxt = plaintxt + "color" + ptcount + ":\r\n" + $(this).attr('rel').split(' | ').join('\r\n') + "\r\n\r\n"; 
            ptcount ++;
        })
        window.plugins.share.show({
            subject: 'clrpickr palette',
            text: plaintxt + 'palette by clrpickr android app, avaliable at http://goo.gl/MQTFZ',
            type:'txt'},
            function() {}, // Success function
            function() {alert('Share failed')} // Failure function
        );
    })
    
    $('.sendhtml').bind('click', function(event) {
        
        navigator.notification.confirm(
            'Please select Gmail when prompted, any other email applications will not correctly format message',  // message
            onConfirmHTML,              // callback to invoke with index of button pressed
            'IMPORTANT',            // title
            'Ok,Cancel'          // buttonLabels
        );
    }) 
    
    function onConfirmHTML(button) {
        if(button==1){
            var htmltxt = '<h1>clrpickr color palette</h1><br/>';
            var htcount = 0;

            $('.swcheck input:checked').each(function(){
                htmltxt = htmltxt + "<font size=\"5\" color=\"" + $(this).val() + "\">&#9608;&#9608;&#9608;&#9608;</font> Color " + htcount + "<br/><font size=\"3\">" + $(this).attr('rel').split(' | ').join('<br/>') + "</font><br/><br/>"; 
                htcount ++;
            })  
            htmltxt = htmltxt + "<small>palette by clrpickr android app, avaliable at http://goo.gl/MQTFZ</small>"; 

            window.plugins.share.show({
                subject: 'clrpickr palette',
                text: htmltxt,
                type:'html'},
                function() {}, // Success function
                function() {alert('Share failed')} // Failure function
            );            
        }
    }
    
    
    /* END SEND EMAIL CODE */
    

        function hascopied(r) {
            if (firedalert == false) {
                // alert("'" + r + "' has been copied to clipboard");
                navigator.notification.alert(
                    "'" + r + "' has been copied to clipboard",  // message
                    false,         // callback
                    'Copied',            // title
                    'Thanks'                  // buttonName
                );

                firedalert = true;
            }
        }
        $('.clrcopy').bind('click', function(event) {
            firedalert = false;
            var copied = $(this).attr('rel');
            window.plugins.clipboardManager.copy(copied, function(r) {
                hascopied(r);
            }, function(e) {
                navigator.notification.alert(
                    e,  // message
                    false,         // callback
                    'Oh Noes',            // title
                    'Continue'                  // buttonName
                );
                });
        });

        //$('#drop').hide();
        $('#imgoutput').css({
            'height': ((buildColorPalette(uniqueColors).total * 80) + 250)
            });
        // output window
        $('#imgoutputwrap').css({
            'height': (window.innerHeight - 40) + 'px'
        });

        $("body").jScroll("remove");
        $("#imgoutputwrap").jScroll();

        $('#imgoutputwrap').bind('touchend', function(event) {
            return false;
            event.preventDefault();
        })

		//fadeout spiiner
		$('#spinwrap').fadeOut(500);	


        // go to output window
        currentWin = 2;
        scrollWindows(false, false, 2);

    };

    // });
    
    
   
    
    }