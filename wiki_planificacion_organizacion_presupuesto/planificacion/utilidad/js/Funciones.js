function pl_registrar(){

	var Titulo = document.frm_pl_registrar.pl_titulo.value;
	var Tipo = document.frm_pl_registrar.pl_tipo.value;
	var Descripcion = document.frm_pl_registrar.pl_descripcion.value;

$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{pl_titulo:Titulo,pl_tipo:Tipo,pl_descripcion:Descripcion}


}).done(function(msg){
	
	$("#mos_pl").show();
	$("#mos_pl").html('');
	$("#mos_pl").html(msg);
	$("#pl_registrar")[0].reset(2000);

})

}


function pl_contenido(){


	var Contenido = document.frm_pl_contenido.contenido_pl.value;
	
	var Id = document.frm_pl_contenido.id_pl.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{pl_contenido:Contenido,id_pl:Id}
		}).done(function(msg){

			$("#mos_pl_contenido").show();
			$("#mos_pl_contenido").html('');
			$("#mos_pl_contenido").html(msg);
			$("#pl_contenido")[0].reset(2000);
			
		});	
}



function pl_modificar_titulo(){

	var Titulo = document.frm_plmodificar_titulo.titulo_pl.value;
	var Tipo = document.frm_plmodificar_titulo.tipo_pl.value;
	var Id = document.frm_plmodificar_titulo.idmodificar_pl_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_pl:Titulo,tipo_pl:Tipo,idmodificar_pl_titulo:Id}
		}).done(function(msg){

			$("#mos_pl_titulo").show();
			$("#mos_pl_titulo").html('');
			$("#mos_pl_titulo").html(msg);
			
	
		});

}


function pl_modificar_descripcion(){

	var Descripcion = document.frm_plmodificar_descripcion.descripcion_pl.value;
	var Id = document.frm_plmodificar_descripcion.idmodificar_pl_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_pl:Descripcion,idmodificar_pl_descripcion:Id}
		}).done(function(msg){

				$("#mos_pl_descripcion").show();
				$("#mos_pl_descripcion").html(msg);
				$("#plmodificar_descripcion").hide(2000);
			
	
		});

}


function pl_eliminar_titulo(){

	var Id = document.frm_pleliminar_titulo.ideliminar_pl_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_pl_titulo:Id}
		}).done(function(msg){

			$("#mos_pl_titulo").show();
			$("#mos_pl_titulo").html('');
			$("#mos_pl_titulo").html(msg);
			$("#pleliminar_titulo").hide(2000);	
		});
}


function pl_eliminar_descripcion(){

	var Id = document.frm_pleliminar_descripcion.ideliminar_pl_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_pl_descripcion:Id}
		}).done(function(msg){

			$("#mos_pl_descripcion").show();
			$("#mos_pl_descripcion").html('');
			$("#mos_pl_descripcion").html(msg);
			$("#pleliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INTALACION


function pl_manual(){

	var form = new FormData($("#pl_manual")[0]);
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


function pl_modificar_manual(){


	var form = new FormData($("#pl_modificar_manual")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pl_manual').show();
			$('#mos_pl_manual').html(data);
			
		

		}


	});



}



function pl_modificar_manual_file(){


	var form = new FormData($("#pl_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pl_manual_file').show();
			$('#mos_pl_manual_file').html(data);
			
		

		}


	});



}

function pl_eliminar_manual(){


	var form = new FormData($("#pl_eliminar_manual")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pl_manual').show();
			$('#mos_pl_manual').html(data);
			$("#oameliminar_manual").hide(2000);	
		

		}


	});



}


function pl_eliminar_tutorial(){


	var form = new FormData($("#pl_eliminar_tutorial")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pl_tutorial').show();
			$('#mos_pl_tutorial').html(data);
			$("#faeliminar_tutorial").hide(2000);	
		

		}


	});



}

function pl_modificar_tutorial_file(){


	var form = new FormData($("#pl_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pl_tutorial_file').show();
			$('#mos_pl_tutorial_file').html('');
			$('#mos_pl_tutorial_file').html(data);
			
		

		}


	});



}

function pl_modificar_tutorial(){


	var form = new FormData($("#pl_modificar_tutorial")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pl_tutorial').show();
			$('#mos_pl_tutorial').html(data);
			
		

		}


	});



}



function pl_tutorial(){

	var form = new FormData($("#pl_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#res_pl_tutoriales').show();
			$('#res_pl_tutoriales').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}





