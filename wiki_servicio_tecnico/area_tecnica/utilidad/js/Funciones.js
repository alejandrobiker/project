function st_registrar(){

	var Titulo = document.frm_st_registrar.st_titulo.value;
	var Tipo = document.frm_st_registrar.st_tipo.value;
	var Descripcion = document.frm_st_registrar.st_descripcion.value;

$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{st_titulo:Titulo,st_tipo:Tipo,st_descripcion:Descripcion}


}).done(function(msg){
	
	$("#mos_st").show();
	$("#mos_st").html('');
	$("#mos_st").html(msg);
	$("#st_registrar")[0].reset(2000);

})

}


function st_contenido(){


	var Contenido = document.frm_st_contenido.contenido_st.value;
	
	var Id = document.frm_st_contenido.id_st.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{st_contenido:Contenido,id_st:Id}
		}).done(function(msg){

			$("#mos_st_contenido").show();
			$("#mos_st_contenido").html('');
			$("#mos_st_contenido").html(msg);
			$("#st_contenido")[0].reset(2000);
			
		});	
}



function st_modificar_titulo(){

	var Titulo = document.frm_stmodificar_titulo.titulo_st.value;
	var Tipo = document.frm_stmodificar_titulo.tipo_st.value;
	var Id = document.frm_stmodificar_titulo.idmodificar_st_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_st:Titulo,tipo_st:Tipo,idmodificar_st_titulo:Id}
		}).done(function(msg){

			$("#mos_st_titulo").show();
			$("#mos_st_titulo").html('');
			$("#mos_st_titulo").html(msg);
			
	
		});

}


function st_modificar_descripcion(){

	var Descripcion = document.frm_stmodificar_descripcion.descripcion_st.value;
	var Id = document.frm_stmodificar_descripcion.idmodificar_st_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_st:Descripcion,idmodificar_st_descripcion:Id}
		}).done(function(msg){

				$("#mos_st_descripcion").show();
				$("#mos_st_descripcion").html(msg);
				$("#stmodificar_descripcion").hide(2000);
			
	
		});

}


function st_eliminar_titulo(){

	var Id = document.frm_steliminar_titulo.ideliminar_st_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_st_titulo:Id}
		}).done(function(msg){

			$("#mos_st_titulo").show();
			$("#mos_st_titulo").html('');
			$("#mos_st_titulo").html(msg);
			$("#steliminar_titulo").hide(2000);	
		});
}


function st_eliminar_descripcion(){

	var Id = document.frm_steliminar_descripcion.ideliminar_st_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_st_descripcion:Id}
		}).done(function(msg){

			$("#mos_st_descripcion").show();
			$("#mos_st_descripcion").html('');
			$("#mos_st_descripcion").html(msg);
			$("#steliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INTALACION


function st_manual(){

	var form = new FormData($("#st_manual")[0]);
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

	
	function st_modificar_manual(){


	var form = new FormData($("#st_modificar_manual")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_st_manual').show();
			$('#mos_st_manual').html(data);
			
		

		}


	});



}



function st_modificar_manual_file(){


	var form = new FormData($("#st_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_st_manual_file').show();
			$('#mos_st_manual_file').html(data);
			
		

		}


	});



}

function st_eliminar_manual(){


	var form = new FormData($("#st_eliminar_manual")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_st_manual').show();
			$('#mos_st_manual').html(data);
			$("#oameliminar_manual").hide(2000);	
		

		}


	});



}


function st_eliminar_tutorial(){


	var form = new FormData($("#st_eliminar_tutorial")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_st_tutorial').show();
			$('#mos_st_tutorial').html(data);
			$("#faeliminar_tutorial").hide(2000);	
		

		}


	});



}

function st_modificar_tutorial_file(){


	var form = new FormData($("#st_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_st_tutorial_file').show();
			$('#mos_st_tutorial_file').html('');
			$('#mos_st_tutorial_file').html(data);
			
		

		}


	});



}

function st_modificar_tutorial(){


	var form = new FormData($("#st_modificar_tutorial")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_st_tutorial').show();
			$('#mos_st_tutorial').html(data);
			
		

		}


	});



}



function st_tutorial(){

	var form = new FormData($("#st_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#res_st_tutoriales').show();
			$('#res_st_tutoriales').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}





