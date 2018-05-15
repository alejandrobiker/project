<?php 

	$id = $_POST['ideliminar_usuario'];
	$rol = $_POST['rol_usu'];

	if ($rol == "Administrador"){	
		
		echo 'No se puede eliminar el Administrador';
?>

	-BD
	-validacion
	-Formulario
	-JS
	-Registrar
	-INSERT
	
<?php

	if ($sesion['TIPO'] != "privado" || $_SESSION['userrol'] == "Administrador Formacion presencial en Linea" || $_SESSION['userrol'] == "Usuario Servicios Tecnicos") {
		#code...
	}
?>

		<!-- 1) Para el formulario, colocarlo en todos los modales de registrar -->
			<span class="input-group-addon">Tipo de Contenido</span>
				<select name="gi_tipo" class="form-control" required/>
				<option value="publico">Público</option>
				<option value="privado">Privado</option>
			</select>

		<!-- 2) En funciones agregar la nueva variable TIPO -->

		var Tipo = document.frm_sl_registrar.sl_tipo.value;

		<!-- 3) En registrar colocar las variables nuevas, y pasarlo por parametro  -->

		<!-- 4) Crear las variables nuevas y agregarlos en los insert -->



		Para modificar la validacion del tamaño del documento copiamos este codigo (Para registrar y modificar manual y tutorial)

		if($file['size'] > 15000000){ //capacidad maxima para el archivo 4mb

			$reporte .= "<p style='color:red'>Error, El archivo supera el maximo de tamaño </p>";
		
		}elseif(...)

		if($file['size'] > 40000000){ //capacidad maxima para el archivo 4mb

			$reporte .= "<p style='color:red'>Error, El archivo supera el maximo de tamaño </p>";
		
		}elseif(...)

		Formatos permitidos: PDF - ODT - DOCX
		Tamaño Máximo: 15 MB

		para listar en la base de datos

		SELECT * FROM usuarios_wiki WHERE ROL LIKE 'Administrador Vencert'


					<div class="col-md-10">
							<div class="thumbnail">
								<!-- Menu Dinamico -->
								<div class="tabbable" id="tabs-351531">						
									<ul id="nav-menu1" class="nav nav-tabs">
										<li id="articulo" class="hover-shadow" ><a href="index">Artículo</a></li>
										<li id="manual" class="hover-shadow" ><a href="manual">Manual</a></li>
										<li id="tutoriales" class="hover-shadow"><a href="tutoriales">Tutoriales</a></li>				
										<?php
										if ($_SESSION['usercedula'] != null && $_SESSION['userrol'] == "Manager Cenif" || $_SESSION['userrol'] == "Usuario Cenif") {
										echo'<li><a class="logo_download" href="reporte_wikipdf.php" title="Reporte de Artículo"><img src="../../utilidad/img/pdf_download.png"></a></li>';
										}
										?>
									</ul>	
								</div>

			<div class="alert alert-info" role="alert" align="center">Formatos permitidos: PDF - ODT - DOCX<br>Tamaño máximo de archivo: 15 MB</div>

			<div class="alert alert-info" role="alert" align="center">Formatos permitidos: MP4 - WEBM <br> Tamaño máximo de video: 40 MB</div>