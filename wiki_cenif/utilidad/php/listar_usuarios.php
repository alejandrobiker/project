<?php

	include ("../../../utilidad/php/Conexion.php");
	session_start();

	$query = "SELECT * FROM usuarios_wiki WHERE ROL LIKE 'Usuario Fuentes Abiertas' OR ROL LIKE 'Usuario Equipos Moviles' OR ROL LIKE 'Usuario Dispositivos Almacenamiento' OR ROL LIKE 'Usuario Electronica' OR ROL LIKE 'Usuario Img, Audio y Video'";
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