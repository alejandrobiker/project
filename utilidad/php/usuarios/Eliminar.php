<?php
	
	include("Usuarios.php");
	session_start();

	if(isset($_POST['ideliminar_usuario']) && !empty ($_POST['ideliminar_usuario']) &&
		isset($_POST['rol_usu']) && !empty ($_POST['rol_usu']) && 
		isset($_POST['rol_ced']) && !empty ($_POST['rol_ced'])){

		$id = $_POST['ideliminar_usuario'];
		$rol = $_POST['rol_usu'];
		$cedula = $_POST['rol_ced'];

			include('../Conexion.php');
			include('../ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Eliminar Usuario','usuarios_wiki')",$con);
			

			if ($_SESSION['usercedula'] == $cedula){	
				
				echo 'No puede eliminar su mismo usuario.';
				
			}elseif($rol == "Administrador Principal"){

				echo 'No puede eliminar porque no tiene permisos.';

			}else{			
		
				$obj = new Usuarios();
				$obj->ObtenerE($id);
				$obj->Eliminar_Descripcion();

				echo "Usuario eliminado correctamente";
		}
	}
?>

