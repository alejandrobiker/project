<?php

	include("Gestion_Incidente.php");

	if(isset($_POST['ideliminar_gi_titulo']) && !empty ($_POST['ideliminar_gi_titulo'])){

		$id = $_POST['ideliminar_gi_titulo'];


		include('../../../../utilidad/php/Conexion.php');
		include('../../../../utilidad/php/ObtenerIp.php');		

		$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
			mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

		mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Eliminar','gestion_incidente_articulo_t')",$con);	


			$obj = new Gestion_Incidente();
			$obj->ObtenerE($id);
			$obj->Eliminar_Titulo();

			echo "Titulo Eliminado Correctamente";


	}elseif(isset($_POST['ideliminar_gi_descripcion']) && !empty ($_POST['ideliminar_gi_descripcion'])){

		$id = $_POST['ideliminar_gi_descripcion'];

			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");


			$select= mysql_query("SELECT * FROM gestion_incidente_articulo_d WHERE gestion_incidente_articulo_d.ID_GID = '$id'",$con);

			while ($sesion = mysql_fetch_array($select)){

				mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Eliminar','gestion_incidente_articulo_d')",$con);	

			}

			$obj = new Gestion_Incidente();
			$obj->ObtenerE($id);
			$obj->Eliminar_Descripcion();

			echo "Descripcion eliminada correctamente";

	}elseif(isset($_POST['ideliminarmanu']) && !empty ($_POST['ideliminarmanu'])){

			$id = $_POST['ideliminarmanu'];

			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");


			$select= mysql_query("SELECT * FROM gestion_incidente_manual WHERE gestion_incidente_manual.ID_GIM = '$id'",$con);

			while ($sesion = mysql_fetch_array($select)){

				mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Eliminar','gestion_incidente_manual')",$con);	

			}
				$obj = new Gestion_Incidente();
				$obj->ObtenerE($id);
				$obj->Eliminar_Manual();

				echo "Manual eliminado correctamente";

	}elseif(isset($_POST['ideliminartuto']) && !empty ($_POST['ideliminartuto'])){

			$id = $_POST['ideliminartuto'];

			include('../../../../utilidad/php/Conexion.php');
			include('../../../../utilidad/php/ObtenerIp.php');
			
			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");


			$select= mysql_query("SELECT * FROM gestion_incidente_tutorial WHERE gestion_incidente_tutorial.ID_GITT = '$id'",$con);

			while ($sesion = mysql_fetch_array($select)){

				mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Eliminar','gestion_incidente_tutorial')",$con);	

			}

				$obj = new Gestion_Incidente();
				$obj->ObtenerE($id);
				$obj->Eliminar_Tutorial();

				echo "Tutorial eliminado correctamente";

	}

?>