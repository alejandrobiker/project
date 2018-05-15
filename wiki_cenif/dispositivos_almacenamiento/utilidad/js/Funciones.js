function da_registrar(){

	var Titulo = document.frm_da_registrar.da_titulo.value;
	var Tipo = document.frm_da_registrar.da_tipo.value;
	var Descripcion = document.frm_da_registrar.da_descripcion.value;

$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{da_titulo:Titulo,da_tipo:Tipo,da_descripcion:Descripcion}


}).done(function(msg){
	
	$("#mos_da").show();
	$("#mos_da").html('');
	$("#mos_da").html(msg);
	$("#uaf_da_registrar")[0].reset(2000);

})

}


function da_contenido(){


	var Contenido = document.frm_da_contenido.contenido_da.value;
	
	var Id = document.frm_da_contenido.id_da.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{da_contenido:Contenido,id_da:Id}
		}).done(function(msg){

			$("#mos_da_contenido").show();
			$("#mos_da_contenido").html('');
			$("#mos_da_contenido").html(msg);
			$("#da_contenido")[0].reset(2000);
			
		});	
}



function da_modificar_titulo(){

	var Titulo = document.frm_damodificar_titulo.titulo_da.value;
	var Tipo = document.frm_damodificar_titulo.tipo_da.value;
	var Id = document.frm_damodificar_titulo.idmodificar_da_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_da:Titulo,tipo_da:Tipo,idmodificar_da_titulo:Id}
		}).done(function(msg){

			$("#mos_da_titulo").show();
			$("#mos_da_titulo").html('');
			$("#mos_da_titulo").html(msg);
			$("#damodificar_titulo")[0].reset(2000);
			
	
		});

}


function da_modificar_descripcion(){

	var Descripcion = document.frm_damodificar_descripcion.descripcion_da.value;
	var Id = document.frm_damodificar_descripcion.idmodificar_da_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_da:Descripcion,idmodificar_da_descripcion:Id}
		}).done(function(msg){

				$("#mos_da_descripcion").show();
				$("#mos_da_descripcion").html(msg);
				$("#damodificar_descripcion").hide(2000);
			
	
		});

}


function da_eliminar_titulo(){

	var Id = document.frm_daeliminar_titulo.ideliminar_da_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_da_titulo:Id}
		}).done(function(msg){

			$("#mos_da_titulo").show();
			$("#mos_da_titulo").html('');
			$("#mos_da_titulo").html(msg);
			$("#daeliminar_titulo").hide(2000);	
		});
}


function da_eliminar_descripcion(){

	var Id = document.frm_daeliminar_descripcion.ideliminar_da_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_da_descripcion:Id}
		}).done(function(msg){

			$("#mos_da_descripcion").show();
			$("#mos_da_descripcion").html('');
			$("#mos_da_descripcion").html(msg);
			$("#daeliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INTALACION


function da_manual(){

	var form = new FormData($("#da_manual")[0]);
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



function da_modificar_manual(){


	var form = new FormData($("#da_modificar_manual")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_da_manual').show();
			$('#mos_da_manual').html(data);
			
		

		}


	});



}



function da_modificar_manual_file(){


	var form = new FormData($("#da_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_da_manual_file').show();
			$('#mos_da_manual_file').html(data);
			
		

		}


	});



}

function da_eliminar_manual(){


	var form = new FormData($("#da_eliminar_manual")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_da_manual').show();
			$('#mos_da_manual').html(data);
			$("#oameliminar_manual").hide(2000);
		

		}


	});



}


function da_eliminar_tutorial(){


	var form = new FormData($("#da_eliminar_tutorial")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_da_tutorial').show();
			$('#mos_da_tutorial').html(data);
			$("#emeliminar_tutorial").hide(2000);
		

		}


	});



}

function da_modificar_tutorial_file(){


	var form = new FormData($("#da_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_da_tutorial_file').show();
			$('#mos_da_tutorial_file').html('');
			$('#mos_da_tutorial_file').html(data);
			
		

		}


	});



}

function da_modificar_tutorial(){


	var form = new FormData($("#da_modificar_tutorial")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_da_tutorial').show();
			$('#mos_da_tutorial').html(data);
			
		

		}


	});



}


function da_tutorial(){

	var form = new FormData($("#da_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#res_da_tutoriales').show();
			$('#res_da_tutoriales').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}





