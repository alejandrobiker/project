function oam_registrar(){




	var Titulo = document.frm_oam_registrar.oam_titulo.value;
	var Tipo = document.frm_oam_registrar.oam_tipo.value;
	var Descripcion = document.frm_oam_registrar.oam_descripcion.value;






$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{oam_titulo:Titulo,oam_tipo:Tipo,oam_descripcion:Descripcion}


}).done(function(msg){
	
	$("#moswiki").show();
	$("#moswiki").html('');
	$("#moswiki").html(msg);
	$("#oam_registrar")[0].reset(2000);

})

}


function oam_contenido(){


	var Contenido = document.frm_oam_contenido.contenido_oam.value;
	
	var Id = document.frm_oam_contenido.id_oam.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{oam_contenido:Contenido,id_oam:Id}
		}).done(function(msg){

			$("#mos_oam_contenido").show();
			$("#mos_oam_contenido").html('');
			$("#mos_oam_contenido").html(msg);
			$("#oam_contenido")[0].reset(2000);

			
		});	
}



function oam_modificar_titulo(){

	var Titulo = document.frm_oammodificar_titulo.titulo_oam.value;
	var Tipo = document.frm_oammodificar_titulo.tipo_oam.value;
	var Id = document.frm_oammodificar_titulo.idmodificar_oam_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_oam:Titulo,tipo_oam:Tipo,idmodificar_oam_titulo:Id}
		}).done(function(msg){

			$("#mos_oam_titulo").show();
			$("#mos_oam_titulo").html('');
			$("#mos_oam_titulo").html(msg);
			
	
		});

}


function oam_modificar_descripcion(){

	var Descripcion = document.frm_oammodificar_descripcion.descripcion_oam.value;
	var Id = document.frm_oammodificar_descripcion.idmodificar_oam_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_oam:Descripcion,idmodificar_oam_descripcion:Id}
		}).done(function(msg){

				$("#mos_oam_descripcion").show();
				$("#mos_oam_descripcion").html(msg);
				$("#oammodificar_descripcion").hide(2000);
			
	
		});

}


function oam_eliminar_titulo(){

	var Id = document.frm_oameliminar_titulo.ideliminar_oam_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_oam_titulo:Id}
		}).done(function(msg){

			$("#mos_oam_titulo").show();
			$("#mos_oam_titulo").html('');
			$("#mos_oam_titulo").html(msg);
			$("#oameliminar_titulo").hide(2000);	
		});
}


function oam_eliminar_descripcion(){

	var Id = document.frm_oameliminar_descripcion.ideliminar_oam_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_oam_descripcion:Id}
		}).done(function(msg){

			$("#mos_oam_descripcion").show();
			$("#mos_oam_descripcion").html('');
			$("#mos_oam_descripcion").html(msg);
			$("#oameliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INTALACION

function oam_manual(){

	var form = new FormData($("#oam_manual")[0]);
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

function oam_modificar_manual_file(){

	
	var form = new FormData($("#oam_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_oam_manual_file').show();
			$('#mos_oam_manual_file').html(data);
			
			


		}


	});

}

function oam_modificar_manual(){

	var Manual = document.frm_oammodificar_manual.manual_oam.value;
	var Tipo = document.frm_oammodificar_manual.tipo_manual_oam.value;
	var Id = document.frm_oammodificar_manual.idmodificar_oam_manual.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{manual_oam:Manual,tipo_manual_oam:Tipo,idmodificar_oam_manual:Id}
		}).done(function(msg){

			$("#mos_oam_manual").show();
			$("#mos_oam_manual").html('');
			$("#mos_oam_manual").html(msg);
			
	
		});

}


function oam_eliminar_manual(){

	var Id = document.frm_oameliminar_manual.ideliminarmanu.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminarmanu:Id}
		}).done(function(msg){

			$("#mos_oam_manual").show();
			$("#mos_oam_manual").html('');
			$("#mos_oam_manual").html(msg);
			$("#oameliminar_manual").hide(2000);	
		});
}







function oam_tutorial(){

	var form = new FormData($("#oam_tutoriales")[0]);
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


function oam_modificar_tutorial_file(){

	
	var form = new FormData($("#oam_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_oam_tutorial_file').show();
			$('#mos_oam_tutorial_file').html(data);
			
			


		}


	});

}
function oam_modificar_tutorial(){

	var Tutorial = document.frm_oammodificar_tutorial.tutorial_oam.value;
	var Tipo = document.frm_oammodificar_tutorial.tipo_tutorial_oam.value;
	var Id = document.frm_oammodificar_tutorial.idmodificar_oam_tuto.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{tutorial_oam:Tutorial,tipo_tutorial_oam:Tipo,idmodificar_oam_tuto:Id}
		}).done(function(msg){

			$("#mos_oam_tutorial").show();
			$("#mos_oam_tutorial").html('');
			$("#mos_oam_tutorial").html(msg);
			
	
		});

}

function oam_eliminar_tutorial(){

	var Id = document.frm_oameliminar_tutorial.ideliminartuto.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminartuto:Id}
		}).done(function(msg){

			$("#mos_oam_tutorial").show();
			$("#mos_oam_tutorial").html('');
			$("#mos_oam_tutorial").html(msg);
			$("#oameliminar_tutorial").hide(2000);	
		});
}





