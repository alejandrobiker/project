<?php

include("Usuarios.php");

	if(isset($_POST['nombres']) && !empty ($_POST['nombres']) &&
		isset($_POST['apellidos']) && !empty ($_POST['apellidos']) &&
		isset($_POST['cedula']) && !empty ($_POST['cedula']) &&
		isset($_POST['clave']) && !empty ($_POST['clave']) &&
		isset($_POST['rclave']) && !empty ($_POST['rclave']) &&
		isset($_POST['rol']) && !empty ($_POST['rol']) &&
		isset($_POST['email']) && !empty ($_POST['email'])) {

		$nombres = $_POST['nombres'];
		$apellidos = $_POST['apellidos'];
		$cedula = $_POST['cedula'];
		$clave = $_POST['clave'];
		$rclave = $_POST['rclave'];
		$rol = $_POST['rol'];
		$email = $_POST['email'];

			include('../Conexion.php');
			include('../ObtenerIp.php');		

			$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
				mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");
		
			mysql_query("INSERT INTO bitacora (UCEDULA, HOST, FECHA, ACCION, TABLA) values ('$_SESSION[usercedula]', '$ip', NOW(), 'Registrar Usuario','usuarios_wiki')",$con);

		if ($clave == $rclave) {				

			$obj = new Usuarios();
			$obj->Usuarios($nombres,$apellidos,$cedula,$clave,$rol,$email);
			$obj->Registrar_Titulo();

			echo "Usuario registrado correctamente.";

			
		}else{
			echo "<p style='color:red'> Las contraseñas no coinciden.</p>";
		}

	}


?>