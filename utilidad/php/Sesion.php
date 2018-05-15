<?php
ini_set('display_errors', 0); // no muestra los errores
session_start();
include("Conexion.php");

if(isset($_POST['cedula']) && !empty($_POST['cedula']) &&
		isset($_POST['clave']) && !empty($_POST['clave'])){

	$con = mysql_connect($host,$user,$pw)or die("problemas al conectar");
	mysql_select_db($db,$con)or die("Problemas al conectar");

	$sel=mysql_query("SELECT * FROM usuarios_wiki WHERE CEDULA = '$_POST[cedula]'",$con);

	$sesion=mysql_fetch_array($sel);

	if($_POST['clave'] == $sesion['CLAVE'] && $_POST['cedula'] == $sesion['CEDULA']){

		$_SESSION['usercedula'] = $_POST['cedula'];
		$_SESSION['usernombre'] = $sesion['NOMBRES'];
		$_SESSION['userapellido'] = $sesion['APELLIDOS'];
		$_SESSION['userrol'] = $sesion['ROL'];
		$_SESSION['userid'] = $sesion['ID_USUARIO'];

		//header("location: ../../index.php");

		echo '
		<script>
			window.location.replace("index");
		</script>

		<!--<meta http-equiv="refresh" content="0;url=index.php">
	 	<div class="alert alert-success" role="alert" align="center">¡Ingreso Correctamente!</div>
		-->';
	}else{
	 echo '
	 	<div class="alert alert-danger" role="alert" align="center">¡Usuario o Clave incorrecta!</div>
	 ';

	}

}

?>
