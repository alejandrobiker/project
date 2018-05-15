<?php
ini_set('display_errors', 0); // no muestra los errores

	
	include('../../../../utilidad/php/Conexion.php');
			

	if(isset($_POST['ideliminar_el_titulo']) && !empty($_POST['ideliminar_el_titulo'])){

		print'<div class="modal fade" id="modificarn">
				<div class="modal-dialog">
					<div class="modal-content">
						';

							$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
							mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

							$regis = mysql_query("SELECT * FROM uaf_electronica_articulo_t WHERE ID_EAT = '$_POST[ideliminar_el_titulo]'",$con);

							if($reg = mysql_fetch_array($regis)){
								
								print'<!--Header de la ventana -->

								<div class="modal-header">
										<a href="index" class="close" type="button" title="Cerrar" arie-hidden="true">x</a>
										<img width="100px" src="../../utilidad/img/eliminar.png"/>  

								</div>

							 	<!--contenido de la ventana-->

								<div class="modal-body">
									<h2>'.$reg['TITULO_EAT'].'</h2>								

									<div class="alert alert-danger"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
									¿Estas seguro que desea eliminar este Título?
									</div>

									<div class="alert alert-danger" role="alert" id="mos_el_titulo" hidden></div>
					
								</div>

								<!-- Footer de la ventana -->

								<div class="modal-footer">	
									
									<form action="javascript:el_eliminar_titulo();" name="frm_eleliminar_titulo">

										<input type="text" name="ideliminar_el_titulo" value="'.$reg['ID_EAT'].'" hidden>
										<input class="btn btn-danger pulse-grow" type="submit" id="eleliminar_titulo" value="Eliminar" data-toggle="tooltip" data-placement="top" title="Eliminar">
										<a class="btn btn-default curl-top-right" href="index" data-toggle="tooltip" data-placement="top" title="Regresar" value="Regresar">Cerrar</a>

									</form>										
								</div> <!-- Fin div Footer -->

					</div> <!-- Fin modal-content -->
				</div> <!-- Fin modal-dialog-->
			</div> <!-- Fin  modal-fade -->
						';

		}//Fin si regis
	}elseif(isset($_POST['ideliminar_el_descripcion']) && !empty($_POST['ideliminar_el_descripcion'])){


		print'<div class="modal fade" id="modificarn">
				<div class="modal-dialog">
					<div class="modal-content">
						';

							$con = mysql_connect($host,$user,$pw)or die("Problemas al Conectar");
							mysql_select_db($db,$con)or die("Problemas al Conectar con la Base de Datos");

							$regis = mysql_query("SELECT * FROM uaf_electronica_articulo_d WHERE ID_EAD = '$_POST[ideliminar_el_descripcion]'",$con);

							if($reg = mysql_fetch_array($regis)){
								
								print'<!--Header de la ventana -->

								<div class="modal-header">
										<a href="index" class="close" type="button" title="Cerrar" arie-hidden="true">x</a>
										<img width="100px" src="../../utilidad/img/eliminar.png"/>
								</div>

							 	<!--contenido de la ventana-->

								<div class="modal-body">
									<h2>'.$reg['DESCRIPCION_EAD'].'</h2>								

									<div class="alert alert-danger"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
									¿Estas seguro que desea eliminar esta descripción?
									</div>

									<div class="alert alert-danger" role="alert" id="mos_el_descripcion" hidden></div>
					
								</div>

								<!-- Footer de la ventana -->

								<div class="modal-footer">	
									
									<form action="javascript:el_eliminar_descripcion();" name="frm_eleliminar_descripcion">

										<input type="text" name="ideliminar_el_descripcion" value="'.$reg['ID_EAD'].'" hidden>
										<input class="btn btn-danger pulse-grow" type="submit" id="eleliminar_descripcion" value="Eliminar" data-toggle="tooltip" data-placement="top" title="Eliminar">
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

							$regis = mysql_query("SELECT * FROM uaf_electronica_manual WHERE ID_EM = '$_POST[ideliminarmanu]'",$con);

							if($reg = mysql_fetch_array($regis)){
								
								print'<!--Header de la ventana -->

								<div class="modal-header">
										<a href="manual" class="close" type="button" title="Cerrar" arie-hidden="true">x</a>
										<img width="100px" src="../../utilidad/img/eliminar.png"/> 
								</div>

							 	<!--contenido de la ventana-->

								<div class="modal-body">
									<h2>'.$reg['TITULO_EM'].'</h2>								

									<div class="alert alert-danger"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
									¿Estas seguro que desea eliminar este manual?
									</div>

									<div class="alert alert-danger" role="alert" id="mos_el_manual" hidden ></div>
					
								</div>

								<!-- Footer de la ventana -->

								<div class="modal-footer">	
									
									<form action="javascript:el_eliminar_manual();" name="frm_oameliminar_manual" method="post" id="el_eliminar_manual">

										<input type="text" name="ideliminarmanu" value="'.$reg['ID_EM'].'" hidden>

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

							$regis = mysql_query("SELECT * FROM uaf_electronica_tutorial WHERE ID_ETT = '$_POST[ideliminartuto]'",$con);

							if($reg = mysql_fetch_array($regis)){
								
								print'<!--Header de la ventana -->

								<div class="modal-header">
										<a href="tutoriales" class="close" type="button" title="Cerrar" arie-hidden="true">x</a>
										<img width="100px" src="../../utilidad/img/eliminar.png"/> 
								</div>

							 	<!--contenido de la ventana-->

								<div class="modal-body">
									<h2>'.$reg['TITULO_ETT'].'</h2>								

									<div class="alert alert-danger"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
									¿Estas seguro que desea eliminar este tutorial?
									</div>

									<div class="alert alert-danger" role="alert" id="mos_el_tutorial" hidden ></div>
					
								</div>

								<!-- Footer de la ventana -->

								<div class="modal-footer">	
									
									<form action="javascript:el_eliminar_tutorial();" name="frm_eleliminar_tutorial" id="el_eliminar_tutorial">

										<input type="text" name="ideliminartuto" value="'.$reg['ID_ETT'].'" hidden>

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