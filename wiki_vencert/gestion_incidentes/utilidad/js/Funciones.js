function gi_registro(){


	var Titulo = document.frm_gestion_incidente.gi_titulo.value;
	var Tipo = document.frm_gestion_incidente.gi_tipo.value;
	var Descripcion = document.frm_gestion_incidente.gi_descripcion.value;

	$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{gi_titulo:Titulo,gi_tipo:Tipo,gi_descripcion:Descripcion}


	}).done(function(msg){
		
		$("#mos_gestion_incidente").show();
		$("#mos_gestion_incidente").html('');
		$("#mos_gestion_incidente").html(msg);
		$("#frm_gestion_incidente")[0].reset(2000);

	})

}



function gi_contenido(){


	var Contenido = document.frm_gestion_incidente_contenido.contenido_gi.value;
	
	var Id = document.frm_gestion_incidente_contenido.id_gi.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{gi_contenido:Contenido,id_gi:Id}
		}).done(function(msg){

			$("#mos_gestion_incidente_contenido").show();
			$("#mos_gestion_incidente_contenido").html('');
			$("#mos_gestion_incidente_contenido").html(msg);
			$("#gestion_incidente_contenido")[0].reset(2000);
			
		});	
}



function gi_modificar_titulo(){

	var Titulo = document.frm_gimodificar_titulo.titulo_gi.value;
	var Tipo = document.frm_gimodificar_titulo.tipo_gi.value;
	var Id = document.frm_gimodificar_titulo.idmodificar_gi_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_gi:Titulo,tipo_gi:Tipo,idmodificar_gi_titulo:Id}
		}).done(function(msg){

			$("#mos_gestion_incidente_titulo").show();
			$("#mos_gestion_incidente_titulo").html(msg);
			$("#mos_gestion_incidente_titulo")[0].reset(0);
			
	
		});

}


function gi_modificar_descripcion(){

	var Descripcion = document.frm_gimodificar_descripcion.descripcion_gi.value;
	var Id = document.frm_gimodificar_descripcion.idmodificar_gi_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_gi:Descripcion,idmodificar_gi_descripcion:Id}
		}).done(function(msg){

				$("#mos_gestion_incidente_descripcion").show();
				$("#mos_gestion_incidente_descripcion").html(msg);
				$("#gimodificar_descripcion")[0].reset(2000);
			
	
		});

}


function gi_eliminar_titulo(){

	var Id = document.frm_gieliminar_titulo.ideliminar_gi_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_gi_titulo:Id}
		}).done(function(msg){

			$("#mos_gestion_incidente_titulo").show();
			$("#mos_gestion_incidente_titulo").html('');
			$("#mos_gestion_incidente_titulo").html(msg);
			$("#gieliminar_titulo").hide(2000);	
		});
}


function gi_eliminar_descripcion(){

	var Id = document.frm_gieliminar_descripcion.ideliminar_gi_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_gi_descripcion:Id}
		}).done(function(msg){

			$("#mos_gestion_incidente_descripcion").show();
			$("#mos_gestion_incidente_descripcion").html('');
			$("#mos_gestion_incidente_descripcion").html(msg);
			$("#gieliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INSTALACION


function gi_manual(){

	var form = new FormData($("#gi_manual")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_gestion_incidente_manual').show();
			$('#mos_gestion_incidente_manual').html(data);
			$('#mos_gestion_incidente_manual').hide(10000);
			
		


		}


	});



}

function gi_modificar_manual(){

	var Manual = document.frm_gimodificar_manual.manual_gi.value;
	var Tipo = document.frm_gimodificar_manual.tipo_manual_gi.value;
	var Id = document.frm_gimodificar_manual.idmodificar_gi_manual.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{manual_gi:Manual,tipo_manual_gi:Tipo,idmodificar_gi_manual:Id}
		}).done(function(msg){

			$("#mos_gestion_incidente_manual").show();
			$("#mos_gestion_incidente_manual").html('');
			$("#mos_gestion_incidente_manual").html(msg);
			
	
		});

}

function gi_modificar_manual_file(){

	
	var form = new FormData($("#gi_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_gestion_incidente_manual_file').show();
			$('#mos_gestion_incidente_manual_file').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});

}





function gi_eliminar_manual(){

	var Id = document.frm_gieliminar_manual.ideliminarmanu.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminarmanu:Id}
		}).done(function(msg){

			$("#mos_gestion_incidente_manual").show();
			$("#mos_gestion_incidente_manual").html('');
			$("#mos_gestion_incidente_manual").html(msg);
			$("#gieliminar_manual").hide(2000);	
		});
}




function gestion_tutorial(){

	var form = new FormData($("#gestion_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_gestion_tutorial').show();
			$('#mos_gestion_tutorial').html(data);
			
			$('#mos_gestion_tutorial').hide(10000);


		}


	});


}

function gi_modificar_tutorial(){

	var Tutorial = document.frm_gimodificar_tutorial.tutorial_gi.value;
	var Tipo = document.frm_gimodificar_tutorial.tipo_tutorial_gi.value;
	var Id = document.frm_gimodificar_tutorial.idmodificar_gi_tuto.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{tutorial_gi:Tutorial,tipo_tutorial_gi:Tipo,idmodificar_gi_tuto:Id}
		}).done(function(msg){

			$("#mos_gestion_incidente_tutorial").show();
			$("#mos_gestion_incidente_tutorial").html('');
			$("#mos_gestion_incidente_tutorial").html(msg);
			$("#gimodificar_tutorial")[0].reset(2000);
			
	
		});

}

function gi_modificar_tutorial_file(){

	
	var form = new FormData($("#gi_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_gestion_incidente_tutorial_file').show();
			$('#mos_gestion_incidente_tutorial_file').html(data);
			
			


		}


	});

}

function gi_eliminar_tutorial(){

	var Id = document.frm_gieliminar_tutorial.ideliminartuto.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminartuto:Id}
		}).done(function(msg){

			$("#mos_gestion_incidente_tutorial").show();
			$("#mos_gestion_incidente_tutorial").html('');
			$("#mos_gestion_incidente_tutorial").html(msg);
			$("#gieliminar_tutorial").hide(2000);	
		});
}





