<?php

include("Img_Aud_Vid.php");

	if(isset($_POST['titulo_iva']) && !empty ($_POST['titulo_iva']) &&
		isset($_POST['tipo_iva']) && !empty ($_POST['tipo_iva']) &&
	isset($_POST['idmodificar_iva_titulo']) && !empty ($_POST['idmodificar_iva_titulo'])){

		$id = $_POST['idmodificar_iva_titulo'];
		$titulo = $_POST['titulo_iva'];
		$tipo = $_POST['tipo_iva'];

			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Modificar','uaf_imagen_video_audio_articulo_t')",$con);

		$obj = new Img_Aud_Vid();
		$obj->ObtenerM($id,$titulo,$tipo);
		$obj->Modificar_Titulo();
			
		echo "Título editado correctamente";


	}elseif(isset($_POST['descripcion_iva']) && !empty ($_POST['descripcion_iva']) &&
	isset($_POST['idmodificar_iva_descripcion']) && !empty ($_POST['idmodificar_iva_descripcion'])){

		$id = $_POST['idmodificar_iva_descripcion'];
		$descripcion = $_POST['descripcion_iva'];

			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Modificar','uaf_imagen_video_audio_articulo_d')",$con);

		$obj = new Img_Aud_Vid();
		$obj->ObtenerM($id,$descripcion);
		$obj->Modificar_Descripcion();

		echo "Descripción modificado correctamente";
	
	}
	
	elseif(isset($_POST['manual_iva']) && !empty ($_POST['manual_iva']) &&	
		isset($_POST['manual_tipo_iva']) && !empty ($_POST['manual_tipo_iva']) &&
		isset($_POST['idmodificar_iva_manual']) && !empty ($_POST['idmodificar_iva_manual'])){

		$id = $_POST['idmodificar_iva_manual'];
		$descripcion = $_POST['manual_iva'];
		$tipo = $_POST['manual_tipo_iva'];
		
			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Modificar','uaf_imagen_video_audio_manual')",$con);

		$obj = new Img_Aud_Vid();
		$obj->ObtenerM($id,$descripcion,$tipo);
		$obj->Modificar_Manual();

		echo "Titulo del manual modificado correctamente";
	
	}

	elseif(isset($_POST['tutorial_iva']) && !empty ($_POST['tutorial_iva']) &&	
		isset($_POST['tutorial_tipo_iva']) && !empty ($_POST['tutorial_tipo_iva']) &&
		isset($_POST['idmodificar_iva_tuto']) && !empty ($_POST['idmodificar_iva_tuto'])){

		$id = $_POST['idmodificar_iva_tuto'];
		$descripcion = $_POST['tutorial_iva'];
		$tipo = $_POST['tutorial_tipo_iva'];

			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Modificar','uaf_imagen_video_audio_tutorial')",$con);

		$obj = new Img_Aud_Vid();
		$obj->ObtenerM($id,$descripcion,$tipo);
		$obj->Modificar_Tutorial();

		echo "Titulo del video modificado correctamente";
	
	}elseif(isset($_FILES['iva_manual_file']) && !empty ($_FILES['iva_manual_file']) &&
	isset($_POST['idmodificar_iva_manual_file']) && !empty ($_POST['idmodificar_iva_manual_file'])){

		$id = $_POST['idmodificar_iva_manual_file'];
		$file= $_FILES['iva_manual_file'];



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
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Modificar','uaf_imagen_video_audio_manual')",$con);

				$obj = new Img_Aud_Vid();
				$obj->Obtener_Modificar_Multimedia($id,$src);
				$obj->Modificar_Manual_File();

			move_uploaded_file($ruta_provicional,$src);
			
				$reporte .= "<p> Datos registrado exitosamente.</p>";

		}else{

			$reporte .= "<p style='color:red'>Error, el archivo no es un documento.</p>";


		}
			

				echo $reporte;


	
	}elseif(isset($_FILES['iva_tutorial_file']) && !empty ($_FILES['iva_tutorial_file']) &&
	isset($_POST['idmodificar_iva_tutorial_file']) && !empty ($_POST['idmodificar_iva_tutorial_file'])){

		$id = $_POST['idmodificar_iva_tutorial_file'];
		$file= $_FILES['iva_tutorial_file'];


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
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Modificar','uaf_imagen_video_audio_tutorial')",$con);

					
		$obj = new Img_Aud_Vid();
		$obj->Obtener_Modificar_Multimedia($id,$nombre);
		$obj->Modificar_Tutorial_File();

					move_uploaded_file($ruta_provicional,$src);

					$reporte .= "<p> Datos registrado exitosamente. </p>";



				}else{

				
					$reporte .= "<p style='color:red'>Error, el archivo no es un video.</p>";


				}
	
				echo $reporte;


		
	
	}else{


	echo "Datos Vacio";

}


?>