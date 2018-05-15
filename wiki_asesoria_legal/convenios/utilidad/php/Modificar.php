<?php

include("Convenios.php");

	if(isset($_POST['titulo_con']) && !empty ($_POST['titulo_con']) &&
		isset($_POST['tipo_con']) && !empty ($_POST['tipo_con']) &&
	isset($_POST['idmodificar_con_titulo']) && !empty ($_POST['idmodificar_con_titulo'])){

		$id = $_POST['idmodificar_con_titulo'];
		$titulo = $_POST['titulo_con'];
		$tipo = $_POST['tipo_con'];

			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Modificar','convenios_articulo_t')",$con);

		$obj = new Convenios();
		$obj->ObtenerM($id,$titulo,$tipo);
			$obj->Modificar_Titulo();
			
		echo "Título editado correctamente";


	}elseif(isset($_POST['descripcion_con']) && !empty ($_POST['descripcion_con']) &&
	isset($_POST['idmodificar_con_descripcion']) && !empty ($_POST['idmodificar_con_descripcion'])){

		$id = $_POST['idmodificar_con_descripcion'];
		$descripcion = $_POST['descripcion_con'];

			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Modificar','convenios_articulo_d')",$con);

		$obj = new Convenios();
		$obj->ObtenerM($id,$descripcion);
		$obj->Modificar_Descripcion();

		echo "Descripción modificado correctamente";
	
	}

elseif(isset($_POST['manual_con']) && !empty ($_POST['manual_con']) &&
	isset($_POST['manual_tipo_con']) && !empty ($_POST['manual_tipo_con']) &&
	isset($_POST['idmodificar_con_manual']) && !empty ($_POST['idmodificar_con_manual'])){

		$id = $_POST['idmodificar_con_manual'];
		$descripcion = $_POST['manual_con'];
		$tipo = $_POST['manual_tipo_con'];
		
			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Modificar','convenios_manual')",$con);

		$obj = new Convenios();
		$obj->ObtenerM($id,$descripcion,$tipo);
		$obj->Modificar_Manual();

		echo "Titulo del manual modificado correctamente";
	
	}

	elseif(isset($_POST['tutorial_con']) && !empty ($_POST['tutorial_con']) &&
		isset($_POST['tutorial_tipo_con']) && !empty ($_POST['tutorial_tipo_con']) &&
	isset($_POST['idmodificar_con_tuto']) && !empty ($_POST['idmodificar_con_tuto'])){

		$id = $_POST['idmodificar_con_tuto'];
		$descripcion = $_POST['tutorial_con'];
		$tipo = $_POST['tutorial_tipo_con'];

			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Modificar','convenios_tutorial')",$con);

		$obj = new Convenios();
		$obj->ObtenerM($id,$descripcion,$tipo);
		$obj->Modificar_Tutorial();

		echo "Titulo del video modificado correctamente";
	
	}elseif(isset($_FILES['con_manual_file']) && !empty ($_FILES['con_manual_file']) &&
	isset($_POST['idmodificar_con_manual_file']) && !empty ($_POST['idmodificar_con_manual_file'])){

		$id = $_POST['idmodificar_con_manual_file'];
		$file= $_FILES['con_manual_file'];



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
		
		}elseif($tipo=="application/octet-stream" || $tipo=="application/pdf" || $tipo =="application/vnd.oasis.opendocument.text" || $tipo == "application/vnd.openxmlformats-officedocument.wordprocessingml.document"){ 

		$src = $carpeta.$nombre;

				include('../../../../utilidad/php/Conexion.php');
				include('../../../../utilidad/php/ObtenerIp.php');		

				$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
					mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
			
				mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Modificar','convenios_manual')",$con);

				$obj = new Convenios();
				$obj->Obtener_Modificar_Multimedia($id,$src);
				$obj->Modificar_Manual_File();

			move_uploaded_file($ruta_provicional,$src);
			
				$reporte .= "<p> Datos registrado exitosamente.</p>";

		}else{

			$reporte .= "<p style='color:red'>Error, el archivo no es un documento.</p>";


		}
			

				echo $reporte;


	
	}elseif(isset($_FILES['con_tutorial_file']) && !empty ($_FILES['con_tutorial_file']) &&
	isset($_POST['idmodificar_con_tutorial_file']) && !empty ($_POST['idmodificar_con_tutorial_file'])){

		$id = $_POST['idmodificar_con_tutorial_file'];
		$file= $_FILES['con_tutorial_file'];


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
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Modificar','convenios_tutorial')",$con);
					
		$obj = new Convenios();
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