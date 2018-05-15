function iva_registrar(){

	var Titulo = document.frm_iva_registrar.iva_titulo.value;
	var Tipo = document.frm_iva_registrar.iva_tipo.value;
	var Descripcion = document.frm_iva_registrar.iva_descripcion.value;

$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{iva_titulo:Titulo,iva_tipo:Tipo,iva_descripcion:Descripcion}


}).done(function(msg){
	
	$("#mos_iva").show();
	$("#mos_iva").html('');
	$("#mos_iva").html(msg);
	$("#uaf_iva_registrar")[0].reset(2000);

})

}


function iva_contenido(){


	var Contenido = document.frm_iva_contenido.contenido_iva.value;
	
	var Id = document.frm_iva_contenido.id_iva.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{iva_contenido:Contenido,id_iva:Id}
		}).done(function(msg){

			$("#mos_iva_contenido").show();
			$("#mos_iva_contenido").html('');
			$("#mos_iva_contenido").html(msg);
			$("#iva_contenido")[0].reset(2000);
			
		});	
}



function iva_modificar_titulo(){

	var Titulo = document.frm_ivamodificar_titulo.titulo_iva.value;
	var Tipo = document.frm_ivamodificar_titulo.tipo_iva.value;
	var Id = document.frm_ivamodificar_titulo.idmodificar_iva_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_iva:Titulo,tipo_iva:Tipo,idmodificar_iva_titulo:Id}
		}).done(function(msg){

			$("#mos_iva_titulo").show();
			$("#mos_iva_titulo").html('');
			$("#mos_iva_titulo").html(msg);
			
	
		});

}


function iva_modificar_descripcion(){

	var Descripcion = document.frm_ivamodificar_descripcion.descripcion_iva.value;
	var Id = document.frm_ivamodificar_descripcion.idmodificar_iva_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_iva:Descripcion,idmodificar_iva_descripcion:Id}
		}).done(function(msg){

				$("#mos_iva_descripcion").show();
				$("#mos_iva_descripcion").html(msg);
				$("#ivamodificar_descripcion").hide(2000);
			
	
		});

}


function iva_eliminar_titulo(){

	var Id = document.frm_ivaeliminar_titulo.ideliminar_iva_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_iva_titulo:Id}
		}).done(function(msg){

			$("#mos_iva_titulo").show();
			$("#mos_iva_titulo").html('');
			$("#mos_iva_titulo").html(msg);
			$("#ivaeliminar_titulo").hide(2000);	
		});
}


function iva_eliminar_descripcion(){

	var Id = document.frm_ivaeliminar_descripcion.ideliminar_iva_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_iva_descripcion:Id}
		}).done(function(msg){

			$("#mos_iva_descripcion").show();
			$("#mos_iva_descripcion").html('');
			$("#mos_iva_descripcion").html(msg);
			$("#ivaeliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INTALACION


function iva_manual(){

	var form = new FormData($("#iva_manual")[0]);
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

function iva_modificar_manual(){


	var form = new FormData($("#iva_modificar_manual")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_iva_manual').show();
			$('#mos_iva_manual').html(data);
			
		

		}


	});



}



function iva_modificar_manual_file(){


	var form = new FormData($("#iva_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_iva_manual_file').show();
			$('#mos_iva_manual_file').html(data);
			
		

		}


	});



}

function iva_eliminar_manual(){


	var form = new FormData($("#iva_eliminar_manual")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_iva_manual').show();
			$('#mos_iva_manual').html(data);
			$("#oameliminar_manual").hide(2000);
		

		}


	});



}


function iva_eliminar_tutorial(){


	var form = new FormData($("#iva_eliminar_tutorial")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_iva_tutorial').show();
			$('#mos_iva_tutorial').html(data);
			$("#faeliminar_tutorial").hide(2000);
		

		}


	});



}

function iva_modificar_tutorial_file(){


	var form = new FormData($("#iva_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_iva_tutorial_file').show();
			$('#mos_iva_tutorial_file').html('');
			$('#mos_iva_tutorial_file').html(data);
			
		

		}


	});



}

function iva_modificar_tutorial(){


	var form = new FormData($("#iva_modificar_tutorial")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_iva_tutorial').show();
			$('#mos_iva_tutorial').html(data);
			
		

		}


	});



}


function iva_tutorial(){

	var form = new FormData($("#iva_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#res_iva_tutoriales').show();
			$('#res_iva_tutoriales').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}





