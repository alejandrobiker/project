<?php

	include ("../../../utilidad/php/Conexion.php");
	session_start();

	$query = "SELECT * FROM bitacora WHERE TABLA LIKE 'certificacion_electronica_criptografica_articulo_d' OR TABLA LIKE 'certificacion_electronica_criptografica_articulo_t' OR TABLA LIKE 'certificacion_electronica_criptografica_manual' OR TABLA LIKE 'certificacion_electronica_criptografica_tutorial' OR TABLA LIKE 'formacion_desarrollo_articulo_t' OR TABLA LIKE 'formacion_desarrollo_articulo_d' OR TABLA LIKE 'formacion_desarrollo_manual' OR TABLA LIKE 'formacion_desarrollo_tutorial' OR TABLA LIKE 'estandarizacion_fiscalizacion_articulo_t' OR TABLA LIKE 'estandarizacion_fiscalizacion_articulo_d' OR TABLA LIKE 'estandarizacion_fiscalizacion_manual' OR TABLA LIKE 'estandarizacion_fiscalizacion_tutorial' OR TABLA LIKE 'soporte_tecnico_articulo_d' OR TABLA LIKE 'soporte_tecnico_articulo_t' OR TABLA LIKE 'soporte_tecnico_manual' OR TABLA LIKE 'soporte_tecnico_tutorial'";
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