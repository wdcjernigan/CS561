Message = {
  items:{
  price_msg:[ '表示金額','List Price' ],
  per_set_msg:['割引率を選択','select rate'],
  after_price_msg:['割引後','Price'],
  save_price_msg:['割引金額','Save Price'],
  howto_calc_msg:['使い方：計算','how to calculate'],
  howto_calc_detail:['1. 表示金額ボックスをタップして金額（割引前）を入力してください。<br /><br />2. % off以下から、割引率%を選択してください。<br /><br />3. 割引後ボックスに割引後金額が表示され、割引金額ボックスに割引される金額が表示されます。<br /><br />例：3割引(30%off)の計算を行う場合。金額を入力後、30をタップするだけです！<br />注：小数点第三位を四捨五入して金額を表示しております。<br />','1. tap List Price Box.<br />2. select save rate.<br />3. calculate Price,Save Price !<br />'],
  howto_history_msg:['使い方：保存','how to save'],
  howto_history_detail:['1. 計算後、保存ボタンをタップすると履歴に保存されます。<br /><br />  2. 履歴は、30件まで保存されます。<br /><br />  3. 履歴、左部をタップすると金額、割引率をフォームへ取り込みます。<br /><br />  4. 履歴、右×をタップすると履歴から削除されます。<br /><br />','1. tap SAVE button, save now price to history.<br />2. limit 30 items.<br />3. tap left, load price data.<br />4. tap right[x], delete the item.'],
  history_msg:['履歴','history'],
  salecalc_info:['salecalc は、割引計算を行う無料アプリです。セール・バーゲン・アウトレットな>どお買い物に。GroundRoadTechnologyでは、ちょっと便利な無料アプリを提供させていただきます。普段の生活の中で、こんなアプリあったら便利!などの御意見をいただければ>幸いです。','salecalc is free app to calculate Price ! Ground Road Technology, LLC is Japanese company. We are creating some apps, web services. Thank you for your using our app :)']
  },
  update: function(){
    $.each( Message.items , function( k,v ){
      if( $('#'+k )){
        $('#'+k).html(v[Numkey.codeType]);
      }
    });
  }
};
Numkey = {
  init: function(){
    var code = window.localStorage.getItem("initCode");
    if( !code ){
      code = 0;
    }
    Numkey.changeCodeSelect( code );
    Numkey.changeCode( code );
  },
  changeCodeSelect: function( code ){
    var c = $('select#code');
    c[0].selectedIndex = code;
    c.selectmenu('refresh');
  },
  changeCode:function(){
    var c = $('select#code');
    var op = c[0];
    var code = op.options[op.selectedIndex].value;
    window.localStorage.setItem("initCode", code);
    Numkey.codeType = code;
    Numkey.code = Numkey.codeBase[code];
    Numkey.nowNum = '0';
    Persale.changeSlider(true);
    Numkey.setDisplay('price',Numkey.nowNum);
    Message.update();
  },
codeBase: {
  0:'¥',
  1:'$'
},
codeType: 0,
code: '¥',
nowNum:'0',
offNum: function(off){
  if( off.match(/[-\+]/) ){
    nf = $('#slider').val();
    switch( off ){
      case '-1':
        off = parseInt(nf) -1;
        break;
      case '-5':
        off = parseInt(nf) -5;
        break;
      case '+1':
        off = parseInt(nf) +1;
        break;
      case '+5':
        off = parseInt(nf) +5;
        break;
    }
  }
  if( off <=100 && off >=0 ){
  $('#slider').val(off);
  var e = jQuery.Event("keyup");
  e.which = 13; // # Some key code value
  $("#slider").trigger(e);
  $("#slider").trigger('onchange');
  // Persale.changeSlider();
  }
},
addNum: function(num){
  var tmpNum = '';
  if( Numkey.nowNum == '0' ){
  }else{
    tmpNum = Numkey.nowNum;
  }
  if( num.match(/[0-9]/) && Numkey.nowNum.match(/[^0-9]/)){
    var ary = Numkey.nowNum.split('.');
    if( ary[1].length >= 2 ){
    console.log(ary[1].length);
      return;
    }
  }
  if( num.match(/[0-9]/) || ( Numkey.nowNum != '0' && num == '00') ){
    Numkey.nowNum = tmpNum + num;
  }else if( num.match(/x/) ){
    if(Numkey.nowNum != '0'){
      var tmp = tmpNum.substr(0, tmpNum.length-1);
      if(tmp == '') tmp = '0';
      Numkey.nowNum = tmp;
    }
  }else if( num.match(/c/) ){
    Numkey.nowNum = '0';
  }else if( num.match(/e/) ){
    Numkey.nowNum = parseFloat(Numkey.nowNum).toString();
    Persale.changeSlider();
    $('#numkey').fadeOut();
  }else if( num=='.' && !tmpNum.match(/¥./)){
    if( Numkey.codeType == 0 ){
     return;
    }
    Numkey.nowNum += '.';
  }
  if( Numkey.nowNum.match(/[^0-9]/)){
    Numkey.nowNum = Numkey.nowNum.toString();
  }else{
    Numkey.nowNum = parseFloat(Numkey.nowNum).toString();
  }
  Numkey.setDisplay('price',Numkey.nowNum);
},
setDisplay:function(id,price){
  var dispNum = '';
  var pary = price.split('.');
  if( pary[0].length > 3 ){
    var ccnt = parseInt(pary[0].length/3);
    var amari = pary[0].length%3;
    for( i=0;i<ccnt;i++){
      if( i == 0 ){
        dispNum += pary[0].substr( 0, amari );
      }
      if( i != 0 || amari !=0 ){
        dispNum += ',';
      }
      dispNum += pary[0].substr( (i*3)+amari, 3 );
    }
  }else{
    dispNum = pary[0];
  }
  if( price.match(/[^0-9]/)){
    dispNum += '.';

    if( typeof( pary[1] ) === 'string' ){
      dispNum += pary[1];
    }
  }
    $('#'+id).html( Numkey.code +' '+ dispNum );
  }
};
Persale={
getRealPrice: function( per, price ){
     var real_price = parseFloat(price) * (100-per)/100 ;
     var xlimit = 0.4444;
     var xplus = 1;
     if( Numkey.codeType==1 ){
       xlimit = 0.004444;
       xplus = 0.01;
     }
     if( real_price > parseFloat(real_price)+ xlimit ){
       real_price = parseFloat(real_price)+xplus;
     }else{
       real_price = parseFloat(real_price);
     }
     return real_price;
 },
 changeSlider:function(force){
   var per = $('#slider').val();
   if( Numkey.nowNum != '0' || force == true ){
     var real_price = Persale.getRealPrice(per, Numkey.nowNum );
     var discount = parseFloat(Numkey.nowNum) - real_price;
     if( Numkey.codeType == 1 ){
       real_price = real_price.toFixed(2);
       discount = discount.toFixed(2);
     }else{
       real_price = real_price.toFixed();
       discount = discount.toFixed();
     }
     Numkey.setDisplay('real_price',real_price.toString());
     Numkey.setDisplay('discount_price', discount.toString());
   }
 }
};
History = {
    list:[],
    showList: function(){
      if( History.list.length > 0 ){
        $('#history').html('<li data-role="list-divider" id="history_msg">'+Message.items.history_msg[Numkey.codeType]+'</li>');
        console.log(JSON.stringify(History.list));
        $.each( History.list, function(key,value){
            var dd = new Date();
            dd.setTime( value.time );
            var mon = dd.getMonth()+1;
            var h = dd.getHours();
            var m = dd.getMinutes();
            if (h < 10) { h = "0" + h; }
            if (m < 10) { m = "0" + m; }
        var html = '<li><a href="javascript:History.revert(\''+value.time+'\');"><h4>';
        if( !value.hasOwnProperty('codeType') && typeof( value.codeType ) !== 'number' ){
          value.codeType=0;
        }
        var real_price = Persale.getRealPrice(value.discount, value.price );
        if( Numkey.codeType == 1 ){
          real_price = real_price.toFixed(2);
        }else{
          real_price = real_price.toFixed();
        }
        html +=
          Numkey.codeBase[value.codeType] + ' ' + value.price+
          ' '+value.discount+'% off = '+
          Numkey.codeBase[value.codeType] + ' ' + real_price +  
          '</h4><p>'+
          mon + '/'+dd.getDate() + ' ' + h + ':'+ m + '</p>'+
          '</a><a href="javascript:History.del(\''+value.time+'\');">x</a>'+
          '</li>';
        $('#history').append(html);

            });
      }else{
        $('#history').html('');
      }
      $('#history').listview('refresh');
    },
    add:function(){
      if( Numkey.nowNum > 0 && $('#slider').val() > 0 ){
      var item = {
        price: Numkey.nowNum,
        discount: $('#slider').val(),
        codeType: Numkey.codeType,
        time: (new Date).getTime()
      };
      History.list.unshift( item );
      if( History.list.length > 30 ){
        History.list.pop();
      }
      window.localStorage.setItem("history", JSON.stringify(History.list));
      History.showList();
          }
    },
    get: function(){
      History.list = JSON.parse(window.localStorage.getItem("history")); 
      if( !History.list ) History.list = [];
      return History.list;
    },
    del: function(deltime){
      var list = [];
      var nlist = History.get();
      $.each(nlist, function(key,value){
          if( value.time != deltime ){
          list.push(value);
          }
          });
      History.list = list;
      window.localStorage.setItem("history", JSON.stringify(History.list));
      History.showList();
    },
    revert: function(retime){
      var nlist = History.get();
      $.each(nlist, function(key,value){
          if( value.time == retime ){
            if( !value.hasOwnProperty('codeType') && typeof( value.codeType ) !== 'number' ){
              console.log(JSON.stringify(value));
              value.codeType = 0;
            }
            Numkey.changeCodeSelect( value.codeType );
            Numkey.changeCode( value.codeType );
            Numkey.offNum( value.discount );
            Numkey.nowNum = value.price;
            Numkey.setDisplay('price',Numkey.nowNum);
            Persale.changeSlider();
            return ;
          }
          });
    }
};
