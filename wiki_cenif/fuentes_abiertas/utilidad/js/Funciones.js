function fa_registrar(){

	var Titulo = document.frm_fa_registrar.fa_titulo.value;
	var Tipo = document.frm_fa_registrar.fa_tipo.value;
	var Descripcion = document.frm_fa_registrar.fa_descripcion.value;

$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{fa_titulo:Titulo,fa_tipo:Tipo,fa_descripcion:Descripcion}


}).done(function(msg){
	
	$("#mos_fa").show();
	$("#mos_fa").html('');
	$("#mos_fa").html(msg);
	$("#uaf_fa_registrar")[0].reset(2000);

})

}


function fa_contenido(){


	var Contenido = document.frm_fa_contenido.contenido_fa.value;
	
	var Id = document.frm_fa_contenido.id_fa.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{fa_contenido:Contenido,id_fa:Id}
		}).done(function(msg){

			$("#mos_fa_contenido").show();
			$("#mos_fa_contenido").html('');
			$("#mos_fa_contenido").html(msg);
			$("#fa_contenido")[0].reset(2000);
			
		});	
}



function fa_modificar_titulo(){

	var Titulo = document.frm_famodificar_titulo.titulo_fa.value;
	var Tipo = document.frm_famodificar_titulo.tipo_fa.value;
	var Id = document.frm_famodificar_titulo.idmodificar_fa_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_fa:Titulo,tipo_fa:Tipo,idmodificar_fa_titulo:Id}
		}).done(function(msg){

			$("#mos_fa_titulo").show();
			$("#mos_fa_titulo").html('');
			$("#mos_fa_titulo").html(msg);
			
	
		});

}


function fa_modificar_descripcion(){

	var Descripcion = document.frm_famodificar_descripcion.descripcion_fa.value;
	var Id = document.frm_famodificar_descripcion.idmodificar_fa_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_fa:Descripcion,idmodificar_fa_descripcion:Id}
		}).done(function(msg){

				$("#mos_fa_descripcion").show();
				$("#mos_fa_descripcion").html(msg);
				$("#famodificar_descripcion").hide(2000);
			
	
		});

}


function fa_eliminar_titulo(){

	var Id = document.frm_faeliminar_titulo.ideliminar_fa_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_fa_titulo:Id}
		}).done(function(msg){

			$("#mos_fa_titulo").show();
			$("#mos_fa_titulo").html('');
			$("#mos_fa_titulo").html(msg);
			$("#faeliminar_titulo").hide(2000);	
		});
}


function fa_eliminar_descripcion(){

	var Id = document.frm_faeliminar_descripcion.ideliminar_fa_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_fa_descripcion:Id}
		}).done(function(msg){

			$("#mos_fa_descripcion").show();
			$("#mos_fa_descripcion").html('');
			$("#mos_fa_descripcion").html(msg);
			$("#faeliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INTALACION


function fa_manual(){

	var form = new FormData($("#fa_manual")[0]);
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

function fa_modificar_manual(){


	var form = new FormData($("#fa_modificar_manual")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_fa_manual').show();
			$('#mos_fa_manual').html(data);
			
		

		}


	});



}



function fa_modificar_manual_file(){


	var form = new FormData($("#fa_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_fa_manual_file').show();
			$('#mos_fa_manual_file').html(data);
			
		

		}


	});



}

function fa_eliminar_manual(){


	var form = new FormData($("#fa_eliminar_manual")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_fa_manual').show();
			$('#mos_fa_manual').html(data);
			$("#oameliminar_manual").hide(2000);
		

		}


	});



}


function fa_eliminar_tutorial(){


	var form = new FormData($("#fa_eliminar_tutorial")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_fa_tutorial').show();
			$('#mos_fa_tutorial').html(data);
			$("#faeliminar_tutorial").hide(2000);
		

		}


	});



}

function fa_modificar_tutorial_file(){


	var form = new FormData($("#fa_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_fa_tutorial_file').show();
			$('#mos_fa_tutorial_file').html('');
			$('#mos_fa_tutorial_file').html(data);
			
		

		}


	});



}

function fa_modificar_tutorial(){


	var form = new FormData($("#fa_modificar_tutorial")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_fa_tutorial').show();
			$('#mos_fa_tutorial').html(data);
			
		

		}


	});



}

function fa_tutorial(){

	var form = new FormData($("#fa_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#res_fa_tutoriales').show();
			$('#res_fa_tutoriales').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}





