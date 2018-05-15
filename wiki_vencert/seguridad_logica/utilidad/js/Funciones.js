function sl_registrar(){

	var Titulo = document.frm_sl_registrar.sl_titulo.value;
	var Tipo = document.frm_sl_registrar.sl_tipo.value;
	var Descripcion = document.frm_sl_registrar.sl_descripcion.value;



$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{sl_titulo:Titulo,sl_tipo:Tipo,sl_descripcion:Descripcion}


}).done(function(msg){
	
	$("#moswiki").show();
	$("#moswiki").html('');
	$("#moswiki").html(msg);
	$("#sl_registrar")[0].reset(2000);

})

}


function sl_contenido(){


	var Contenido = document.frm_sl_contenido.contenido_sl.value;
	
	var Id = document.frm_sl_contenido.id_sl.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{sl_contenido:Contenido,id_sl:Id}
		}).done(function(msg){

			$("#mos_sl_contenido").show();
			$("#mos_sl_contenido").html('');
			$("#mos_sl_contenido").html(msg);
			$("#sl_contenido")[0].reset(2000);
			
		});	
}



function sl_modificar_titulo(){

	var Titulo = document.frm_slmodificar_titulo.titulo_sl.value;
	var Tipo = document.frm_slmodificar_titulo.tipo_sl.value;
	var Id = document.frm_slmodificar_titulo.idmodificar_sl_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_sl:Titulo,tipo_sl:Tipo,idmodificar_sl_titulo:Id}
		}).done(function(msg){

			$("#mos_sl_titulo").show();
			$("#mos_sl_titulo").html('');
			$("#mos_sl_titulo").html(msg);
			
	
		});

}


function sl_modificar_descripcion(){

	var Descripcion = document.frm_slmodificar_descripcion.descripcion_sl.value;
	var Id = document.frm_slmodificar_descripcion.idmodificar_sl_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_sl:Descripcion,idmodificar_sl_descripcion:Id}
		}).done(function(msg){

				$("#mos_sl_descripcion").show();
				$("#mos_sl_descripcion").html(msg);
				$("#slmodificar_descripcion").hide(2000);
			
	
		});

}


function sl_eliminar_titulo(){

	var Id = document.frm_sleliminar_titulo.ideliminar_sl_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_sl_titulo:Id}
		}).done(function(msg){

			$("#mos_sl_titulo").show();
			$("#mos_sl_titulo").html('');
			$("#mos_sl_titulo").html(msg);
			$("#sleliminar_titulo").hide(2000);	
		});
}


function sl_eliminar_descripcion(){

	var Id = document.frm_sleliminar_descripcion.ideliminar_sl_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_sl_descripcion:Id}
		}).done(function(msg){

			$("#mos_sl_descripcion").show();
			$("#mos_sl_descripcion").html('');
			$("#mos_sl_descripcion").html(msg);
			$("#sleliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INTALACION


function sl_manual(){

	var form = new FormData($("#sl_manual")[0]);
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
			
		


		}


	});



}

function sl_modificar_manual_file(){

	
	var form = new FormData($("#sl_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_sl_manual_file').show();
			$('#mos_sl_manual_file').html(data);
			
			


		}


	});

}


function sl_modificar_manual(){

	var Manual = document.frm_slmodificar_manual.manual_sl.value;
	var Tipo = document.frm_slmodificar_manual.tipo_manual_sl.value;
	var Id = document.frm_slmodificar_manual.idmodificar_sl_manual.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{manual_sl:Manual,tipo_manual_sl:Tipo,idmodificar_sl_manual:Id}
		}).done(function(msg){

			$("#mos_seguridad_logica_manual").show();
			$("#mos_seguridad_logica_manual").html('');
			$("#mos_seguridad_logica_manual").html(msg);
			
	
		});

}


function sl_eliminar_manual(){

	var Id = document.frm_sleliminar_manual.ideliminarmanu.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminarmanu:Id}
		}).done(function(msg){

			$("#mos_seguridad_logica_manual").show();
			$("#mos_seguridad_logica_manual").html('');
			$("#mos_seguridad_logica_manual").html(msg);
			$("#sleliminar_manual").hide(2000);	
		});
}




function sl_tutorial(){

	var form = new FormData($("#sl_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

				$('#res_sl_tutoriales').show();
			$('#res_sl_tutoriales').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}




function sl_modificar_tutorial_file(){

	var form = new FormData($("#sl_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_sl_tutorial_file').show();
			$('#mos_sl_tutorial_file').html(data);
			$('#mos_sl_tutorial_file').hide(10000);
			
		


		}


	});



}


function sl_modificar_tutorial(){

	var Tutorial = document.frm_slmodificar_tutorial.tutorial_sl.value;
	var Tipo = document.frm_slmodificar_tutorial.tipo_tutorial_sl.value;
	var Id = document.frm_slmodificar_tutorial.idmodificar_sl_tuto.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{tutorial_sl:Tutorial,tipo_tutorial_sl:Tipo,idmodificar_sl_tuto:Id}
		}).done(function(msg){

			$("#mos_seguridad_logica_tutorial").show();
			$("#mos_seguridad_logica_tutorial").html('');
			$("#mos_seguridad_logica_tutorial").html(msg);
			
			
	
		});

}

function sl_eliminar_tutorial(){

	var Id = document.frm_sleliminar_tutorial.ideliminartuto.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminartuto:Id}
		}).done(function(msg){

			$("#mos_seguridad_logica_tutorial").show();
			$("#mos_seguridad_logica_tutorial").html('');
			$("#mos_seguridad_logica_tutorial").html(msg);
			$("#sleliminar_tutorial").hide(2000);	
		});
}

