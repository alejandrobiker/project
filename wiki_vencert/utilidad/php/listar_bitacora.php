<?php

	include ("../../../utilidad/php/Conexion.php");
	session_start();

	$query = "SELECT * FROM bitacora WHERE TABLA LIKE 'gestion_incidente_articulo_t' OR TABLA LIKE 'gestion_incidente_articulo_d' OR TABLA LIKE 'gestion_incidente_manual' OR TABLA LIKE 'gestion_incidente_tutorial' OR TABLA LIKE 'seguridad_logica_articulo_d' OR TABLA LIKE 'seguridad_logica_articulo_t' OR TABLA LIKE 'seguridad_logica_manual' OR TABLA LIKE 'seguridad_logica_tutorial' OR TABLA LIKE 'oam_articulo_d' OR TABLA LIKE 'oam_articulo_t' OR TABLA LIKE 'oam_manual' OR TABLA LIKE 'oam_tutorial'";
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