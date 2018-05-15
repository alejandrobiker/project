// Validaciones de Campos Solo Numero

function solonumeros(e){
 key = e.keyCode || e.which;
    tecla = String.fromCharCode(key);
    numero = "0123456789";
    especiales = [ 8, 9 ];

    tecla_especial = false
    for(var i in especiales) {
        if(key == especiales[i]) {
            tecla_especial = true;
            break;
        }
    }

    if(numero.indexOf(tecla) == -1 && !tecla_especial)
        return false;
}

//Ocultar y desolcultar las claves
function ocultarpass(){

  $(document).ready(function () {
   $('#show-pass').click(function () {
    if ($('#pass-2').attr('type') === 'text') {
     $('#pass-2').attr('type', 'password');
    } else {
     $('#pass-2').attr('type', 'text');
    }
   });
  });

}

// Validacion de solo letra, con la primera letra en Mayuscula

function sololetras(e,solicitar){
  // Admitir solo letras
  tecla = (document.all) ? e.keyCode : e.which;
  if (tecla==8) return true;
  patron =/[\D\s]/;
  te = String.fromCharCode(tecla);
  if (!patron.test(te)) return false;
  // No amitir espacios iniciales y convertir 1ª letra a mayúscula
  txt = solicitar.value;
  if(txt.length==0 && te==' ') return false;
  if (txt.length==0 || txt.substr(txt.length-1,1)==' ') {
    solicitar.value = txt+te.toUpperCase();
    return false;
  } 
}

function solomayuscula(e,solicitar){
  // Admitir solo letras
  key = e.keyCode || e.which;
    tecla = String.fromCharCode(key).toLowerCase();
    letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
    especiales = [8, 9];

    tecla_especial = false
    for(var i in especiales) {
        if(key == especiales[i]) {
            tecla_especial = true;
            break;
        }
    }

    if(letras.indexOf(tecla) == -1 && !tecla_especial)
        return false;

  tecla = (document.all) ? e.keyCode : e.which;
  if (tecla==8) return true;
  patron =/[\D\s]/;
  te = String.fromCharCode(tecla);

  // No amitir espacios iniciales y convertir 1ª letra a mayúscula
  txt = solicitar.value;
  if(txt.length==0 && te==' ') return false;
  if (txt.length==0) {
    solicitar.value = txt+te.toUpperCase();
    return false;
  } 
}

//Validacion de email
function validar(){

  var email = document.frm_usuario_registro.email.value;

    if(!(/^[-\w.%+]{1,64}@(?:suscerte\.)(?:gob\.ve)$/.test(email))) {
        alert("Introduzca un email valido, se admite solo correos: @suscerte.gob.ve");
        document.frm_usuario_registro.email.focus();
        return false;
    }
}

function validar_editar(){
  
  var email = document.frm_modificar_usuario.email.value;

    if(!(/^[-\w.%+]{1,64}@(?:suscerte\.)(?:gob\.ve)$/.test(email))) {
        alert("Introduzca un email valido, se admite solo correos: @suscerte.gob.ve");
        return false;
    }
}

// Calendario

function Reloj(){



  setTimeout("Reloj()",1000);
  
  $('#modificarn').modal('show');
  $('#modificars').modal('show');
  $("#buscar").modal('show');
  
}

function sesion(){
  var cedula = document.formularioSesion.cedula.value;
  var clave = document.formularioSesion.clave.value;

  $.ajax({

    type:"POST",
    url:"utilidad/php/Sesion.php",
    data:{cedula:cedula,clave:clave}
  }).done(function(msg){

    $("#ver").show();
    $("#ver").html(msg);

  })


}

function imagenes(e) {//utilizar en un evento de formulario o en la entrada
       value=e.value;
   var archivo = e.files; // captura de los archivos file


          var navegador = window.URL || window.webkitURL;
          
  for(x=0; x<archivo.length; x++)
  {
            
            var size = archivo[x].size;
            var type= archivo[x].type;
            var name = archivo[x].name;

              if(size> 1024*1024){
              $("#queva").show();
              
              $("#queva").append("<p style='color:red'>El Archivo "+name+" supera el maximo permitido</p>");
              
            
              
              
              }else if (type == 'image/jpeg' && type == 'image/jpg' && type == 'image/png' && type == 'image/gif'){
                
                
          $("#queva").append("<p style='color:red'>El Archivo "+name+" no es del tipo de documento</p>");  

                $("#queva").show();

                }else{
                  
                  var objet_url = navegador.createObjectURL(archivo[x]);
                  
            
        
        
                    
                  $(".mostrar").html("<img src="+objet_url+" width='200' height='200' > " + "<h2> "+   +"</h2>");
                  
                  }
                  
                  
        

  }

    if( !value.match(/\.(jpg)|(gif)|(png)|(bmp)|(pdf)$/)){//aquí tus extensiones
      $("#changes").hide();
       $("#change").show();
        $("#change").html('<span class="icon-clear"> esto no es una imagen</span>');  //acciones como el enfoque, no validan ...
        return false;
    }
    else {//right extension
      $("#change").hide();
      $("#changes").show();

       $("#changes").html('<span class="icon-check">Documeto Valido</span>\n'+ name );
       return true;
    }


}


/*
 function docume(e) {//utilizar en un evento de formulario o en la entrada
       value=e.value;
   var archivo = e.files; // catura de los archivos file


          var navegador = window.URL || window.webkitURL;
          
  for(x=0; x<archivo.length; x++)
  {
            
            
                  
                  var objet_url = navegador.createObjectURL(archivo[x]);
                  
            
        
        
                    
                  $(".mostrar").html("<img src="+objet_url+" width='130' height='110' > ");               
                  
        

  }

    if( !value.match(/\.(doc)|(docx)|(odt)|(ppt)|(txt)|(pdf)$/)){//aquí tus extensiones
       $("#file_valido").hide();
       $("#file_novalido").show();
        $("#file_novalido").html('<span class="icon-clear"> esto no es un documento</span>');  //acciones como el enfoque, no validan ...
        return false;
    }
    else {//right extension
      $("#file_novalido").hide();
      $("#file_valido").show();

       $("#file_valido").html('<span class="icon-check"> Valido</span>\n'+name);
       return true;
    }


}


; 
*/


 function videos(e) {//utilizar en un evento de formulario o en la entrada
     var  value=e.value;
   var archivo = e.files; // catura de los archivos file

 

    if( !value.match(/\.(webm)|(avi)|(mp4)|(pdf)|(mkv)|(dvd)|(wmv)|(mov)|(MP4)|(MPEG-4)$/)){//aquí tus extensiones
      $("#file_valido_tutorial").hide();
       $("#file_novalido_tutorial").show();
        $("#file_novalido_tutorial").html('<span class="icon-clear"> Esto no es un video.</span>');  //acciones como el enfoque, no validan ...
        return false;
    }
    else {//right extension
      $("#file_novalido_tutorial").hide();
      $("#file_valido_tutorial").show();

       $("#file_valido_tutorial").html('<span class="icon-check">Video Valido</span>\n'+value);
       return true;
    }


}

function documentos(e){
// var archivos = document.getElementById('file').files;
   var archivos = e.files; // catura de los archivos file
   var value = e.value;

   var navegador = window.URL || window.webkitURL;


      var size = archivos.size;
            var tipo= archivos.type;
            var name = archivos.name;


       if( !value.match(/\.(doc)|(docx)|(odt)|(ppt)|(txt)|(pdf)|(d)$/)){//aquí tus extensiones
       $("#file_valido").hide();
       $("#file_novalido").show();
       $("#file_novalido").html('<span class="icon-clear"> Esto no es un documento</span>');  //acciones como el enfoque, no validan ...
        return false;
    }
    else {//right extension
      $("#file_novalido").hide();
      $("#file_valido").show();

       $("#file_valido").html('<span class="icon-check"> Documento Valido</span>\n'+value);
       return true;
    }

}
/*
          if (tipo !="application/octet-stream" && tipo !="application/msword" && tipo !="application/pdf" && tipo != "application/mspowerpoint"){
                

                   $("#file_novalido").show();
                    $("#file_novalido").html('');
                
          $("#file_novalido").append("<p style='color:red'>El Archivo "+tipo+" no es un Documento</p>");  

              

                }else{
                  
                  
                   $("#file_valido").show();
                    $("#file_valido").html('');
        
 
            $("#file_valido").append('<span>Archivo Valido</span>\n'+value);
                  
                  }

*/

/*
 $(document).ready(function (){


$('.nav-menu1').on('click','li',function(){
  $('.nav-menu1 li.active').removeClass('active');

  $(this).addClass('active');


});
          
  
            });
*/


   $(document).ready(function(){
        var cambio = false;
        $('.nav li a').each(function(index) {
            if(this.href.trim() == window.location){
                $(this).parent().addClass("active");
                cambio = true;
            }
        });
        if(!cambio){
            $('.nav li:first').addClass("active");
        }
    });
