<?php

//ini_set('display_errors', 0); // no muestra los errores

include("Gestion_Incidente.php");


if(isset($_POST['gi_titulo']) && !empty ($_POST['gi_titulo']) &&
	isset($_POST['gi_tipo']) && !empty ($_POST['gi_tipo']) &&
	isset($_POST['gi_descripcion']) && !empty ($_POST['gi_descripcion']))
{

	$titulo = $_POST['gi_titulo'];
	$tipo = $_POST['gi_tipo'];
	$descripcion = $_POST['gi_descripcion'];
		

		include('../../../../utilidad/php/Conexion.php');
		include('../../../../utilidad/php/ObtenerIp.php');		

		$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
	
		mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Registrar','gestion_incidente_articulo_t')",$con);


		$obj = new Gestion_Incidente();
		$obj->Gestion_Incidente($titulo,$tipo);
		$obj->Registrar_Titulo();


		$rs = mysql_query("SELECT MAX(ID_GIT) AS id FROM gestion_incidente_articulo_t");
				if ($row = mysql_fetch_row($rs)) {
					$id = trim($row[0]);

					$obj = new Gestion_Incidente();
					$obj->ObtenerM($id,$descripcion);
					$obj->Registrar_Descripcion();

					echo " Datos registrados correctamente";

		}

		
	}  elseif(isset($_POST['id_gi']) && !empty ($_POST['id_gi']) &&
		isset($_POST['gi_contenido']) && !empty ($_POST['gi_contenido'])){

		$id = $_POST['id_gi'];
		$descripcion = $_POST['gi_contenido'];
		
		include('../../../../utilidad/php/Conexion.php');
		include('../../../../utilidad/php/ObtenerIp.php');		

		$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
	
		mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Registrar','gestion_incidente_articulo_d')",$con);

					$obj = new Gestion_Incidente();
					$obj->ObtenerM($id,$descripcion);
					$obj->Registrar_Descripcion();

					echo " Contenido registrado correctamente";

	}elseif (isset($_FILES['gi_manual_file']) && !empty($_FILES['gi_manual_file']) &&
		isset($_POST['gi_manual_tipo']) && !empty($_POST['gi_manual_tipo']) &&
		isset($_POST['gi_manual_titulo']) && !empty($_POST['gi_manual_titulo'])) {
		# code...

		$valor = $_POST['gi_manual_tipo']; 	
		$titulo = $_POST['gi_manual_titulo']; 	
		$file = $_FILES["gi_manual_file"];
		$nombre = $file["name"];
		$tipo = $file["type"];
		$ruta_provicional = $file["tmp_name"];
		$size = $file["size"];
		$dimensiones = getimagesize($ruta_provicional);
		$width = $dimensiones[0];
		$heihg = $dimensiones[1];
		$carpeta = "../manual/";
		$reporte = "";
		
		if($file['size'] > 15000000){ //capacidad maxima para el archivo 15mb

			$reporte .= "<p style='color:red'>Error, El archivo supera el maximo de tamaño. </p>";
		
		}elseif($tipo=="application/octet-stream" || $tipo == "application/pdf" || $tipo =="application/vnd.oasis.opendocument.text" || $tipo == "application/vnd.openxmlformats-officedocument.wordprocessingml.document"){ 
		$src = $carpeta.$nombre;
			
			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Registrar','gestion_incidente_manual')",$con);

			$obj = new Gestion_Incidente();
			$obj->Obtener_Registrar_Multimedia($titulo,$valor,$src);
			$obj->Registrar_Manual();

			move_uploaded_file($ruta_provicional,$src);
			
				$reporte .= "<p> Datos registrado exitosamente. </p>";

		}else{

			$reporte .= "<p style='color:red'>Error, El archivo no es un documento.</p>";


		}

				echo $reporte;
			
			
	}elseif(isset($_FILES['gi_tutorial_file']) && !empty($_FILES['gi_tutorial_file']) &&
		isset($_POST['gi_tutorial_tipo']) && !empty($_POST['gi_tutorial_tipo']) &&
		isset($_POST['gi_tutorial_titulo']) && !empty($_POST['gi_tutorial_titulo'])){

		$valor = $_POST['gi_tutorial_tipo']; 
		$titulo = $_POST['gi_tutorial_titulo']; 	
		$file = $_FILES["gi_tutorial_file"];
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

		if($file['size'] > 40000000){ //capacidad maxima para el archivo 40mb

			$reporte .= "<p style='color:red'>Error, El archivo supera el maximo de tamaño. </p>";
		
		}elseif(  $tipo=="video/webm" || $tipo=="video/webm.webm" || $tipo=="video/mp4" || $tipo=="video/MPEG-4"){
						
					include('../../../../utilidad/php/Conexion.php');
					include('../../../../utilidad/php/ObtenerIp.php');		

					$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
						mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
				
					mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Registrar','gestion_incidente_tutorial')",$con);


					$obj = new Gestion_Incidente();
					$obj->Obtener_Registrar_Multimedia($titulo,$valor,$nombre);
					$obj->Registrar_Tutorial();

					move_uploaded_file($ruta_provicional,$src);

					$reporte .= "<p> Datos registrado exitosamente. </p>";

		}else{

				
			$reporte .= "<p style='color:red'>Error, el archivo no es un video. </p>";


		}
	
			echo $reporte;
				

	}else{

		echo "Error";

	}




?>