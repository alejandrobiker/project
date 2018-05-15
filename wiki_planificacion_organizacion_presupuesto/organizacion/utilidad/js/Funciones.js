function or_registrar(){

	var Titulo = document.frm_or_registrar.or_titulo.value;
	var Tipo = document.frm_or_registrar.or_tipo.value;
	var Descripcion = document.frm_or_registrar.or_descripcion.value;

$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{or_titulo:Titulo,or_tipo:Tipo,or_descripcion:Descripcion}


}).done(function(msg){
	
	$("#mos_or").show();
	$("#mos_or").html('');
	$("#mos_or").html(msg);
	$("#or_registrar")[0].reset(2000);

})

}


function or_contenido(){


	var Contenido = document.frm_or_contenido.contenido_or.value;
	
	var Id = document.frm_or_contenido.id_or.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{or_contenido:Contenido,id_or:Id}
		}).done(function(msg){

			$("#mos_or_contenido").show();
			$("#mos_or_contenido").html('');
			$("#mos_or_contenido").html(msg);
			$("#or_contenido")[0].reset(2000);
			
		});	
}



function or_modificar_titulo(){

	var Titulo = document.frm_ormodificar_titulo.titulo_or.value;
	var Tipo = document.frm_ormodificar_titulo.tipo_or.value;
	var Id = document.frm_ormodificar_titulo.idmodificar_or_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_or:Titulo,tipo_or:Tipo,idmodificar_or_titulo:Id}
		}).done(function(msg){

			$("#mos_or_titulo").show();
			$("#mos_or_titulo").html('');
			$("#mos_or_titulo").html(msg);
			
	
		});

}


function or_modificar_descripcion(){

	var Descripcion = document.frm_ormodificar_descripcion.descripcion_or.value;
	var Id = document.frm_ormodificar_descripcion.idmodificar_or_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_or:Descripcion,idmodificar_or_descripcion:Id}
		}).done(function(msg){

				$("#mos_or_descripcion").show();
				$("#mos_or_descripcion").html(msg);
				$("#ormodificar_descripcion").hide(2000);
			
	
		});

}


function or_eliminar_titulo(){

	var Id = document.frm_oreliminar_titulo.ideliminar_or_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_or_titulo:Id}
		}).done(function(msg){

			$("#mos_or_titulo").show();
			$("#mos_or_titulo").html('');
			$("#mos_or_titulo").html(msg);
			$("#oreliminar_titulo").hide(2000);	
		});
}


function or_eliminar_descripcion(){

	var Id = document.frm_oreliminar_descripcion.ideliminar_or_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_or_descripcion:Id}
		}).done(function(msg){

			$("#mos_or_descripcion").show();
			$("#mos_or_descripcion").html('');
			$("#mos_or_descripcion").html(msg);
			$("#oreliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INTALACION


function or_manual(){

	var form = new FormData($("#or_manual")[0]);
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


function or_modificar_manual(){


	var form = new FormData($("#or_modificar_manual")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_or_manual').show();
			$('#mos_or_manual').html(data);
			
		

		}


	});



}



function or_modificar_manual_file(){


	var form = new FormData($("#or_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_or_manual_file').show();
			$('#mos_or_manual_file').html(data);
			
		

		}


	});



}

function or_eliminar_manual(){


	var form = new FormData($("#or_eliminar_manual")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_or_manual').show();
			$('#mos_or_manual').html(data);
			$("#oameliminar_manual").hide(2000);	
		

		}


	});



}


function or_eliminar_tutorial(){


	var form = new FormData($("#or_eliminar_tutorial")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_or_tutorial').show();
			$('#mos_or_tutorial').html(data);
			$("#faeliminar_tutorial").hide(2000);	
		

		}


	});



}

function or_modificar_tutorial_file(){


	var form = new FormData($("#or_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_or_tutorial_file').show();
			$('#mos_or_tutorial_file').html('');
			$('#mos_or_tutorial_file').html(data);
			
		

		}


	});



}

function or_modificar_tutorial(){


	var form = new FormData($("#or_modificar_tutorial")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_or_tutorial').show();
			$('#mos_or_tutorial').html(data);
			
		

		}


	});



}



function or_tutorial(){

	var form = new FormData($("#or_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#res_or_tutoriales').show();
			$('#res_or_tutoriales').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}





