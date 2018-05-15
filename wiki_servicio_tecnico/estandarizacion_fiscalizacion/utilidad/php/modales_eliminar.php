<?php
ini_set('display_errors', 0); // no muestra los errores

	
	include('../../../../utilidad/php/Conexion.php');
			

	if(isset($_POST['ideliminar_ef_titulo']) && !empty($_POST['ideliminar_ef_titulo'])){

		print'<div class="modal fade" id="modificarn">
				<div class="modal-dialog">
					<div class="modal-content">
						';

							$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
							mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

							$regis = mysql_query("SELECT * FROM estandarizacion_fiscalizacion_articulo_t WHERE ID_EFAT = '$_POST[ideliminar_ef_titulo]'",$con);

							if($reg = mysql_fetch_array($regis)){
								
								print'<!--Header de la ventana -->

								<div class="modal-header">
										<a href="index" class="close" type="button" title="Cerrar" arie-hidden="true">x</a>
										<img width="100px" src="../../utilidad/img/eliminar.png"/>  
								</div>

							 	<!--contenido de la ventana-->

								<div class="modal-body">
									<h2>'.$reg['TITULO_EFAT'].'</h2>								

									<div class="alert alert-danger"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
									¿Estas seguro que desea eliminar este Título?
									</div>

									<div class="alert alert-danger" role="alert" id="mos_ef_titulo" hidden></div>
					
								</div>

								<!-- Footer de la ventana -->

								<div class="modal-footer">	
									
									<form action="javascript:ef_eliminar_titulo();" name="frm_efeliminar_titulo">

										<input type="text" name="ideliminar_ef_titulo" value="'.$reg['ID_EFAT'].'" hidden>
										<input class="btn btn-danger pulse-grow" type="submit" id="efeliminar_titulo" value="Eliminar" data-toggle="tooltip" data-placement="top" title="Eliminar">
										<a class="btn btn-default curl-top-right" href="index" data-toggle="tooltip" data-placement="top" title="Regresar" value="Regresar">Cerrar</a>

									</form>										
								</div> <!-- Fin div Footer -->

					</div> <!-- Fin modal-content -->
				</div> <!-- Fin modal-dialog-->
			</div> <!-- Fin  modal-fade -->
						';

		}//Fin si regis
	}elseif(isset($_POST['ideliminar_ef_descripcion']) && !empty($_POST['ideliminar_ef_descripcion'])){


		print'<div class="modal fade" id="modificarn">
				<div class="modal-dialog">
					<div class="modal-content">
						';

							$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
							mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

							$regis = mysql_query("SELECT * FROM estandarizacion_fiscalizacion_articulo_d WHERE ID_EFAD = '$_POST[ideliminar_ef_descripcion]'",$con);

							if($reg = mysql_fetch_array($regis)){
								
								print'<!--Header de la ventana -->

								<div class="modal-header">
										<a href="index" class="close" type="button" title="Cerrar" arie-hidden="true">x</a>
										<img width="100px" src="../../utilidad/img/eliminar.png"/>  
								</div>

							 	<!--contenido de la ventana-->

								<div class="modal-body">
									<h2>'.$reg['DESCRIPCION_EFAD'].'</h2>								

									<div class="alert alert-danger"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
									¿Estas seguro que desea eliminar esta descripción?
									</div>

									<div class="alert alert-danger" role="alert" id="mos_ef_descripcion" hidden></div>
					
								</div>

								<!-- Footer de la ventana -->

								<div class="modal-footer">	
									
									<form action="javascript:ef_eliminar_descripcion();" name="frm_efeliminar_descripcion">

										<input type="text" name="ideliminar_ef_descripcion" value="'.$reg['ID_EFAD'].'" hidden>
										<input class="btn btn-danger pulse-grow" type="submit" id="efeliminar_descripcion" value="Eliminar" data-toggle="tooltip" data-placement="top" title="Eliminar">
										<a class="btn btn-default curl-top-right" href="index" data-toggle="tooltip" data-placement="top" title="Regresar" value="Regresar">Cerrar</a>

									</form>										
								</div> <!-- Fin div Footer -->

					</div> <!-- Fin modal-content -->
				</div> <!-- Fin modal-dialog-->
			</div> <!-- Fin  modal-fade -->
						';

		}//Fin si regis

	}

elseif(isset($_POST['ideliminarmanu']) && !empty($_POST['ideliminarmanu'])){


		print'<div class="modal fade" id="modificarn">
				<div class="modal-dialog">
					<div class="modal-content">
						';

							$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
							mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

							$regis = mysql_query("SELECT * FROM estandarizacion_fiscalizacion_manual WHERE ID_EFM = '$_POST[ideliminarmanu]'",$con);

							if($reg = mysql_fetch_array($regis)){
								
								print'<!--Header de la ventana -->

								<div class="modal-header">
										<a href="manual" class="close" type="button" title="Cerrar" arie-hidden="true">x</a>
										<img width="100px" src="../../utilidad/img/eliminar.png"/> 
								</div>

							 	<!--contenido de la ventana-->

								<div class="modal-body">
									<h2>'.$reg['TITULO_EFM'].'</h2>								

									<div class="alert alert-danger"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
									¿Estas seguro que desea eliminar este manual?
									</div>

									<div class="alert alert-danger" role="alert" id="mos_ef_manual" hidden ></div>
					
								</div>

								<!-- Footer de la ventana -->

								<div class="modal-footer">	
									
									<form action="javascript:ef_eliminar_manual();" name="frm_oameliminar_manual" method="post" id="ef_eliminar_manual">

										<input type="text" name="ideliminarmanu" value="'.$reg['ID_EFM'].'" hidden>

										<input class="btn btn-danger pulse-grow" type="submit" id="oameliminar_manual" value="Eliminar" data-toggle="tooltip" data-placement="top" title="Eliminar">

										<a class="btn btn-default curl-top-right" href="manual" data-toggle="tooltip" data-placement="top" title="Regresar" value="Regresar">Cerrar</a>

									</form>										
								</div> <!-- Fin div Footer -->

					</div> <!-- Fin modal-content -->
				</div> <!-- Fin modal-dialog-->
			</div> <!-- Fin  modal-fade -->
						';

		}//Fin si regis

	}elseif(isset($_POST['ideliminartuto']) && !empty($_POST['ideliminartuto'])){


		print'<div class="modal fade" id="modificarn">
				<div class="modal-dialog">
					<div class="modal-content">
						';

							$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
							mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

							$regis = mysql_query("SELECT * FROM estandarizacion_fiscalizacion_tutorial WHERE ID_EFTT = '$_POST[ideliminartuto]'",$con);

							if($reg = mysql_fetch_array($regis)){
								
								print'<!--Header de la ventana -->

								<div class="modal-header">
										<a href="tutoriales" class="close" type="button" title="Cerrar" arie-hidden="true">x</a>
										<img width="100px" src="../../utilidad/img/eliminar.png"/> 
								</div>

							 	<!--contenido de la ventana-->

								<div class="modal-body">
									<h2>'.$reg['TITULO_EFTT'].'</h2>								

									<div class="alert alert-danger"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
									¿Estas seguro que desea eliminar este tutorial?
									</div>

									<div class="alert alert-danger" role="alert" id="mos_ef_tutorial" hidden ></div>
					
								</div>

								<!-- Footer de la ventana -->

								<div class="modal-footer">	
									
									<form action="javascript:ef_eliminar_tutorial();" name="frm_faeliminar_tutorial" id="ef_eliminar_tutorial">

										<input type="text" name="ideliminartuto" value="'.$reg['ID_EFTT'].'" hidden>

										<input class="btn btn-danger pulse-grow" type="submit" id="faeliminar_tutorial" value="Eliminar" data-toggle="tooltip" data-placement="top" title="Eliminar">

										<a class="btn btn-default curl-top-right" href="tutoriales" data-toggle="tooltip" data-placement="top" title="Regresar" value="Regresar">Cerrar</a>

									</form>										
								</div> <!-- Fin div Footer -->

					</div> <!-- Fin modal-content -->
				</div> <!-- Fin modal-dialog-->
			</div> <!-- Fin  modal-fade -->
						';

		}//Fin si regis

	}

?>