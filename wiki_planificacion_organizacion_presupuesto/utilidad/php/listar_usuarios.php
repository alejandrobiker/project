<?php

	include ("../../../utilidad/php/Conexion.php");
	session_start();

	$query = "SELECT * FROM usuarios_wiki WHERE ROL LIKE 'Usuario Organizacion' OR ROL LIKE 'Usuario Planificacion' OR ROL LIKE 'Usuario Presupuesto'";
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