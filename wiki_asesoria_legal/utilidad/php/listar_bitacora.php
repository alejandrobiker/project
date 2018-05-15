<?php

	include ("../../../utilidad/php/Conexion.php");
	session_start();

	$query = "SELECT * FROM bitacora WHERE TABLA LIKE 'dictamenes_articulo_d' OR TABLA LIKE 'dictamenes_articulo_t' OR TABLA LIKE 'dictamenes_manual' OR TABLA LIKE 'dictamenes_tutorial' OR TABLA LIKE 'convenios_articulo_t' OR TABLA LIKE 'convenios_articulo_d' OR TABLA LIKE 'convenios_manual' OR TABLA LIKE 'convenios_tutorial' OR TABLA LIKE 'pronunciamiento_articulo_t' OR TABLA LIKE 'pronunciamiento_articulo_d' OR TABLA LIKE 'pronunciamiento_manual' OR TABLA LIKE 'pronunciamiento_tutorial'";
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