<?php

include("Fuentes_Abiertas.php");

	if(isset($_POST['titulo_fa']) && !empty ($_POST['titulo_fa']) &&
	isset($_POST['tipo_fa']) && !empty ($_POST['tipo_fa'])&&
	isset($_POST['idmodificar_fa_titulo']) && !empty ($_POST['idmodificar_fa_titulo'])){

		$id = $_POST['idmodificar_fa_titulo'];
		$titulo = $_POST['titulo_fa'];
		$tipo = $_POST['tipo_fa'];

		include('../../../../utilidad/php/Conexion.php');
		include('../../../../utilidad/php/ObtenerIp.php');		

		$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
	
		mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Modificar','uaf_fuentes_abiertas_articulo_t')",$con);

		$obj = new Fuentes_Abiertas();
		$obj->ObtenerM($id,$titulo,$tipo);
			$obj->Modificar_Titulo();
			
		echo "Título editado correctamente";


	}elseif(isset($_POST['descripcion_fa']) && !empty ($_POST['descripcion_fa']) &&
	isset($_POST['idmodificar_fa_descripcion']) && !empty ($_POST['idmodificar_fa_descripcion'])){

		$id = $_POST['idmodificar_fa_descripcion'];
		$descripcion = $_POST['descripcion_fa'];

		include('../../../../utilidad/php/Conexion.php');
		include('../../../../utilidad/php/ObtenerIp.php');		

		$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
	
		mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Modificar','uaf_fuentes_abiertas_articulo_d')",$con);

		$obj = new Fuentes_Abiertas();
		$obj->ObtenerM($id,$descripcion);
		$obj->Modificar_Descripcion();

		echo "Descripción modificado correctamente";
	
	}


	
	elseif(isset($_POST['manual_fa']) && !empty ($_POST['manual_fa']) &&
	isset($_POST['tipo_manual_fa']) && !empty ($_POST['tipo_manual_fa'])&&
	isset($_POST['idmodificar_fa_manual']) && !empty ($_POST['idmodificar_fa_manual'])){

		$id = $_POST['idmodificar_fa_manual'];
		$descripcion = $_POST['manual_fa'];
		$tipo = $_POST['tipo_manual_fa'];

		include('../../../../utilidad/php/Conexion.php');
		include('../../../../utilidad/php/ObtenerIp.php');		

		$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
	
		mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Modificar','uaf_fuentes_abiertas_manual')",$con);

		$obj = new Fuentes_Abiertas();
		$obj->ObtenerM($id,$descripcion,$tipo);
		$obj->Modificar_Manual();

		echo "Titulo del manual modificado correctamente";
	
	}

	elseif(isset($_POST['tutorial_fa']) && !empty ($_POST['tutorial_fa']) &&
	isset($_POST['tipo_tutorial_fa']) && !empty ($_POST['tipo_tutorial_fa'])&&
	isset($_POST['idmodificar_fa_tuto']) && !empty ($_POST['idmodificar_fa_tuto'])){

		$id = $_POST['idmodificar_fa_tuto'];
		$descripcion = $_POST['tutorial_fa'];
		$tipo = $_POST['tipo_tutorial_fa'];

		include('../../../../utilidad/php/Conexion.php');
		include('../../../../utilidad/php/ObtenerIp.php');		

		$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
	
		mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Modificar','uaf_fuentes_abiertas_tutorial')",$con);

		$obj = new Fuentes_Abiertas();
		$obj->ObtenerM($id,$descripcion,$tipo);
		$obj->Modificar_Tutorial();

		echo "Titulo del video modificado correctamente";
	
	}elseif(isset($_FILES['fa_manual_file']) && !empty ($_FILES['fa_manual_file']) &&
	isset($_POST['idmodificar_fa_manual_file']) && !empty ($_POST['idmodificar_fa_manual_file'])){

		$id = $_POST['idmodificar_fa_manual_file'];
		$file= $_FILES['fa_manual_file'];



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
			
				mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Modificar','uaf_fuentes_abiertas_manual')",$con);

				$obj = new Fuentes_Abiertas();
				$obj->Obtener_Modificar_Multimedia($id,$src);
				$obj->Modificar_Manual_File();

			move_uploaded_file($ruta_provicional,$src);
			
				$reporte .= "<p> Datos registrado exitosamente.</p>";

		}else{

			$reporte .= "<p style='color:red'>Error, el archivo no es un documento.</p>";


		}
			

				echo $reporte;


	
	}elseif(isset($_FILES['fa_tutorial_file']) && !empty ($_FILES['fa_tutorial_file']) &&
	isset($_POST['idmodificar_fa_tutorial_file']) && !empty ($_POST['idmodificar_fa_tutorial_file'])){

		$id = $_POST['idmodificar_fa_tutorial_file'];
		$file= $_FILES['fa_tutorial_file'];


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
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Modificar','uaf_fuentes_abiertas_tutorial')",$con);	

					
		$obj = new Fuentes_Abiertas();
		$obj->Obtener_Modificar_Multimedia($id,$nombre);
		$obj->Modificar_Tutorial_File();

					move_uploaded_file($ruta_provicional,$src);

					$reporte .= "<p> Datos registrado exitosamente. </p>";



				}else{

				
					$reporte .= "<p style='color:red'>Error, el archivo no es un video.</p>";


				}
	
				echo $reporte;


		
	
	}
else{


	echo "Datos Vacio";

}


?>