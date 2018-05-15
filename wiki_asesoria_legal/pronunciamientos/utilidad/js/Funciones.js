function pro_registrar(){

	var Titulo = document.frm_pro_registrar.pro_titulo.value;
	var Tipo = document.frm_pro_registrar.pro_tipo.value;
	var Descripcion = document.frm_pro_registrar.pro_descripcion.value;

$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{pro_titulo:Titulo,pro_tipo:Tipo,pro_descripcion:Descripcion}


}).done(function(msg){
	
	$("#mos_pro").show();
	$("#mos_pro").html('');
	$("#mos_pro").html(msg);
	$("#pro_registrar")[0].reset(2000);

})

}


function pro_contenido(){


	var Contenido = document.frm_pro_contenido.contenido_pro.value;
	
	var Id = document.frm_pro_contenido.id_pro.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{pro_contenido:Contenido,id_pro:Id}
		}).done(function(msg){

			$("#mos_pro_contenido").show();
			$("#mos_pro_contenido").html('');
			$("#mos_pro_contenido").html(msg);
			$("#pro_contenido")[0].reset(2000);
			
		});	
}



function pro_modificar_titulo(){

	var Titulo = document.frm_promodificar_titulo.titulo_pro.value;
	var Tipo = document.frm_promodificar_titulo.tipo_pro.value;
	var Id = document.frm_promodificar_titulo.idmodificar_pro_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_pro:Titulo,tipo_pro:Tipo,idmodificar_pro_titulo:Id}
		}).done(function(msg){

			$("#mos_pro_titulo").show();
			$("#mos_pro_titulo").html('');
			$("#mos_pro_titulo").html(msg);
			
	
		});

}


function pro_modificar_descripcion(){

	var Descripcion = document.frm_promodificar_descripcion.descripcion_pro.value;
	var Id = document.frm_promodificar_descripcion.idmodificar_pro_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_pro:Descripcion,idmodificar_pro_descripcion:Id}
		}).done(function(msg){

				$("#mos_pro_descripcion").show();
				$("#mos_pro_descripcion").html(msg);
				$("#promodificar_descripcion").hide(2000);
			
	
		});

}


function pro_eliminar_titulo(){

	var Id = document.frm_proeliminar_titulo.ideliminar_pro_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_pro_titulo:Id}
		}).done(function(msg){

			$("#mos_pro_titulo").show();
			$("#mos_pro_titulo").html('');
			$("#mos_pro_titulo").html(msg);
			$("#proeliminar_titulo").hide(2000);	
		});
}


function pro_eliminar_descripcion(){

	var Id = document.frm_proeliminar_descripcion.ideliminar_pro_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_pro_descripcion:Id}
		}).done(function(msg){

			$("#mos_pro_descripcion").show();
			$("#mos_pro_descripcion").html('');
			$("#mos_pro_descripcion").html(msg);
			$("#proeliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INTALACION


function pro_manual(){

	var form = new FormData($("#pro_manual")[0]);
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


function pro_modificar_manual(){


	var form = new FormData($("#pro_modificar_manual")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pro_manual').show();
			$('#mos_pro_manual').html(data);
			
		

		}


	});



}



function pro_modificar_manual_file(){


	var form = new FormData($("#pro_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pro_manual_file').show();
			$('#mos_pro_manual_file').html(data);
			
		

		}


	});



}

function pro_eliminar_manual(){


	var form = new FormData($("#pro_eliminar_manual")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pro_manual').show();
			$('#mos_pro_manual').html(data);
			$("#oameliminar_manual").hide(2000);	
		

		}


	});



}


function pro_eliminar_tutorial(){


	var form = new FormData($("#pro_eliminar_tutorial")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pro_tutorial').show();
			$('#mos_pro_tutorial').html(data);
			$("#faeliminar_tutorial").hide(2000);	
		

		}


	});



}

function pro_modificar_tutorial_file(){


	var form = new FormData($("#pro_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pro_tutorial_file').show();
			$('#mos_pro_tutorial_file').html('');
			$('#mos_pro_tutorial_file').html(data);
			
		

		}


	});



}

function pro_modificar_tutorial(){


	var form = new FormData($("#pro_modificar_tutorial")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pro_tutorial').show();
			$('#mos_pro_tutorial').html(data);
			
		

		}


	});



}

function pro_tutorial(){

	var form = new FormData($("#pro_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#res_pro_tutoriales').show();
			$('#res_pro_tutoriales').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}





