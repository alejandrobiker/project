function pa_registro(){


	var Titulo = document.frm_pa.pa_titulo.value;
	var Tipo = document.frm_pa.pa_tipo.value;
	var Descripcion = document.frm_pa.pa_descripcion.value;


	$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{pa_titulo:Titulo,pa_tipo:Tipo,pa_descripcion:Descripcion}


	}).done(function(msg){
		
		$("#mos_pa").show();
		$("#mos_pa").html('');
		$("#mos_pa").html(msg);
		$("#frm_pa")[0].reset(2000);




	})

}



function pa_contenido(){


	var Contenido = document.frm_pa_contenido.contenido_pa.value;
	
	var Id = document.frm_pa_contenido.id_pa.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{pa_contenido:Contenido,id_pa:Id}
		}).done(function(msg){

			$("#mos_pa_contenido").show();
			$("#mos_pa_contenido").html('');
			$("#mos_pa_contenido").html(msg);
			$("#pa_contenido")[0].reset(2000);
			
		});	
}



function pa_modificar_titulo(){

	var Titulo = document.frm_pamodificar_titulo.titulo_pa.value;
	var Tipo = document.frm_pamodificar_titulo.tipo_pa.value;
	var Id = document.frm_pamodificar_titulo.idmodificar_pa_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_pa:Titulo,tipo_pa:Tipo,idmodificar_pa_titulo:Id}
		}).done(function(msg){

			$("#mos_pa_titulo").show();
			$("#mos_pa_titulo").html('');
			$("#mos_pa_titulo").html(msg);
			
	
		});

}


function pa_modificar_descripcion(){

	var Descripcion = document.frm_pamodificar_descripcion.descripcion_pa.value;
	var Id = document.frm_pamodificar_descripcion.idmodificar_pa_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_pa:Descripcion,idmodificar_pa_descripcion:Id}
		}).done(function(msg){

				$("#mos_pa_descripcion").show();
				$("#mos_pa_descripcion").html(msg);
				$("#pamodificar_descripcion")[0].reset(2000);
			
	
		});

}


function pa_eliminar_titulo(){

	var Id = document.frm_paeliminar_titulo.ideliminar_pa_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_pa_titulo:Id}
		}).done(function(msg){

			$("#mos_pa_titulo").show();
			$("#mos_pa_titulo").html('');
			$("#mos_pa_titulo").html(msg);
			$("#paeliminar_titulo").hide(2000);	
		});
}


function pa_eliminar_descripcion(){

	var Id = document.frm_paeliminar_descripcion.ideliminar_pa_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_pa_descripcion:Id}
		}).done(function(msg){

			$("#mos_pa_descripcion").show();
			$("#mos_pa_descripcion").html('');
			$("#mos_pa_descripcion").html(msg);
			$("#paeliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INTALACION


function pa_manual(){

	var form = new FormData($("#pa_manual")[0]);
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



function pa_modificar_manual(){


	var form = new FormData($("#pa_modificar_manual")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pa_manual').show();
			$('#mos_pa_manual').html(data);
			
		

		}


	});



}



function pa_modificar_manual_file(){


	var form = new FormData($("#pa_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pa_manual_file').show();
			$('#mos_pa_manual_file').html(data);
			
		

		}


	});



}

function pa_eliminar_manual(){


	var form = new FormData($("#pa_eliminar_manual")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pa_manual').show();
			$('#mos_pa_manual').html(data);
			$("#oameliminar_manual").hide(2000);	
		

		}


	});



}


function pa_eliminar_tutorial(){


	var form = new FormData($("#pa_eliminar_tutorial")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pa_tutorial').show();
			$('#mos_pa_tutorial').html(data);
			$("#faeliminar_tutorial").hide(2000);	
		

		}


	});



}

function pa_modificar_tutorial_file(){


	var form = new FormData($("#pa_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pa_tutorial_file').show();
			$('#mos_pa_tutorial_file').html('');
			$('#mos_pa_tutorial_file').html(data);
			
		

		}


	});



}


function pa_modificar_tutorial(){


	var form = new FormData($("#pa_modificar_tutorial")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pa_tutorial').show();
			$('#mos_pa_tutorial').html(data);
			
		

		}


	});



}


function pa_tutorial(){

	var form = new FormData($("#pa_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#restuto').show();
			$('#restuto').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}





