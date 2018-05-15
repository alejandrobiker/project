function el_registrar(){

	var Titulo = document.frm_el_registrar.el_titulo.value;
	var Tipo = document.frm_el_registrar.el_tipo.value;
	var Descripcion = document.frm_el_registrar.el_descripcion.value;

$.ajax({

	type:"POST",
	url:"utilidad/php/Registrar.php",
	data:{el_titulo:Titulo,el_tipo:Tipo,el_descripcion:Descripcion}


}).done(function(msg){
	
	$("#mos_el").show();
	$("#mos_el").html('');
	$("#mos_el").html(msg);
	$("#uaf_el_registrar")[0].reset(2000);

})

}


function el_contenido(){


	var Contenido = document.frm_el_contenido.contenido_el.value;
	
	var Id = document.frm_el_contenido.id_el.value;

			
		$.ajax({
			type:"POST",
			url:"utilidad/php/Registrar.php",
			data:{el_contenido:Contenido,id_el:Id}
		}).done(function(msg){

			$("#mos_el_contenido").show();
			$("#mos_el_contenido").html('');
			$("#mos_el_contenido").html(msg);
			$("#el_contenido")[0].reset(2000);
			
		});	
}



function el_modificar_titulo(){

	var Titulo = document.frm_elmodificar_titulo.titulo_el.value;
	var Tipo = document.frm_elmodificar_titulo.tipo_el.value;
	var Id = document.frm_elmodificar_titulo.idmodificar_el_titulo.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{titulo_el:Titulo,tipo_el:Tipo,idmodificar_el_titulo:Id}
		}).done(function(msg){

			$("#mos_el_titulo").show();
			$("#mos_el_titulo").html('');
			$("#mos_el_titulo").html(msg);
			$("#elmodificar_titulo")[0].reset(2000);
			
	
		});

}


function el_modificar_descripcion(){

	var Descripcion = document.frm_elmodificar_descripcion.descripcion_el.value;
	var Id = document.frm_elmodificar_descripcion.idmodificar_el_descripcion.value;

$.ajax({
			type:"POST",
			url:"utilidad/php/Modificar.php",
			data:{descripcion_el:Descripcion,idmodificar_el_descripcion:Id}
		}).done(function(msg){

				$("#mos_el_descripcion").show();
				$("#mos_el_descripcion").html(msg);
				$("#elmodificar_descripcion").hide(2000);
			
	
		});

}


function el_eliminar_titulo(){

	var Id = document.frm_eleliminar_titulo.ideliminar_el_titulo.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_el_titulo:Id}
		}).done(function(msg){

			$("#mos_el_titulo").show();
			$("#mos_el_titulo").html('');
			$("#mos_el_titulo").html(msg);
			$("#eleliminar_titulo").hide(2000);	
		});
}


function el_eliminar_descripcion(){

	var Id = document.frm_eleliminar_descripcion.ideliminar_el_descripcion.value;

		$.ajax({
			type:"POST",
			url:"utilidad/php/Eliminar.php",
			data:{ideliminar_el_descripcion:Id}
		}).done(function(msg){

			$("#mos_el_descripcion").show();
			$("#mos_el_descripcion").html('');
			$("#mos_el_descripcion").html(msg);
			$("#eleliminar_descripcion").hide(2000);	
		});
}











// COMIENZA EL MODULO DE INSTALACION


function el_manual(){

	var form = new FormData($("#el_manual")[0]);
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
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gsif'> ");


		}


	});



}


function el_modificar_manual(){


	var form = new FormData($("#el_modificar_manual")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_el_manual').show();
			$('#mos_el_manual').html(data);
			
		

		}


	});



}



function el_modificar_manual_file(){


	var form = new FormData($("#el_modificar_manual_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_el_manual_file').show();
			$('#mos_el_manual_file').html(data);
			
		

		}


	});



}

function el_eliminar_manual(){


	var form = new FormData($("#el_eliminar_manual")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_el_manual').show();
			$('#mos_el_manual').html(data);
			$("#oameliminar_manual").hide(2000);	
		

		}


	});



}


function el_eliminar_tutorial(){


	var form = new FormData($("#el_eliminar_tutorial")[0]);
	var ruta = 'utilidad/php/Eliminar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_el_tutorial').show();
			$('#mos_el_tutorial').html(data);
			$("#faeliminar_tutorial").hide(2000);	
		

		}


	});



}

function el_modificar_tutorial_file(){


	var form = new FormData($("#el_modificar_tutorial_file")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_el_tutorial_file').show();
			$('#mos_el_tutorial_file').html('');
			$('#mos_el_tutorial_file').html(data);
			
		

		}


	});



}

function el_modificar_tutorial(){


	var form = new FormData($("#el_modificar_tutorial")[0]);
	var ruta = 'utilidad/php/Modificar.php';
	
	

	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#mos_el_tutorial').show();
			$('#mos_el_tutorial').html(data);
			
		

		}


	});



}




function el_tutorial(){

	var form = new FormData($("#el_tutoriales")[0]);
	var ruta = 'utilidad/php/Registrar.php';
	
	
	
	
	$.ajax({
		url: ruta,
		type: "POST",
		data: form,
		contentType:false,
		processData:false,
		success:function(data){

			$('#res_el_tutoriales').show();
			$('#res_el_tutoriales').html(data);
			
			$("#mostrar").html("<img src='../img/AgregarImagenes.gif'> ");


		}


	});



}





