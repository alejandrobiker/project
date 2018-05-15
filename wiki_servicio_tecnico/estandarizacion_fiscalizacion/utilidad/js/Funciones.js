function ef_registrar(){

	var Titulo = document.frm_ef_registrar.ef_titulo.value;
	var Tipo = document.frm_ef_registrar.ef_tipo.value;
	var Descripcion = document.frm_ef_registrar.ef_descripcion.value;

$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{ef_titulo:Titulo,ef_tipo:Tipo,ef_descripcion:Descripcion}


}).done(function(msg){
	
	$("#mos_ef").show();
	$("#mos_ef").html('');
	$("#mos_ef").html(msg);
	$("#ef_registrar")[0].reset(2000);

})

}


function ef_contenido(){


	var Contenido = document.frm_ef_contenido.contenido_ef.value;
	
	var Id = document.frm_ef_contenido.id_ef.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{ef_contenido:Contenido,id_ef:Id}
		}).done(function(msg){

			$("#mos_ef_contenido").show();
			$("#mos_ef_contenido").html('');
			$("#mos_ef_contenido").html(msg);
			$("#ef_contenido")[0].reset(2000);
			
		});	
}



function ef_modificar_titulo(){

	var Titulo = document.frm_efmodificar_titulo.titulo_ef.value;
	var Tipo = document.frm_efmodificar_titulo.tipo_ef.value;
	var Id = document.frm_efmodificar_titulo.idmodificar_ef_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_ef:Titulo,tipo_ef:Tipo,idmodificar_ef_titulo:Id}
		}).done(function(msg){

			$("#mos_ef_titulo").show();
			$("#mos_ef_titulo").html('');
			$("#mos_ef_titulo").html(msg);
			
	
		});

}


function ef_modificar_descripcion(){

	var Descripcion = document.frm_efmodificar_descripcion.descripcion_ef.value;
	var Id = document.frm_efmodificar_descripcion.idmodificar_ef_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_ef:Descripcion,idmodificar_ef_descripcion:Id}
		}).done(function(msg){

				$("#mos_ef_descripcion").show();
				$("#mos_ef_descripcion").html(msg);
				$("#efmodificar_descripcion").hide(2000);
			
	
		});

}


function ef_eliminar_titulo(){

	var Id = document.frm_efeliminar_titulo.ideliminar_ef_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_ef_titulo:Id}
		}).done(function(msg){

			$("#mos_ef_titulo").show();
			$("#mos_ef_titulo").html('');
			$("#mos_ef_titulo").html(msg);
			$("#efeliminar_titulo").hide(2000);	
		});
}


function ef_eliminar_descripcion(){

	var Id = document.frm_efeliminar_descripcion.ideliminar_ef_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_ef_descripcion:Id}
		}).done(function(msg){

			$("#mos_ef_descripcion").show();
			$("#mos_ef_descripcion").html('');
			$("#mos_ef_descripcion").html(msg);
			$("#efeliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INTALACION


function ef_manual(){

	var form = new FormData($("#ef_manual")[0]);
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



function ef_modificar_manual(){


	var form = new FormData($("#ef_modificar_manual")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_ef_manual').show();
			$('#mos_ef_manual').html(data);
			
		

		}


	});



}



function ef_modificar_manual_file(){


	var form = new FormData($("#ef_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_ef_manual_file').show();
			$('#mos_ef_manual_file').html(data);
			
		

		}


	});



}

function ef_eliminar_manual(){


	var form = new FormData($("#ef_eliminar_manual")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_ef_manual').show();
			$('#mos_ef_manual').html(data);
			$("#oameliminar_manual").hide(2000);
		

		}


	});



}


function ef_eliminar_tutorial(){


	var form = new FormData($("#ef_eliminar_tutorial")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_ef_tutorial').show();
			$('#mos_ef_tutorial').html(data);
			$("#faeliminar_tutorial").hide(2000);
		

		}


	});



}

function ef_modificar_tutorial_file(){


	var form = new FormData($("#ef_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_ef_tutorial_file').show();
			$('#mos_ef_tutorial_file').html('');
			$('#mos_ef_tutorial_file').html(data);
			
		

		}


	});



}

function ef_modificar_tutorial(){


	var form = new FormData($("#ef_modificar_tutorial")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_ef_tutorial').show();
			$('#mos_ef_tutorial').html(data);
			
		

		}


	});



}


function ef_tutorial(){

	var form = new FormData($("#ef_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#res_ef_tutoriales').show();
			$('#res_ef_tutoriales').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}





