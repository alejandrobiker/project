<?php

include("Planificacion.php");


	if(isset($_POST['pl_titulo']) && !empty($_POST['pl_titulo']) &&
		isset($_POST['pl_tipo']) && !empty($_POST['pl_tipo']) &&
		isset($_POST['pl_descripcion']) && !empty($_POST['pl_descripcion'])){



			$titulo = $_POST['pl_titulo'];
			$tipo = $_POST['pl_tipo'];
			$descripcion = $_POST['pl_descripcion'];

			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Registrar','oficina_planificacion_articulo_t')",$con);


		$obj = new Planificacion();
		$obj->Planificacion($titulo,$tipo);
		$obj->Registrar_Titulo();				

		$rs = mysql_query("SELECT MAX(ID_OPAT) AS id FROM oficina_planificacion_articulo_t");
				if ($row = mysql_fetch_row($rs)) {
					$id = trim($row[0]);

					$obj = new Planificacion();
					$obj->ObtenerM($id,$descripcion);
					$obj->Registrar_Descripcion();

					echo " Datos registrados correctamente";

				}
				




	}	elseif(isset($_POST['id_pl']) && !empty ($_POST['id_pl']) &&
		isset($_POST['pl_contenido']) && !empty ($_POST['pl_contenido'])){

		$id = $_POST['id_pl'];
		$descripcion = $_POST['pl_contenido'];
		
			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Registrar','oficina_planificacion_articulo_d')",$con);

			$obj = new Planificacion();
			$obj->ObtenerM($id,$descripcion);
			$obj->Registrar_Descripcion();

			echo " Contenido registrado correctamente";

						

	}elseif (isset($_FILES['file_pl_manual']) && !empty($_FILES['file_pl_manual']) &&
		isset($_POST['pl_manual_tipo']) && !empty($_POST['pl_manual_tipo']) &&
		isset($_POST['pl_manual_titulo']) && !empty($_POST['pl_manual_titulo'])) {
		# code...

		$valor = $_POST['pl_manual_tipo']; 	
		$titulo = $_POST['pl_manual_titulo']; 	
		$file = $_FILES["file_pl_manual"];


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
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Registrar','oficina_planificacion_manual')",$con);
			
		$obj = new Planificacion();
			$obj->Obtener_Registrar_Multimedia($titulo,$valor,$src);
			$obj->Registrar_Manual();

			move_uploaded_file($ruta_provicional,$src);
			
				$reporte .= "<p> Datos registrado exitosamente.</p>";

		}else{

			$reporte .= "<p style='color:red'>Error, el archivo no es un documento.</p>";


		}
			

				echo $reporte;
		



			//move_uploaded_file($ruta_provicional,$src);
			
	}elseif(isset($_FILES['file_pl_tutorial']) && !empty($_FILES['file_pl_tutorial']) &&
		isset($_POST['pl_tutorial_tipo']) && !empty($_POST['pl_tutorial_tipo'])&&
		isset($_POST['pl_tutorial_titulo']) && !empty($_POST['pl_tutorial_titulo'])){


		$valor = $_POST['pl_tutorial_tipo']; 	
		$titulo = $_POST['pl_tutorial_titulo']; 	
		$file = $_FILES["file_pl_tutorial"];

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
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Registrar','oficina_planificacion_tutorial')",$con);
				
	
			$obj = new Planificacion();
			$obj->Obtener_Registrar_Multimedia($titulo,$valor,$nombre);
			$obj->Registrar_Tutorial();



					move_uploaded_file($ruta_provicional,$src);

					$reporte .= "<p> Datos registrado exitosamente. </p>";



				}else{

				
					$reporte .= "<p style='color:red'>Error, el archivo no es un video.</p>";


				}
	
				echo $reporte;




	}else{

		echo "No se encontro ninguna Funcion";

	}



?>