function fd_registrar(){

	var Titulo = document.frm_fd_registrar.fd_titulo.value;
	var Tipo = document.frm_fd_registrar.fd_tipo.value;
	var Descripcion = document.frm_fd_registrar.fd_descripcion.value;

$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{fd_titulo:Titulo,fd_tipo:Tipo,fd_descripcion:Descripcion}


}).done(function(msg){
	
	$("#mos_fd").show();
	$("#mos_fd").html('');
	$("#mos_fd").html(msg);
	$("#fd_registrar")[0].reset(2000);

})

}


function fd_contenido(){


	var Contenido = document.frm_fd_contenido.contenido_fd.value;
	
	var Id = document.frm_fd_contenido.id_fd.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{fd_contenido:Contenido,id_fd:Id}
		}).done(function(msg){

			$("#mos_fd_contenido").show();
			$("#mos_fd_contenido").html('');
			$("#mos_fd_contenido").html(msg);
			$("#fd_contenido")[0].reset(2000);
			
		});	
}



function fd_modificar_titulo(){

	var Titulo = document.frm_fdmodificar_titulo.titulo_fd.value;
	var Tipo = document.frm_fdmodificar_titulo.tipo_fd.value;
	var Id = document.frm_fdmodificar_titulo.idmodificar_fd_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_fd:Titulo,tipo_fd:Tipo,idmodificar_fd_titulo:Id}
		}).done(function(msg){

			$("#mos_fd_titulo").show();
			$("#mos_fd_titulo").html('');
			$("#mos_fd_titulo").html(msg);
			
	
		});

}


function fd_modificar_descripcion(){

	var Descripcion = document.frm_fdmodificar_descripcion.descripcion_fd.value;
	var Id = document.frm_fdmodificar_descripcion.idmodificar_fd_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_fd:Descripcion,idmodificar_fd_descripcion:Id}
		}).done(function(msg){

				$("#mos_fd_descripcion").show();
				$("#mos_fd_descripcion").html(msg);
				$("#fdmodificar_descripcion").hide(2000);
			
	
		});

}


function fd_eliminar_titulo(){

	var Id = document.frm_fdeliminar_titulo.ideliminar_fd_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_fd_titulo:Id}
		}).done(function(msg){

			$("#mos_fd_titulo").show();
			$("#mos_fd_titulo").html('');
			$("#mos_fd_titulo").html(msg);
			$("#fdeliminar_titulo").hide(2000);	
		});
}


function fd_eliminar_descripcion(){

	var Id = document.frm_fdeliminar_descripcion.ideliminar_fd_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_fd_descripcion:Id}
		}).done(function(msg){

			$("#mos_fd_descripcion").show();
			$("#mos_fd_descripcion").html('');
			$("#mos_fd_descripcion").html(msg);
			$("#fdeliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INTALACION


function fd_manual(){

	var form = new FormData($("#fd_manual")[0]);
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


function fd_modificar_manual(){


	var form = new FormData($("#fd_modificar_manual")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_fd_manual').show();
			$('#mos_fd_manual').html(data);
			
		

		}


	});



}



function fd_modificar_manual_file(){


	var form = new FormData($("#fd_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_fd_manual_file').show();
			$('#mos_fd_manual_file').html(data);
			
		

		}


	});



}

function fd_eliminar_manual(){


	var form = new FormData($("#fd_eliminar_manual")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_fd_manual').show();
			$('#mos_fd_manual').html(data);
			$("#oameliminar_manual").hide(2000);
		

		}


	});



}


function fd_eliminar_tutorial(){


	var form = new FormData($("#fd_eliminar_tutorial")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_fd_tutorial').show();
			$('#mos_fd_tutorial').html(data);
			$("#faeliminar_tutorial").hide(2000);
		

		}


	});



}

function fd_modificar_tutorial_file(){


	var form = new FormData($("#fd_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_fd_tutorial_file').show();
			$('#mos_fd_tutorial_file').html('');
			$('#mos_fd_tutorial_file').html(data);
			
		

		}


	});



}

function fd_modificar_tutorial(){


	var form = new FormData($("#fd_modificar_tutorial")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_fd_tutorial').show();
			$('#mos_fd_tutorial').html(data);
			
		

		}


	});



}



function fd_tutorial(){

	var form = new FormData($("#fd_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#res_fd_tutoriales').show();
			$('#res_fd_tutoriales').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}





