<?php

	include ("../../../utilidad/php/Conexion.php");
	session_start();

	$query = "SELECT * FROM usuarios_wiki WHERE ROL LIKE 'Usuario Gestion de Incidentes' OR ROL LIKE 'Usuario Seguridad Logica' OR ROL LIKE 'Usuario OAM'";
	$resultado = mysqli_query($conexion, $query);

	if(!$resultado){
		die("Error");
	}else{
		while( $data = mysqli_fetch_assoc($resultado)){
			$arreglo["data"][] = $data;			
		}
		echo json_encode($arreglo);	
	}
	//para liberar memoria
	mysqli_free_result($resultado);
	mysqli_close($conexion);

?>