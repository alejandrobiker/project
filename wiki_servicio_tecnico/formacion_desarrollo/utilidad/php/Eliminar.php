<?php

	include("Formacion_Desarrollo.php");

	if(isset($_POST['ideliminar_fd_titulo']) && !empty ($_POST['ideliminar_fd_titulo'])){

		$id = $_POST['ideliminar_fd_titulo'];



			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Eliminar','formacion_desarrollo_articulo_t')",$con);


			$obj = new Formacion_Desarrollo();
			$obj->ObtenerE($id);
			$obj->Eliminar_Titulo();

			echo "Titulo Eliminado Correctamente";


	}elseif(isset($_POST['ideliminar_fd_descripcion']) && !empty ($_POST['ideliminar_fd_descripcion'])){

		$id = $_POST['ideliminar_fd_descripcion'];

			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Eliminar','formacion_desarrollo_articulo_d')",$con);

			$obj = new Formacion_Desarrollo();
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
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Eliminar','formacion_desarrollo_manual')",$con);

				$obj = new Formacion_Desarrollo();
				$obj->ObtenerE($id);
				$obj->Eliminar_Manual();

				echo "Manual eliminado correctamente";

	}elseif(isset($_POST['ideliminartuto']) && !empty ($_POST['ideliminartuto'])){

			$id = $_POST['ideliminartuto'];
					
				include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Eliminar','formacion_desarrollo_tutorial')",$con);

				$obj = new Formacion_Desarrollo();
				$obj->ObtenerE($id);
				$obj->Eliminar_Tutorial();

				echo "Tutorial eliminado correctamente";

	}

?>