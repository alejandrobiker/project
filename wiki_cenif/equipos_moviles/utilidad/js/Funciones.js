function em_registrar(){

	var Titulo = document.frm_em_registrar.em_titulo.value;
	var Tipo = document.frm_em_registrar.em_tipo.value;
	var Descripcion = document.frm_em_registrar.em_descripcion.value;

$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{em_titulo:Titulo,em_tipo:Tipo,em_descripcion:Descripcion}


}).done(function(msg){
	
	$("#mos_em").show();
	$("#mos_em").html('');
	$("#mos_em").html(msg);
	$("#uaf_em_registrar")[0].reset(2000);

})

}


function em_contenido(){


	var Contenido = document.frm_em_contenido.contenido_em.value;
	
	var Id = document.frm_em_contenido.id_em.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{em_contenido:Contenido,id_em:Id}
		}).done(function(msg){

			$("#mos_em_contenido").show();
			$("#mos_em_contenido").html('');
			$("#mos_em_contenido").html(msg);
			$("#em_contenido")[0].reset(2000);
			
		});	
}



function em_modificar_titulo(){

	var Titulo = document.frm_emmodificar_titulo.titulo_em.value;
	var Tipo = document.frm_emmodificar_titulo.tipo_em.value;
	var Id = document.frm_emmodificar_titulo.idmodificar_em_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_em:Titulo,tipo_em:Tipo,idmodificar_em_titulo:Id}
		}).done(function(msg){

			$("#mos_em_titulo").show();
			$("#mos_em_titulo").html('');
			$("#mos_em_titulo").html(msg);
			$("#emmodificar_titulo")[0].reset(2000);
			
	
		});

}


function em_modificar_descripcion(){

	var Descripcion = document.frm_emmodificar_descripcion.descripcion_em.value;
	var Id = document.frm_emmodificar_descripcion.idmodificar_em_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_em:Descripcion,idmodificar_em_descripcion:Id}
		}).done(function(msg){

				$("#mos_em_descripcion").show();
				$("#mos_em_descripcion").html(msg);
				$("#emmodificar_descripcion").hide(2000);
			
	
		});

}


function em_eliminar_titulo(){

	var Id = document.frm_emeliminar_titulo.ideliminar_em_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_em_titulo:Id}
		}).done(function(msg){

			$("#mos_em_titulo").show();
			$("#mos_em_titulo").html('');
			$("#mos_em_titulo").html(msg);
			$("#emeliminar_titulo").hide(2000);	
		});
}


function em_eliminar_descripcion(){

	var Id = document.frm_emeliminar_descripcion.ideliminar_em_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_em_descripcion:Id}
		}).done(function(msg){

			$("#mos_em_descripcion").show();
			$("#mos_em_descripcion").html('');
			$("#mos_em_descripcion").html(msg);
			$("#emeliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INTALACION


function em_manual(){

	var form = new FormData($("#em_manual")[0]);
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


function em_modificar_manual(){


	var form = new FormData($("#em_modificar_manual")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_em_manual').show();
			$('#mos_em_manual').html(data);
			
		

		}


	});



}



function em_modificar_manual_file(){


	var form = new FormData($("#em_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_em_manual_file').show();
			$('#mos_em_manual_file').html(data);
			
		

		}


	});



}

function em_eliminar_manual(){

	var form = new FormData($("#em_eliminar_manual")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_em_manual').show();
			$('#mos_em_manual').html(data);
			$("#em_eliminar_manuals").hide(2000);	
		

		}


	});



}


function em_eliminar_tutorial(){


	var form = new FormData($("#em_eliminar_tutorial")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_em_tutorial').show();
			$('#mos_em_tutorial').html(data);
			$("#emeliminar_tutorial").hide(2000);
		

		}


	});



}

function em_modificar_tutorial_file(){


	var form = new FormData($("#em_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_em_tutorial_file').show();
			$('#mos_em_tutorial_file').html('');
			$('#mos_em_tutorial_file').html(data);
			
		

		}


	});



}

function em_modificar_tutorial(){


	var form = new FormData($("#em_modificar_tutorial")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_em_tutorial').show();
			$('#mos_em_tutorial').html(data);
			
		

		}


	});



}


function em_tutorial(){

	var form = new FormData($("#em_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#res_em_tutoriales').show();
			$('#res_em_tutoriales').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}





