<?php

	$host = "localhost";
	$user = "root";
	$pw = "athena";
	$db = "suscertewiki";

	$conexion = mysqli_connect($host, $user, $pw, $db);
	if (!$conexion){
		die('Error de Conexión: ' . mysqli_connect_errno());
	}

?>
