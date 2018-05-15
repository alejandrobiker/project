<?php

	include("Certificacion_Electronica_Criptografica.php");

	if(isset($_POST['ideliminar_cec_titulo']) && !empty ($_POST['ideliminar_cec_titulo'])){

		$id = $_POST['ideliminar_cec_titulo'];


			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Eliminar','certificacion_electronica_criptografica_articulo_t')",$con);
			

			$obj = new Certificacion_Electronica_Criptografica();
			$obj->ObtenerE($id);
			$obj->Eliminar_Titulo();

			echo "Titulo Eliminado Correctamente";


	}elseif(isset($_POST['ideliminar_cec_descripcion']) && !empty ($_POST['ideliminar_cec_descripcion'])){

		$id = $_POST['ideliminar_cec_descripcion'];

			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Eliminar','certificacion_electronica_criptografica_articulo_d')",$con);

			$obj = new Certificacion_Electronica_Criptografica();
			$obj->ObtenerE($id);
			$obj->Eliminar_Descripcion();

			echo "Descripcion eliminada correctamente";

	}

	elseif(isset($_POST['ideliminarmanu']) && !empty ($_POST['ideliminarmanu'])){

			$id = $_POST['ideliminarmanu'];
				
				include('../../../../utilidad/php/Conexion.php');
				include('../../../../utilidad/php/ObtenerIp.php');		

				$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
					mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
			
				mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Eliminar','certificacion_electronica_criptografica_manual')",$con);

				$obj = new Certificacion_Electronica_Criptografica();
				$obj->ObtenerE($id);
				$obj->Eliminar_Manual();

				echo "Manual eliminado correctamente";

	}elseif(isset($_POST['ideliminartuto']) && !empty ($_POST['ideliminartuto'])){

			$id = $_POST['ideliminartuto'];
		
				include('../../../../utilidad/php/Conexion.php');
				include('../../../../utilidad/php/ObtenerIp.php');		

				$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
					mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
			
				mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Eliminar','certificacion_electronica_criptografica_tutorial')",$con);

				$obj = new Certificacion_Electronica_Criptografica();
				$obj->ObtenerE($id);
				$obj->Eliminar_Tutorial();

				echo "Tutorial eliminado correctamente";

	}



?>