function cec_registrar(){

	var Titulo = document.frm_cec_registrar.cec_titulo.value;
	var Tipo = document.frm_cec_registrar.cec_tipo.value;
	var Descripcion = document.frm_cec_registrar.cec_descripcion.value;

$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{cec_titulo:Titulo,cec_tipo:Tipo,cec_descripcion:Descripcion}


}).done(function(msg){
	
	$("#mos_cec").show();
	$("#mos_cec").html('');
	$("#mos_cec").html(msg);
	$("#cec_registrar")[0].reset(2000);

})

}


function cec_contenido(){


	var Contenido = document.frm_cec_contenido.contenido_cec.value;
	
	var Id = document.frm_cec_contenido.id_cec.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{cec_contenido:Contenido,id_cec:Id}
		}).done(function(msg){

			$("#mos_cec_contenido").show();
			$("#mos_cec_contenido").html('');
			$("#mos_cec_contenido").html(msg);
			$("#cec_contenido")[0].reset(2000);
			
		});	
}



function cec_modificar_titulo(){

	var Titulo = document.frm_cecmodificar_titulo.titulo_cec.value;
	var Tipo = document.frm_cecmodificar_titulo.tipo_cec.value;
	var Id = document.frm_cecmodificar_titulo.idmodificar_cec_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_cec:Titulo,tipo_cec:Tipo,idmodificar_cec_titulo:Id}
		}).done(function(msg){

			$("#mos_cec_titulo").show();
			$("#mos_cec_titulo").html('');
			$("#mos_cec_titulo").html(msg);
			$("#cecmodificar_titulo")[0].reset(2000);
			
	
		});

}


function cec_modificar_descripcion(){

	var Descripcion = document.frm_cecmodificar_descripcion.descripcion_cec.value;
	var Id = document.frm_cecmodificar_descripcion.idmodificar_cec_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_cec:Descripcion,idmodificar_cec_descripcion:Id}
		}).done(function(msg){

				$("#mos_cec_descripcion").show();
				$("#mos_cec_descripcion").html(msg);
				$("#cecmodificar_descripcion").hide(2000);
			
	
		});

}


function cec_eliminar_titulo(){

	var Id = document.frm_ceceliminar_titulo.ideliminar_cec_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_cec_titulo:Id}
		}).done(function(msg){

			$("#mos_cec_titulo").show();
			$("#mos_cec_titulo").html('');
			$("#mos_cec_titulo").html(msg);
			$("#ceceliminar_titulo").hide(2000);	
		});
}


function cec_eliminar_descripcion(){

	var Id = document.frm_ceceliminar_descripcion.ideliminar_cec_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_cec_descripcion:Id}
		}).done(function(msg){

			$("#mos_cec_descripcion").show();
			$("#mos_cec_descripcion").html('');
			$("#mos_cec_descripcion").html(msg);
			$("#ceceliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INTALACION


function cec_manual(){

	var form = new FormData($("#cec_manual")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#res').show();
			$('#res').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}



	function cec_modificar_manual(){


	var form = new FormData($("#cec_modificar_manual")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_cec_manual').show();
			$('#mos_cec_manual').html(data);
			
		

		}


	});



}



function cec_modificar_manual_file(){


	var form = new FormData($("#cec_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_cec_manual_file').show();
			$('#mos_cec_manual_file').html(data);
			
		

		}


	});



}

function cec_eliminar_manual(){


	var form = new FormData($("#cec_eliminar_manual")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_cec_manual').show();
			$('#mos_cec_manual').html(data);
			$("#oameliminar_manual").hide(2000);	
		

		}


	});



}


function cec_eliminar_tutorial(){


	var form = new FormData($("#cec_eliminar_tutorial")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_cec_tutorial').show();
			$('#mos_cec_tutorial').html(data);
			$("#faeliminar_tutorial").hide(2000);	
		

		}


	});



}

function cec_modificar_tutorial_file(){


	var form = new FormData($("#cec_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_cec_tutorial_file').show();
			$('#mos_cec_tutorial_file').html('');
			$('#mos_cec_tutorial_file').html(data);
			
		

		}


	});



}

function cec_modificar_tutorial(){


	var form = new FormData($("#cec_modificar_tutorial")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_cec_tutorial').show();
			$('#mos_cec_tutorial').html(data);
			
		

		}


	});



}



function cec_tutorial(){

	var form = new FormData($("#cec_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#res_cec_tutoriales').show();
			$('#res_cec_tutoriales').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}





