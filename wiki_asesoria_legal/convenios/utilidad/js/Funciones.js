function con_registrar(){

	var Titulo = document.frm_con_registrar.con_titulo.value;
	var Tipo = document.frm_con_registrar.con_tipo.value;
	var Descripcion = document.frm_con_registrar.con_descripcion.value;

$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{con_titulo:Titulo,con_tipo:Tipo,con_descripcion:Descripcion}


}).done(function(msg){
	
	$("#mos_con").show();
	$("#mos_con").html('');
	$("#mos_con").html(msg);
	$("#con_registrar")[0].reset(2000);

})

}


function con_contenido(){


	var Contenido = document.frm_con_contenido.contenido_con.value;
	
	var Id = document.frm_con_contenido.id_con.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{con_contenido:Contenido,id_con:Id}
		}).done(function(msg){

			$("#mos_con_contenido").show();
			$("#mos_con_contenido").html('');
			$("#mos_con_contenido").html(msg);
			$("#con_contenido")[0].reset(2000);
			
		});	
}



function con_modificar_titulo(){

	var Titulo = document.frm_conmodificar_titulo.titulo_con.value;
	var Tipo = document.frm_conmodificar_titulo.tipo_con.value;
	var Id = document.frm_conmodificar_titulo.idmodificar_con_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_con:Titulo,tipo_con:Tipo,idmodificar_con_titulo:Id}
		}).done(function(msg){

			$("#mos_con_titulo").show();
			$("#mos_con_titulo").html('');
			$("#mos_con_titulo").html(msg);
			
	
		});

}


function con_modificar_descripcion(){

	var Descripcion = document.frm_conmodificar_descripcion.descripcion_con.value;
	var Id = document.frm_conmodificar_descripcion.idmodificar_con_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_con:Descripcion,idmodificar_con_descripcion:Id}
		}).done(function(msg){

				$("#mos_con_descripcion").show();
				$("#mos_con_descripcion").html(msg);
				$("#conmodificar_descripcion").hide(2000);
			
	
		});

}


function con_eliminar_titulo(){

	var Id = document.frm_coneliminar_titulo.ideliminar_con_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_con_titulo:Id}
		}).done(function(msg){

			$("#mos_con_titulo").show();
			$("#mos_con_titulo").html('');
			$("#mos_con_titulo").html(msg);
			$("#coneliminar_titulo").hide(2000);	
		});
}


function con_eliminar_descripcion(){

	var Id = document.frm_coneliminar_descripcion.ideliminar_con_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_con_descripcion:Id}
		}).done(function(msg){

			$("#mos_con_descripcion").show();
			$("#mos_con_descripcion").html('');
			$("#mos_con_descripcion").html(msg);
			$("#coneliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INTALACION


function con_manual(){

	var form = new FormData($("#con_manual")[0]);
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



function con_modificar_manual(){


	var form = new FormData($("#con_modificar_manual")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_con_manual').show();
			$('#mos_con_manual').html(data);
			
		

		}


	});



}



function con_modificar_manual_file(){


	var form = new FormData($("#con_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_con_manual_file').show();
			$('#mos_con_manual_file').html(data);
			
		

		}


	});



}

function con_eliminar_manual(){


	var form = new FormData($("#con_eliminar_manual")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_con_manual').show();
			$('#mos_con_manual').html(data);
			$("#oameliminar_manual").hide(2000);
		

		}


	});



}


function con_eliminar_tutorial(){


	var form = new FormData($("#con_eliminar_tutorial")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_con_tutorial').show();
			$('#mos_con_tutorial').html(data);
			$("#faeliminar_tutorial").hide(2000);
		

		}


	});



}

function con_modificar_tutorial_file(){


	var form = new FormData($("#con_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_con_tutorial_file').show();
			$('#mos_con_tutorial_file').html('');
			$('#mos_con_tutorial_file').html(data);
			
		

		}


	});



}

function con_modificar_tutorial(){


	var form = new FormData($("#con_modificar_tutorial")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_con_tutorial').show();
			$('#mos_con_tutorial').html(data);
			
		

		}


	});



}



function con_tutorial(){

	var form = new FormData($("#con_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#res_con_tutoriales').show();
			$('#res_con_tutoriales').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}





