function usuario_registro(){

	var form = new FormData($("#usuario_registro")[0]);
	var ruta = '../utilidad/php/usuarios/Registrar.php';

		$.ajax({
			url: ruta,
			type: "POST",
			data: form,
			contentType:false,
			processData:false,
			success:function(data){

			$('#mos_usuario').show();
			$('#mos_usuario').html(data);
			$('#mos_usuarios').hide(10000);
			$('#usuario_reset')[0].reset(2000);
		}


	});

}

function modificar_usuario(){

	var Nombres = document.frm_modificar_usuario.nombres.value;
	var Apellidos = document.frm_modificar_usuario.apellidos.value;	
	var Cedula = document.frm_modificar_usuario.cedula.value;
	var Clave = document.frm_modificar_usuario.clave.value;
	var Rclave = document.frm_modificar_usuario.rclave.value;
	var Email = document.frm_modificar_usuario.email.value;
	var Id = document.frm_modificar_usuario.idmodificar_usuario.value;
	
		$.ajax({
			type:"POST",
			url:'../utilidad/php/usuarios/Modificar.php',
			data:{nombres:Nombres,apellidos:Apellidos,cedula:Cedula,clave:Clave,rclave:Rclave,email:Email,idmodificar_usuario:Id}
		}).done(function(msg){
			$("#mos_usu").show();
			$("#mos_usu").html(msg);
		});
}


function eliminar_usuario(){

	var Id = document.frm_eliminar_usuario.ideliminar_usuario.value;
	var Rol = document.frm_eliminar_usuario.rol_usu.value;

		$.ajax({
			type:"POST",
			url:"../utilidad/php/usuarios/Eliminar.php",
			data:{ideliminar_usuario:Id,rol_usu:Rol}
		}).done(function(msg){

			$("#eliminado").show();
			$("#eliminado").html(msg);
			$("#elimi_boton").hide(2000);
		});
}




function cambioclave(){


	var Clave = document.frm_pass.clave.value;
	var RClave = document.frm_pass.rclave.value;
	var ViejaClave = document.frm_pass.viejaclave.value;


	$.ajax({
		type:"POST",
		url:"utilidad/php/usuarios/Modificar.php",
		data:{clave:Clave,rclave:RClave,viejaclave:ViejaClave}
	}).done(function(msg){

			$('#responder').show();
			$("#responder").html(msg);
			$("#subida")[0].reset();
			//$("#cambiarclave").hide(2000);



	})	


}