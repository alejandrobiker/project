function dic_registrar(){

	var Titulo = document.frm_dic_registrar.dic_titulo.value;
	var Tipo = document.frm_dic_registrar.dic_tipo.value;
	var Descripcion = document.frm_dic_registrar.dic_descripcion.value;

$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{dic_titulo:Titulo,dic_tipo:Tipo,dic_descripcion:Descripcion}


}).done(function(msg){
	
	$("#mos_dic").show();
	$("#mos_dic").html('');
	$("#mos_dic").html(msg);
	$("#dic_registrar")[0].reset(2000);

})

}


function dic_contenido(){


	var Contenido = document.frm_dic_contenido.contenido_dic.value;
	
	var Id = document.frm_dic_contenido.id_dic.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{dic_contenido:Contenido,id_dic:Id}
		}).done(function(msg){

			$("#mos_dic_contenido").show();
			$("#mos_dic_contenido").html('');
			$("#mos_dic_contenido").html(msg);
			$("#dic_contenido")[0].reset(2000);
			
		});	
}



function dic_modificar_titulo(){

	var Titulo = document.frm_dicmodificar_titulo.titulo_dic.value;
	var Tipo = document.frm_dicmodificar_titulo.tipo_dic.value;
	var Id = document.frm_dicmodificar_titulo.idmodificar_dic_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_dic:Titulo,tipo_dic:Tipo,idmodificar_dic_titulo:Id}
		}).done(function(msg){

			$("#mos_dic_titulo").show();
			$("#mos_dic_titulo").html('');
			$("#mos_dic_titulo").html(msg);
			
	
		});

}


function dic_modificar_descripcion(){

	var Descripcion = document.frm_dicmodificar_descripcion.descripcion_dic.value;
	var Id = document.frm_dicmodificar_descripcion.idmodificar_dic_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_dic:Descripcion,idmodificar_dic_descripcion:Id}
		}).done(function(msg){

				$("#mos_dic_descripcion").show();
				$("#mos_dic_descripcion").html(msg);
				$("#dicmodificar_descripcion").hide(2000);
			
	
		});

}


function dic_eliminar_titulo(){

	var Id = document.frm_diceliminar_titulo.ideliminar_dic_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_dic_titulo:Id}
		}).done(function(msg){

			$("#mos_dic_titulo").show();
			$("#mos_dic_titulo").html('');
			$("#mos_dic_titulo").html(msg);
			$("#diceliminar_titulo").hide(2000);	
		});
}


function dic_eliminar_descripcion(){

	var Id = document.frm_diceliminar_descripcion.ideliminar_dic_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_dic_descripcion:Id}
		}).done(function(msg){

			$("#mos_dic_descripcion").show();
			$("#mos_dic_descripcion").html('');
			$("#mos_dic_descripcion").html(msg);
			$("#diceliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INTALACION


function dic_manual(){

	var form = new FormData($("#dic_manual")[0]);
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


function dic_modificar_manual(){


	var form = new FormData($("#dic_modificar_manual")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_dic_manual').show();
			$('#mos_dic_manual').html(data);
			
		

		}


	});



}



function dic_modificar_manual_file(){


	var form = new FormData($("#dic_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_dic_manual_file').show();
			$('#mos_dic_manual_file').html(data);
			
		

		}


	});



}

function dic_eliminar_manual(){


	var form = new FormData($("#dic_eliminar_manual")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_dic_manual').show();
			$('#mos_dic_manual').html(data);
			$("#oameliminar_manual").hide(2000);	
		

		}


	});



}


function dic_eliminar_tutorial(){


	var form = new FormData($("#dic_eliminar_tutorial")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_dic_tutorial').show();
			$('#mos_dic_tutorial').html(data);
			$("#faeliminar_tutorial").hide(2000);	
		

		}


	});



}

function dic_modificar_tutorial_file(){


	var form = new FormData($("#dic_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_dic_tutorial_file').show();
			$('#mos_dic_tutorial_file').html('');
			$('#mos_dic_tutorial_file').html(data);
			
		

		}


	});



}

function dic_modificar_tutorial(){


	var form = new FormData($("#dic_modificar_tutorial")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_dic_tutorial').show();
			$('#mos_dic_tutorial').html(data);
			
		

		}


	});



}


function dic_tutorial(){

	var form = new FormData($("#dic_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#res_dic_tutoriales').show();
			$('#res_dic_tutoriales').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}





