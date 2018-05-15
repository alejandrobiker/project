<?php

	include ("../../../utilidad/php/Conexion.php");
	session_start();

	$query = "SELECT * FROM bitacora WHERE TABLA LIKE 'oficina_organizacion_articulo_t' OR TABLA LIKE 'oficina_organizacion_articulo_d' OR TABLA LIKE 'oficina_organizacion_manual' OR TABLA LIKE 'oficina_organizacion_tutorial' OR TABLA LIKE 'oficina_planificacion_articulo_d' OR TABLA LIKE 'oficina_planificacion_articulo_t' OR TABLA LIKE 'oficina_planificacion_manual' OR TABLA LIKE 'oficina_planificacion_tutorial' OR TABLA LIKE 'oficina_presupuesto_articulo_d' OR TABLA LIKE 'oficina_presupuesto_articulo_t' OR TABLA LIKE 'oficina_presupuesto_manual' OR TABLA LIKE 'oficina_presupuesto_tutorial'";
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