var js={};
(function(){ 
js={  // datos:({titulo: request.controlador}),
		ajax:function(){ var req = false; try { req = new XMLHttpRequest(); }catch(err1){ try{ req = new ActiveXObject("Msxml2.XMLHTTP"); }catch(err2){ try{ req = new ActiveXObject("Microsoft.XMLHTTP"); }catch(err3){ req = false; } } } return req; },
		ver:function(es){document.write(es);},
		liveClock:function(id){ var currentTime = new Date ( ); var currentHours = currentTime.getHours ( ); var currentMinutes = currentTime.getMinutes ( ); var currentSeconds = currentTime.getSeconds ( );
			currentMinutes = ( currentMinutes < 10 ? "0" : "" ) + currentMinutes; currentSeconds = ( currentSeconds < 10 ? "0" : "" ) + currentSeconds; var timeOfDay = ( currentHours < 12 ) ? "AM" : "PM"; currentHours = ( currentHours > 12 ) ? currentHours - 12 : currentHours; currentHours = ( currentHours == 0 ) ? 12 : currentHours; var currentTimeString = currentHours + ":" + currentMinutes + ":" + currentSeconds + " " + timeOfDay; document.getElementById(id).firstChild.nodeValue = currentTimeString; },
		subir:function(){ window.addEventListener('DOMContentLoaded',function(){ $("#IrArriba").hide();
			$(function () { $(window).scroll(function () { if ($(this).scrollTop() > 200) { $('#IrArriba').fadeIn();
			} else { $('#IrArriba').fadeOut(); } }); $('#IrArriba a').click(function () { $('body,html').animate({ scrollTop: 0 }, 1000); return false; }); });},false); }
};

}).apply(js);


js.subir()


window.addEventListener('DOMContentLoaded',function(){

    var minimo
    var maximo
    var pvdmin = {'Precio M&iacute;n':0,'US$0.00':0,'US$15,000':15000,'US$30,000':30000,'US$45,000':45000,'US$60,000':60000,'US$100,000':100000,'US$150,000':150000,'US$200,000':200000,'US$250,000':250000,'US$300,000':300000,'US$500,000':500000,'US$1,000,000':1000000}

    var pvdmax = {'Precio M&aacute;x':999999999,'US$15,000':15000,'US$30,000':30000,'US$45,000':45000,'US$60,000':60000,'US$100,000':100000,'US$150,000':150000,'US$200,000':200000,'US$250,000':250000,'US$300,000':300000,'US$500,000':500000,'US$1,000,000':1000000,'+US$2,000,000':999999999999999999}

    var padmin={'Precio M&iacute;n':0,'US$0.00':0,'US$150':150,'US$300':300,'US$500':500,'US$1,000':1000,'US$1,500':1500,'US$2,000':2000,'US$2,500':2500,'US$3,000':3000,'US$5,000':5000,'US$10,000':10000}
    var padmax={'Precio M&aacute;x':99999999999999999999,'US$150':150,'US$300':300,'US$500':500,'US$1,000':1000,'US$1,500':1500,'US$2000':2000,'US$2500':2500,'US$3000':3000,'US$5000':5000,'US$10,000':10000,'+US$15,000':9999999999999999999999}

    var pvpmin = {'Precio M&iacute;n':0,'RD$0.00':0,'RD$500,000':500000,'RD$1,000,000':1000000,'RD$1,500,000':1500000,'RD$2,000,000':2000000,'RD$3,000,000':3000000,'RD$5,000,000':5000000,'RD$7,000,000':7000000,'RD$10,000,000':10000000,'RD$15,000,000':15000000,'RD$25,000,000':25000000}

    var pvpmax = {'Precio M&aacute;x':9999999999,'RD$500,000':500000,'RD$1,000,000':1000000,'RD$1,500,000':1500000,'RD$2,000,000':2000000,'RD$3,000,000':3000000,'RD$5,000,000':5000000,'RD$7,000,000':7000000,'RD$10,000,000':10000000,'RD$15,000,000':15000000,'RD$25,000,000':25000000,'+RD$50,000,000':999999999999999999}
    var papmin = {'Precio M&iacute;n':0,'RD$0.00':0,'RD$5,000':5000,'RD$10,000':10000,'RD$15,000':15000,'RD$20,000':20000,'RD$25,000':25000,'RD$30,000':30000,'RD$50,000':50000,'RD$75000':75000,'RD$100,000':100000,'RD$150,000':150000,'RD$200,000':200000}

    var papmax = {'Precio M&aacute;x':9999999999,'RD$5,000':5000,'RD$10,000':10000,'RD$15,000':15000,'RD$20,000':20000,'RD$25,000':25000,'RD$30,000':30000,'RD$50,000':50000,'RD$75,000':750000,'RD$100,000':100000,'RD$150,000':150000,'RD$200,000':200000,'+RD$300,000':999999999999999999}


    var smin=$('select[name="preciomin"]');
    var smax=$('select[name="preciomax"]');
    $("#alquiler").click(function() {
        $("#venta").removeAttr('checked');
    });

    $("#venta").click(function() {
        $("#alquiler").removeAttr('checked');
    });

    $("#pesos").click(function() {
        $("#dolares").removeAttr('checked');
    });

    $("#dolares").click(function() {
        $("#pesos").removeAttr('checked');
    });
    /**************************************************************/
    $("#alquiler").add("#venta").add("#pesos").add("#dolares").click(function() {
        var venta = $("#venta");
        var dolares = $("#dolares");
        var pesos = $("#pesos");
        var alquiler = $("#alquiler");
        if(venta.is(':checked') && dolares.is(':checked'))
        {
            minimo=pvdmin;
            maximo=pvdmax;
        } else if(venta.is(':checked') && pesos.is(':checked'))
        {
            minimo=pvpmin;
            maximo=pvpmax;
        } else if(alquiler.is(':checked') && pesos.is(':checked'))
        {
            minimo=papmin;
            maximo=papmax;

        }else if(alquiler.is(':checked') && dolares.is(':checked'))
        {
            minimo=padmin;
            maximo=padmax;
        }else{

            minimo=pvpmin;
            maximo=pvpmax;
        }
    });
    /*************************************************************/
    $("#alquiler").add("#venta").add("#pesos").add("#dolares").click(function() {
        $('option',smin).remove();
        $('option',smax).remove();

        for (var key in minimo) {

            $(smin).append("<option value=\""+minimo[key]+"\">"+key+"</option>");

        }

        for (var key in maximo) {

            $(smax).append("<option value=\""+maximo[key]+"\">"+key+"</option>");

        } });
},false);
//***************************************************************************************
// cambio:function(l,ide,url,o,page){ var j=js.ajax(); var rd=parseInt(Math.random()*99999999); var vinculo=url+"?l="+l+"&rand="+rd+"&p="+page+"&o="+o; j.open("GET",vinculo,true); j.onreadystatechange=j.onreadystatechange=function(){ if (j.readyState==4){ if (j.status==200){ var http=j.responseText; document.getElementById(ide).innerHTML= http; }  } } j.send(null); }

//********************************************************************
// function from2(id,ide,url,id2,propiedad,region,ciudad,sector,cuarto,bano,venta,moneda,preciomin,preciomax,page){
//     var mi_aleatorio=parseInt(Math.random()*99999999);//para que no guarde la página en el caché...
//     var vinculo=url+"?id="+id+"&rand="+mi_aleatorio+"&page="+page+"&id2="+id2+"&propiedad="+propiedad+"&region="+region+"&ciudad="+ciudad+"&sector="+sector+"&cuarto="+cuarto+"&bano="+bano+"&venta="+venta+"&moneda="+moneda+"&preciomin="+preciomin+"&preciomax="+preciomax;
// //alert(vinculo);
//     miPeticion.open("GET",vinculo,true);
//     miPeticion.onreadystatechange=miPeticion.onreadystatechange=function(){
//         if (miPeticion.readyState==4)
//         {
//             if (miPeticion.status==200)
//             {
//                 var http=miPeticion.responseText;
//                 document.getElementById(ide).innerHTML= http;

//             }
//         }
//     }
//     miPeticion.send(null);

// }
/*************
$(document).load(function(){
    url = window.location.pathname;
    url = url.split('/');
    if(url[2]=='simple'){ 
        document.getElementById('spropiedades').style.color = '#da823b';
    }else if(url[2]==""){
document.getElementById('sinicio').style.color = '#da823b';
    }else{
       document.getElementById('s'+url[2]).style.color = '#da823b';
    }
        /*********************/
    //document.forms["form"].reset();
    /*********************************/
    // window.addEventListener("keyup",kPress,false);
    // function kPress(e)
    // {
    //     var c=e.keyCode||e.charCode;
    //     if (c==44) window.location.assign("http://www.google.com")
    // }
    /****************************************************************/
//      });
function obtiene_http_request()
{
    var req = false;
    try
    {
        req = new XMLHttpRequest(); /* p.e. Firefox */
    }
    catch(err1)
    {
        try
        {
            req = new ActiveXObject("Msxml2.XMLHTTP");
            /* algunas versiones IE */
        }
        catch(err2)
        {
            try
            {
                req = new ActiveXObject("Microsoft.XMLHTTP");
                /* algunas versiones IE */
            }
            catch(err3)
            {
                req = false;
            }
        }
    }
    return req;
}
var miPeticion = obtiene_http_request();
//***************************************************************************************
function from(id,ide,url,id2,page){
    var mi_aleatorio=parseInt(Math.random()*99999999);
    var vinculo=url+"?id="+id+"&rand="+mi_aleatorio+"&page="+page+"&id2="+id2;
//alert(vinculo);
    miPeticion.open("GET",vinculo,true);
    miPeticion.onreadystatechange=miPeticion.onreadystatechange=function(){
        if (miPeticion.readyState==4)
        {
            if (miPeticion.status==200)
            {

                var http=miPeticion.responseText;
                document.getElementById(ide).innerHTML= http;

            }
        }
    }
    miPeticion.send(null);

}