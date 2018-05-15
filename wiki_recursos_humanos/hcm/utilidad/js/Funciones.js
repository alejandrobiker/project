function hcm_registrar(){

	var Titulo = document.frm_hcm_registrar.hcm_titulo.value;
	var Tipo = document.frm_hcm_registrar.hcm_tipo.value;
	var Descripcion = document.frm_hcm_registrar.hcm_descripcion.value;

$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{hcm_titulo:Titulo,hcm_tipo:Tipo,hcm_descripcion:Descripcion}


}).done(function(msg){
	
	$("#mos_hcm").show();
	$("#mos_hcm").html('');
	$("#mos_hcm").html(msg);
	$("#hcm_registrar")[0].reset(2000);

})

}


function hcm_contenido(){


	var Contenido = document.frm_hcm_contenido.contenido_hcm.value;
	
	var Id = document.frm_hcm_contenido.id_hcm.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{hcm_contenido:Contenido,id_hcm:Id}
		}).done(function(msg){

			$("#mos_hcm_contenido").show();
			$("#mos_hcm_contenido").html('');
			$("#mos_hcm_contenido").html(msg);
			$("#hcm_contenido")[0].reset(2000);
			
		});	
}



function hcm_modificar_titulo(){

	var Titulo = document.frm_hcmmodificar_titulo.titulo_hcm.value;
	var Tipo = document.frm_hcmmodificar_titulo.tipo_hcm.value;
	var Id = document.frm_hcmmodificar_titulo.idmodificar_hcm_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_hcm:Titulo,tipo_hcm:Tipo,idmodificar_hcm_titulo:Id}
		}).done(function(msg){

			$("#mos_hcm_titulo").show();
			$("#mos_hcm_titulo").html('');
			$("#mos_hcm_titulo").html(msg);
			
	
		});

}


function hcm_modificar_descripcion(){

	var Descripcion = document.frm_hcmmodificar_descripcion.descripcion_hcm.value;
	var Id = document.frm_hcmmodificar_descripcion.idmodificar_hcm_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_hcm:Descripcion,idmodificar_hcm_descripcion:Id}
		}).done(function(msg){

				$("#mos_hcm_descripcion").show();
				$("#mos_hcm_descripcion").html(msg);
				$("#hcmmodificar_descripcion").hide(2000);
			
	
		});

}


function hcm_eliminar_titulo(){

	var Id = document.frm_hcmeliminar_titulo.ideliminar_hcm_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_hcm_titulo:Id}
		}).done(function(msg){

			$("#mos_hcm_titulo").show();
			$("#mos_hcm_titulo").html('');
			$("#mos_hcm_titulo").html(msg);
			$("#hcmeliminar_titulo").hide(2000);	
		});
}


function hcm_eliminar_descripcion(){

	var Id = document.frm_hcmeliminar_descripcion.ideliminar_hcm_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_hcm_descripcion:Id}
		}).done(function(msg){

			$("#mos_hcm_descripcion").show();
			$("#mos_hcm_descripcion").html('');
			$("#mos_hcm_descripcion").html(msg);
			$("#hcmeliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INTALACION


function hcm_manual(){

	var form = new FormData($("#hcm_manual")[0]);
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


function hcm_modificar_manual(){


	var form = new FormData($("#hcm_modificar_manual")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_hcm_manual').show();
			$('#mos_hcm_manual').html(data);
			
		

		}


	});



}



function hcm_modificar_manual_file(){


	var form = new FormData($("#hcm_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_hcm_manual_file').show();
			$('#mos_hcm_manual_file').html(data);
			
		

		}


	});



}

function hcm_eliminar_manual(){


	var form = new FormData($("#hcm_eliminar_manual")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_hcm_manual').show();
			$('#mos_hcm_manual').html(data);
			$("#oameliminar_manual").hide(2000);
		

		}


	});



}


function hcm_eliminar_tutorial(){


	var form = new FormData($("#hcm_eliminar_tutorial")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_hcm_tutorial').show();
			$('#mos_hcm_tutorial').html(data);
			$("#faeliminar_tutorial").hide(2000);
		

		}


	});



}

function hcm_modificar_tutorial_file(){


	var form = new FormData($("#hcm_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_hcm_tutorial_file').show();
			$('#mos_hcm_tutorial_file').html('');
			$('#mos_hcm_tutorial_file').html(data);
			
		

		}


	});



}

function hcm_modificar_tutorial(){


	var form = new FormData($("#hcm_modificar_tutorial")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_hcm_tutorial').show();
			$('#mos_hcm_tutorial').html(data);
			
		

		}


	});



}



function hcm_tutorial(){

	var form = new FormData($("#hcm_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#res_hcm_tutoriales').show();
			$('#res_hcm_tutoriales').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}





