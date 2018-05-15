function nom_registrar(){

	var Titulo = document.frm_nom_registrar.nom_titulo.value;
	var Tipo = document.frm_nom_registrar.nom_tipo.value;
	var Descripcion = document.frm_nom_registrar.nom_descripcion.value;

$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{nom_titulo:Titulo,nom_tipo:Tipo,nom_descripcion:Descripcion}


}).done(function(msg){
	
	$("#mos_nom").show();
	$("#mos_nom").html('');
	$("#mos_nom").html(msg);
	$("#nom_registrar")[0].reset(2000);

})

}


function nom_contenido(){


	var Contenido = document.frm_nom_contenido.contenido_nom.value;
	
	var Id = document.frm_nom_contenido.id_nom.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{nom_contenido:Contenido,id_nom:Id}
		}).done(function(msg){

			$("#mos_nom_contenido").show();
			$("#mos_nom_contenido").html('');
			$("#mos_nom_contenido").html(msg);
			$("#nom_contenido")[0].reset(2000);
			
		});	
}



function nom_modificar_titulo(){

	var Titulo = document.frm_nommodificar_titulo.titulo_nom.value;
	var Tipo = document.frm_nommodificar_titulo.tipo_nom.value;
	var Id = document.frm_nommodificar_titulo.idmodificar_nom_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_nom:Titulo,tipo_nom:Tipo,idmodificar_nom_titulo:Id}
		}).done(function(msg){

			$("#mos_nom_titulo").show();
			$("#mos_nom_titulo").html('');
			$("#mos_nom_titulo").html(msg);
			
	
		});

}


function nom_modificar_descripcion(){

	var Descripcion = document.frm_nommodificar_descripcion.descripcion_nom.value;
	var Id = document.frm_nommodificar_descripcion.idmodificar_nom_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_nom:Descripcion,idmodificar_nom_descripcion:Id}
		}).done(function(msg){

				$("#mos_nom_descripcion").show();
				$("#mos_nom_descripcion").html(msg);
				$("#nommodificar_descripcion").hide(2000);
			
	
		});

}


function nom_eliminar_titulo(){

	var Id = document.frm_nomeliminar_titulo.ideliminar_nom_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_nom_titulo:Id}
		}).done(function(msg){

			$("#mos_nom_titulo").show();
			$("#mos_nom_titulo").html('');
			$("#mos_nom_titulo").html(msg);
			$("#nomeliminar_titulo").hide(2000);	
		});
}


function nom_eliminar_descripcion(){

	var Id = document.frm_nomeliminar_descripcion.ideliminar_nom_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_nom_descripcion:Id}
		}).done(function(msg){

			$("#mos_nom_descripcion").show();
			$("#mos_nom_descripcion").html('');
			$("#mos_nom_descripcion").html(msg);
			$("#nomeliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INTALACION


function nom_manual(){

	var form = new FormData($("#nom_manual")[0]);
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


function nom_modificar_manual(){


	var form = new FormData($("#nom_modificar_manual")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_nom_manual').show();
			$('#mos_nom_manual').html(data);
			
		

		}


	});



}



function nom_modificar_manual_file(){


	var form = new FormData($("#nom_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_nom_manual_file').show();
			$('#mos_nom_manual_file').html(data);
			
		

		}


	});



}

function nom_eliminar_manual(){


	var form = new FormData($("#nom_eliminar_manual")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_nom_manual').show();
			$('#mos_nom_manual').html(data);
			$("#oameliminar_manual").hide(2000);
		

		}


	});



}


function nom_eliminar_tutorial(){


	var form = new FormData($("#nom_eliminar_tutorial")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_nom_tutorial').show();
			$('#mos_nom_tutorial').html(data);
			$("#faeliminar_tutorial").hide(2000);
		

		}


	});



}

function nom_modificar_tutorial_file(){


	var form = new FormData($("#nom_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_nom_tutorial_file').show();
			$('#mos_nom_tutorial_file').html('');
			$('#mos_nom_tutorial_file').html(data);
			
		

		}


	});



}

function nom_modificar_tutorial(){


	var form = new FormData($("#nom_modificar_tutorial")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_nom_tutorial').show();
			$('#mos_nom_tutorial').html(data);
			
		

		}


	});



}


function nom_tutorial(){

	var form = new FormData($("#nom_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#res_nom_tutoriales').show();
			$('#res_nom_tutoriales').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}





