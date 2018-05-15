<?php

	include ("../../../utilidad/php/Conexion.php");
	session_start();

	$query = "SELECT * FROM bitacora WHERE TABLA LIKE 'uaf_fuentes_abiertas_articulo_t' OR TABLA LIKE 'uaf_fuentes_abiertas_articulo_d' OR TABLA LIKE 'uaf_fuentes_abiertas_manual' OR TABLA LIKE 'uaf_fuentes_abiertas_tutorial' OR TABLA LIKE 'uaf_equipos_moviles_articulo_t' OR TABLA LIKE 'uaf_equipos_moviles_articulo_d' OR TABLA LIKE 'uaf_equipos_moviles_manual' OR TABLA LIKE 'uaf_equipos_moviles_tutorial' OR TABLA LIKE 'uaf_dispositivo_almacenamiento_articulo_t' OR TABLA LIKE 'uaf_dispositivo_almacenamiento_articulo_d' OR TABLA LIKE 'uaf_dispositivo_almacenamiento_manual' OR TABLA LIKE 'uaf_dispositivo_almacenamiento_tutorial' OR TABLA LIKE 'uaf_electronica_articulo_t' OR TABLA LIKE 'uaf_electronica_articulo_d' OR TABLA LIKE 'uaf_electronica_manual' OR TABLA LIKE 'uaf_electronica_tutorial' OR TABLA LIKE 'uaf_imagen_video_audio_articulo_t' OR TABLA LIKE 'uaf_imagen_video_audio_articulo_d' OR TABLA LIKE 'uaf_imagen_video_audio_manual' OR TABLA LIKE 'uaf_imagen_video_audio_tutorial'";
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