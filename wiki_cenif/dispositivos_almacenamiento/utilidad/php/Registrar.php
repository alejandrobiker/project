<?php

include("Dispositivos_Almacenamiento.php");


	if(isset($_POST['da_titulo']) && !empty($_POST['da_titulo']) &&
		isset($_POST['da_tipo']) && !empty($_POST['da_tipo']) &&
		isset($_POST['da_descripcion']) && !empty($_POST['da_descripcion'])){


			$titulo = $_POST['da_titulo'];
			$tipo = $_POST['da_tipo'];
			$descripcion = $_POST['da_descripcion'];

			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Registrar','uaf_dispositivo_almacenamiento_articulo_t')",$con);

		$obj = new Dispositivos_Almacenamiento();
		$obj->Dispositivos_Almacenamiento($titulo,$tipo);
		$obj->Registrar_Titulo();				

		$rs = mysql_query("SELECT MAX(ID_DAAT) AS id FROM uaf_dispositivo_almacenamiento_articulo_t");
				if ($row = mysql_fetch_row($rs)) {
					$id = trim($row[0]);

					$obj = new Dispositivos_Almacenamiento();
					$obj->ObtenerM($id,$descripcion);
					$obj->Registrar_Descripcion();

					echo " Datos registrados correctamente";

				}

	}	elseif(isset($_POST['id_da']) && !empty ($_POST['id_da']) &&
		isset($_POST['da_contenido']) && !empty ($_POST['da_contenido'])){

		$id = $_POST['id_da'];
		$descripcion = $_POST['da_contenido'];
		
			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Registrar','uaf_dispositivo_almacenamiento_articulo_d')",$con);

						$obj = new Dispositivos_Almacenamiento();
						$obj->ObtenerM($id,$descripcion);
						$obj->Registrar_Descripcion();

						echo " Contenido registrado correctamente";

						

	}elseif (isset($_FILES['file_da_manual']) && !empty($_FILES['file_da_manual']) &&
		isset($_POST['da_manual_tipo']) && !empty($_POST['da_manual_tipo']) &&
		isset($_POST['da_manual_titulo']) && !empty($_POST['da_manual_titulo'])) {
		# code...

		$valor = $_POST['da_manual_tipo']; 	
		$titulo = $_POST['da_manual_titulo']; 	
		$file = $_FILES["file_da_manual"];


			$nombre = $file["name"];
		$tipo = $file["type"];
		$ruta_provicional = $file["tmp_name"];
		$size = $file["size"];
		$dimensiones = getimagesize($ruta_provicional);
		$width = $dimensiones[0];
		$heihg = $dimensiones[1];
		$carpeta = "../manual/";
		$reporte = "";
		
		if($file['size'] > 15000000){ //capacidad maxima para el archivo 4mb

			$reporte .= "<p style='color:red'>Error, El archivo supera el maximo de tamaño. </p>";
		
		}elseif($tipo=="application/octet-stream" || $tipo=="application/pdf" || $tipo =="application/vnd.oasis.opendocument.text" || $tipo == "application/vnd.openxmlformats-officedocument.wordprocessingml.document"){ 
		$src = $carpeta.$nombre;
			
			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Registrar','uaf_dispositivo_almacenamiento_manual')",$con);
					
			$obj = new Dispositivos_Almacenamiento();
			$obj->Obtener_Registrar_Multimedia($titulo,$valor,$src);
			$obj->Registrar_Manual();


			move_uploaded_file($ruta_provicional,$src);
			
				$reporte .= "<p> Datos registrado exitosamente.</p>";

		}else{

			$reporte .= "<p style='color:red'>Error, el archivo no es un documento.</p>";


		}
			

				echo $reporte;
		


			//move_uploaded_file($ruta_provicional,$src);
			
	}elseif(isset($_FILES['file_da_tutorial']) && !empty($_FILES['file_da_tutorial']) &&
		isset($_POST['da_tutorial_tipo']) && !empty($_POST['da_tutorial_tipo']) &&
		isset($_POST['da_tutorial_titulo']) && !empty($_POST['da_tutorial_titulo'])){


		$valor = $_POST['da_tutorial_tipo']; 	
		$titulo = $_POST['da_tutorial_titulo']; 	
		$file = $_FILES["file_da_tutorial"];

		$nombre = $file["name"];
		$tipo = $file["type"];
		$ruta_provicional = $file["tmp_name"];
		$size = $file["size"];
		$dimensiones = getimagesize($ruta_provicional);
		$width = $dimensiones[0];
		$heihg = $dimensiones[1];
		$carpeta = "../tutorial/";

		$reporte = "";

		$src = $carpeta.$nombre;

		if($file['size'] > 40000000){ //capacidad maxima para el archivo 4mb

			$reporte .= "<p style='color:red'>Error, El archivo supera el maximo de tamaño. </p>";
		
		}elseif(  $tipo=="video/webm" || $tipo=="video/webm.webm" || $tipo=="video/mp4" || $tipo=="video/MPEG-4"){ 
				
			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Registrar','uaf_dispositivo_almacenamiento_tutorial')",$con);

			$obj = new Dispositivos_Almacenamiento();
			$obj->Obtener_Registrar_Multimedia($titulo,$valor,$nombre);
			$obj->Registrar_Tutorial();



					move_uploaded_file($ruta_provicional,$src);

					$reporte .= "<p> Datos registrado exitosamente. </p>";



				}else{

				
					$reporte .= "<p style='color:red'>Error, el archivo no es un video.</p>";


				}
	
				echo $reporte;






	}else{

		echo "nO SE ENCONTRO NINGUNA FUNCION";

	}









?>