function pr_registrar(){

	var Titulo = document.frm_pr_registrar.pr_titulo.value;
	var Tipo = document.frm_pr_registrar.pr_tipo.value;
	var Descripcion = document.frm_pr_registrar.pr_descripcion.value;

$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{pr_titulo:Titulo,pr_tipo:Tipo,pr_descripcion:Descripcion}


}).done(function(msg){
	
	$("#mos_pr").show();
	$("#mos_pr").html('');
	$("#mos_pr").html(msg);
	$("#pr_registrar")[0].reset(2000);

})

}


function pr_contenido(){


	var Contenido = document.frm_pr_contenido.contenido_pr.value;
	
	var Id = document.frm_pr_contenido.id_pr.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{pr_contenido:Contenido,id_pr:Id}
		}).done(function(msg){

			$("#mos_pr_contenido").show();
			$("#mos_pr_contenido").html('');
			$("#mos_pr_contenido").html(msg);
			$("#pr_contenido")[0].reset(2000);
			
		});	
}



function pr_modificar_titulo(){

	var Titulo = document.frm_prmodificar_titulo.titulo_pr.value;
	var Tipo = document.frm_prmodificar_titulo.tipo_pr.value;
	var Id = document.frm_prmodificar_titulo.idmodificar_pr_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_pr:Titulo,tipo_pr:Tipo,idmodificar_pr_titulo:Id}
		}).done(function(msg){

			$("#mos_pr_titulo").show();
			$("#mos_pr_titulo").html('');
			$("#mos_pr_titulo").html(msg);
			
	
		});

}


function pr_modificar_descripcion(){

	var Descripcion = document.frm_prmodificar_descripcion.descripcion_pr.value;
	var Id = document.frm_prmodificar_descripcion.idmodificar_pr_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_pr:Descripcion,idmodificar_pr_descripcion:Id}
		}).done(function(msg){

				$("#mos_pr_descripcion").show();
				$("#mos_pr_descripcion").html(msg);
				$("#prmodificar_descripcion").hide(2000);
			
	
		});

}


function pr_eliminar_titulo(){

	var Id = document.frm_preliminar_titulo.ideliminar_pr_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_pr_titulo:Id}
		}).done(function(msg){

			$("#mos_pr_titulo").show();
			$("#mos_pr_titulo").html('');
			$("#mos_pr_titulo").html(msg);
			$("#preliminar_titulo").hide(2000);	
		});
}


function pr_eliminar_descripcion(){

	var Id = document.frm_preliminar_descripcion.ideliminar_pr_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_pr_descripcion:Id}
		}).done(function(msg){

			$("#mos_pr_descripcion").show();
			$("#mos_pr_descripcion").html('');
			$("#mos_pr_descripcion").html(msg);
			$("#preliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INTALACION


function pr_manual(){

	var form = new FormData($("#pr_manual")[0]);
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

	
	function pr_modificar_manual(){


	var form = new FormData($("#pr_modificar_manual")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pr_manual').show();
			$('#mos_pr_manual').html(data);
			
		

		}


	});



}



function pr_modificar_manual_file(){


	var form = new FormData($("#pr_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pr_manual_file').show();
			$('#mos_pr_manual_file').html(data);
			
		

		}


	});



}

function pr_eliminar_manual(){


	var form = new FormData($("#pr_eliminar_manual")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pr_manual').show();
			$('#mos_pr_manual').html(data);
			$("#oameliminar_manual").hide(2000);
		

		}


	});



}


function pr_eliminar_tutorial(){


	var form = new FormData($("#pr_eliminar_tutorial")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pr_tutorial').show();
			$('#mos_pr_tutorial').html(data);
			$("#faeliminar_tutorial").hide(2000);
		

		}


	});



}

function pr_modificar_tutorial_file(){


	var form = new FormData($("#pr_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pr_tutorial_file').show();
			$('#mos_pr_tutorial_file').html('');
			$('#mos_pr_tutorial_file').html(data);
			
		

		}


	});



}

function pr_modificar_tutorial(){


	var form = new FormData($("#pr_modificar_tutorial")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_pr_tutorial').show();
			$('#mos_pr_tutorial').html(data);
			
		

		}


	});



}



function pr_tutorial(){

	var form = new FormData($("#pr_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#res_pr_tutoriales').show();
			$('#res_pr_tutoriales').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}





