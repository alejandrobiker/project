<?php

	include ("../../../utilidad/php/Conexion.php");
	session_start();

	$query = "SELECT * FROM bitacora WHERE TABLA LIKE 'hcm_articulo_t' OR TABLA LIKE 'hcm_articulo_d' OR TABLA LIKE 'hcm_manual' OR TABLA LIKE 'hcm_tutorial' OR TABLA LIKE 'nomina_articulo_d' OR TABLA LIKE 'nomina_articulo_t' OR TABLA LIKE 'nomina_manual' OR TABLA LIKE 'nomina_tutorial'";
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